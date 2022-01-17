local cutsceneFinished = false
local dialogueFinished = false

function onStartCountdown()
	if (not cutsceneFinished and isStoryMode and not seenCutscene) then
		startVideo('speedrun');
		cutsceneFinished = true;
		return Function_Stop;
	else
		if (not dialogueFinished and isStoryMode and not seenCutscene) then
			setProperty('inCutscene', true);
			runTimer('startDialogue', 0.8);
			dialogueFinished = true;
			return Function_Stop;
		end
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'breakfast');
	end
end

--function onCreate()
--	setProperty('defaultCamZoom', 0.6);
--end

--function onUpdate(elapsed)
	--characterPlayAnim('dad', 'hey', true);
--	setCharacterY('dad', math.sin(getSongPosition() * 0.01) * 25 + 100);
--end

function onBeatHit()
	if (getProperty(curBeat) == 36) then
--		doTweenZoom('zoomIn', 'camGame', 1.2, crochet, circInOut);
		setProperty('defaultCamZoom', 0.8);
	else
		if (getProperty(curBeat) == 100) then
			setProperty('defaultCamZoom', 1.2);
		else
			if (getProperty(curBeat) == 135) then
				setProperty('defaultCamZoom', 0.8);
			end
		end
	end
end

function onDestroy()
	close(true);
end