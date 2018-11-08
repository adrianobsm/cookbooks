# Toggle Hidden

Open `Applications > Automator` and choose "Service". Select "Utilities" and choose "Run AppleScript". Select "no input" in "Service receives" and "Finder" on "in". Use the script bellow:

```
on run {input, parameters}
	set newHiddenVisiblesState to "YES"

	try
		set oldHiddenVisiblesState to do shell script "defaults read com.apple.finder AppleShowAllFiles"
		if oldHiddenVisiblesState is in {"1", "YES"} then
			set newHiddenVisiblesState to "NO"
		end if
	end try
	do shell script "defaults write com.apple.finder AppleShowAllFiles " & newHiddenVisiblesState

	tell application "Finder"
		set theWindows to every Finder window
		repeat with i from 1 to number of items in theWindows
			set this_item to item i of theWindows
			set theView to current view of this_item
			if theView is list view then
				set current view of this_item to icon view
			else
				set current view of this_item to list view

			end if
			set current view of this_item to theView
		end repeat
	end tell

	return input
end run
```

Click on `File > Save` and type "Toggle Hidden". In Finder select `Finder > Services > ToggleHidden`.
