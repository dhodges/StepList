import sublime
import sublime_plugin
try:
  from StepList.core.steps import Step
except:
  from core.steps import Step

class BaseCommand(sublime_plugin.TextCommand):
  def get_config(self):
    settings = sublime.load_settings("Steplist.sublime-settings")
    # It's a pain having to copy these settings manually,
    # but sublime.settings has no way to iterate over its' keys.
    return {
      "root_directory": self.root_directory()
    }

  def root_directory(self):
    try:
      return sublime.active_window().project_data()['folders'][0]['path']
    except:
      return sublime.active_window().folders()[0]

class ListStepDefinitions(BaseCommand):
  def on_done(self, index):
    if index < 0:
      return
    text = self.steps[index]
    snippet = self.step.snippet(text)
    self.view.run_command("insert_snippet", {"contents": snippet})

  def run(self, edit):
    self.step  = Step(self.get_config())
    self.steps = self.step.definitions()
    self.view.window().show_quick_panel(self.steps, self.on_done, sublime.MONOSPACE_FONT)
