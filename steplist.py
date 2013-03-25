import sublime
import sublime_plugin
try:
  from StepList.core.steps import Step
except:
  from core.steps import Step


class BaseCommand(sublime_plugin.TextCommand):
  def get_config(self):
    settings = sublime.load_settings("StepList.sublime-settings")
    return {
      'browse_step_definitions': settings.get('browse_step_definitions'),
      "root_directory":          self.root_directory()
    }

  def root_directory(self):
    try:
      return sublime.active_window().project_data()['folders'][0]['path']
    except:
      return sublime.active_window().folders()[0]


class InsertStepDefinition(BaseCommand):
  def on_done(self, index):
    if index < 0:
      return
    text = self.steps[index][0]
    snippet = self.step.snippet(text)
    self.view.run_command("insert_snippet", {"contents": snippet})

  def run(self, edit):
    self.config = self.get_config()
    self.step   = Step(self.config)
    self.steps  = self.step.definitions()
    step_list   = [s[0] for s in self.steps]
    self.view.window().show_quick_panel(
      step_list, 
      self.on_done, 
      sublime.MONOSPACE_FONT,
      on_highlight = lambda ndx: self.highlight_entry(ndx))

  def highlight_entry(self, ndx):
    if not self.config['browse_step_definitions']:
      return
    step  = self.steps[ndx]
    file  = step[1]
    line  = step[2]
    fname = "%s:%s:0" % (file, line)
    sublime.active_window().open_file(
      fname,
      sublime.TRANSIENT | sublime.ENCODED_POSITION)


class VisitStepDefinition(InsertStepDefinition):
  def on_done(self, index):
    if index < 0:
      return
    step  = self.steps[index]
    file  = step[1]
    line  = step[2]
    fname = "%s:%s:0" % (file, line)
    self.view.window().run_command("open_step_definition", {'file_and_line':fname})


class OpenStepDefinition(sublime_plugin.TextCommand):
  def run(self, edit, **kwargs):
    fname = kwargs['file_and_line']
    print("opening step definition: %s" % fname)
    view  = sublime.active_window().open_file(fname, sublime.ENCODED_POSITION)
