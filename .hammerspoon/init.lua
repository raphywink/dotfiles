local hyper = {"ctrl", "alt", "cmd"}

hs.loadSpoon("MiroWindowsManager")

hs.window.animationDuration = 0.3
spoon.MiroWindowsManager:bindHotkeys({
  up = {hyper, "up"},
  right = {hyper, "right"},
  down = {hyper, "down"},
  left = {hyper, "left"},
  fullscreen = {hyper, "f"}
})

-- -- set up your windowfilter
switcher = hs.window.switcher.new() -- default windowfilter: only visible windows, all Spaces
switcher.ui.highlightColor = {0.4,0.4,0.5,0.8}
switcher.ui.thumbnailSize = 112
switcher.ui.selectedThumbnailSize = 284
switcher.ui.backgroundColor = {0.3, 0.3, 0.3, 0.5}
-- switcher.ui.fontName = 'System'
switcher.ui.textSize = 8
switcher.ui.showSelectedTitle = false

-- bind to hotkeys; WARNING: at least one modifier key is required!
hs.hotkey.bind("alt","tab",function()switcher:next()end)
hs.hotkey.bind("alt-shift","tab",function()switcher:previous()end)