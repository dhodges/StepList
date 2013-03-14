import sublime
import sublime_plugin
from Stepper.core.stepper import Stepper


class BaseCommand(sublime_plugin.TextCommand):
  def get_config(self):
    settings = sublime.load_settings("Stepper.sublime-settings")
    # It's a pain having to copy these settings manually,
    # but sublime.settings has no way to iterate over its' keys.
    config = {
      "erase_setting":  self.erase_setting,
      "set_setting":    self.set_setting,
      "error_message":  sublime.error_message,
      "set_timeout":    sublime.set_timeout,
    }
    print("Stepper config:")
    print(config)
    return config

  def erase_setting(self, setting):
    settings = sublime.load_settings("Stepper.sublime-settings")
    settings.erase(setting)
    sublime.save_settings("Stepper.sublime-settings")

  def set_setting(self, name, value):
    settings = sublime.load_settings("Stepper.sublime-settings")
    settings.set(name, value)
    sublime.save_settings("Stepper.sublime-settings")

class ListStepDefinitions(BaseCommand):
  def on_done(self, index):
    if index < 0:
      return
    text = self.steps[index]
    snippet = self.stepper.snippet(text)
    self.view.run_command("insert_snippet", {"contents": snippet})

  def run(self, edit):
    self.stepper = Stepper(self.get_config())
    self.steps   = self.stepper.step_definitions()
    self.view.window().show_quick_panel(self.steps, self.on_done, sublime.MONOSPACE_FONT)
