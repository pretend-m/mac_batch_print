tell application "System Events"
    activate
    set fileList to choose file with multiple selections allowed of type {"PDF"}
    set filePaths to {}
    repeat with aFile in fileList
        set filePath to POSIX path of aFile
        set end of filePaths to filePath
    end repeat
    set AppleScript's text item delimiters to linefeed
    set filePathsString to filePaths as text
    return filePathsString
end tell