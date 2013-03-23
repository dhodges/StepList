
require 'ruby_gntp'

guard :shell, :all_on_start => true do
  watch(/^core\/.*\.py$/) do
    puts `python core/test.py`
    if $?.exitstatus != 0
      `growlnotify -m 'tests failed' --image ./core/fixtures/thumbsdown.png`
    end
  end
end

`growlnotify -m "Guard is awake"`