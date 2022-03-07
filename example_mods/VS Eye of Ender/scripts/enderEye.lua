function onUpdate(elapsed)
	--characterPlayAnim('dad', 'hey', true);
	if (dadName == 'enderEye' or dadName == 'enderEyeImpostor') then
		setCharacterY('dad', math.sin(getSongPosition() * 0.01) * 25 + 100);
	end
	if (boyfriendName == 'enderEye') then
		setCharacterY('boyfriend', math.sin(getSongPosition() * 0.01) * 25 + 100);
	end
	if (boyfriendName == 'enderEyeImpostor') then
		setRatingString('mewo');
		triggerEvent('Set Scroll Speed', tostring(math.random(50, 200) / 100), '0');
		if (keyJustPressed('space')) then
			triggerEvent('Add Camera Zoom', '0.015', '0.03');
			triggerEvent('Hey!', 'GF', '');
		end
	end
end

function onBeatHit()
	if (boyfriendName == 'enderEyeImpostor') then
		characterDance('gf');
	end
end

function onDestroy()
	close(true);
end