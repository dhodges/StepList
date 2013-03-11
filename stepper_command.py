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
  def run(self, edit):
    Stepper(self.get_config()).list_step_definitions()


