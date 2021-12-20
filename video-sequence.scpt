-- Version: QT 10 for OSX 10.7
on run
  set unixpath to "/Users/omeedtehrani/StartupSequence.mp4"
  set macfile to (POSIX file unixpath)
  delay 1
  tell application "QuickTime Player"
    activate
    delay 1
    open file macfile
    set looping of document 1 to false
    set presenting of document 1 to true
    set the bounds of the first window to {140, 100, 1280, 720}
    try
      set the bounds of the second window to {150, 0, 1130, 775}
    end try
    play document 1
    repeat until (current time of document 1 = duration of document 1)
    end repeat
    delay 2
    close document 1
  end tell
end run