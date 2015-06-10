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
						tell application "Display Menu"
							select resolution "2560x1600" on display "Color LCD" #15-inch mbp users: change to 2880x1800
						end tell
						if ismax is equal to "no" then
							click button 2 of window 1 of process "Hearthstone"
							set ismax to "yes"
						end if
					else
						
						tell application "Display Menu"
							select resolution "1280x800" on display "Color LCD" #15-inch mbp users: change to 1440x900
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
			tell application "Display Menu"
				select resolution "1280x800" on display "Color LCD" #15-inch mbp users: change to 1440x900
			end tell
			
			delay 10
			
			
		end tell
	end repeat
end tell
