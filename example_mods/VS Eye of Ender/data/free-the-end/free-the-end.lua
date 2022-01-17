function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'breakfast');
	end
end

function onBeatHit()
	if (getProperty(curBeat) == 48) then
		--setProperty('defaultCamZoom', 1.2);
		doTweenZoom('preDropZoom', 'camGame', 1.2, 4.8, 'quadInOut');
	else
		if (getProperty(curBeat) == 64) then
			setProperty('defaultCamZoom', 0.8);
		else
			if (getProperty(curBeat) == 128) then
				setProperty('defaultCamZoom', 1.0);
			else
				if (getProperty(curBeat) == 192) then
					setProperty('defaultCamZoom', 1.2);
				else
					if (getProperty(curBeat) == 228) then
						setProperty('defaultCamZoom', 0.8);
					end
				end
			end
		end
	end
end