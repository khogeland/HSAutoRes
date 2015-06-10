set ismax to "no"
tell application "System Events"
	repeat
		tell application "System Events"
			set proclist to name of every process
			if "Hearthstone" is in proclist then
				set hsrunning to "yes"
			else
				set hsrunning to "no"
			end if
			if hsrunning is equal to "yes" then
				repeat
					set window_name to name of first application process whose frontmost is true
					if window_name is equal to "Hearthstone" then
						do shell script "/usr/local/bin/screenresolution set 2560x1600x32@0" #15-inch mbp users: change to 2880x1800
						if ismax is equal to "no" then
							click button 2 of window 1 of process "Hearthstone"
							set ismax to "yes"
						end if
					else
						
						tell application "System Preferences"
							activate
							set current pane to pane "com.apple.preference.displays"
						end tell
						
						
						tell application "System Events"
							click radio button "Display" of tab group 1 of window 1 of process "System Preferences"
							click radio button 1 of radio group 1 of tab group 1 of window 1 of process "System Preferences"
						end tell
						
						
						tell application "System Preferences"
							quit
						end tell
						
						set ismax to "no"
						
						set proclist to name of every process
						if "Hearthstone" is in proclist then
							set hsrunning to "yes"
						else
							set hsrunning to "no"
						end if
						if hsrunning is equal to "no" then
							exit repeat
						end if
					end if
					
					delay 1
					
				end repeat
			end if
			tell application "System Preferences"
				activate
				set current pane to pane "com.apple.preference.displays"
			end tell
			
			
			tell application "System Events"
				click radio button "Display" of tab group 1 of window 1 of process "System Preferences"
				click radio button 1 of radio group 1 of tab group 1 of window 1 of process "System Preferences"
			end tell
			
			
			tell application "System Preferences"
				quit
			end tell
			
			delay 10
			
			
		end tell
	end repeat
end tell
