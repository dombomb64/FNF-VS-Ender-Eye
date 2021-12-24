function onUpdate(elapsed)
	--characterPlayAnim('dad', 'hey', true);
	setCharacterY('dad', math.sin(getSongPosition() * 0.01) * 25 + 100);
end

--function onBeatHit()
--	if (getProperty(curBeat) == 25) then
--		doTweenZoom('zoomIn', 'camGame', 1.2, crochet, circInOut);
--	end
--end

function onDestroy()
	close(true);
end