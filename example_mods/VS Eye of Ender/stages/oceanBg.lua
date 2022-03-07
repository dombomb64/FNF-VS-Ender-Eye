function onCreate()
	-- background stuffs
	makeLuaSprite('oceanBg1', 'oceanBg1', -825, -900);
	setScrollFactor('oceanBg1', 1.0, 1.0);
	scaleObject('oceanBg1', 1.0, 1.0);
	
	makeLuaSprite('oceanBg2', 'oceanBg2', -825, -900);
	setScrollFactor('oceanBg2', 1.0, 1.0);
	scaleObject('oceanBg2', 1.0, 1.0);

	makeLuaSprite('oceanBg3', 'oceanBg3', -825, -900);
	setScrollFactor('oceanBg3', 1.0, 1.0);
	scaleObject('oceanBg3', 1.0, 1.0);

	makeLuaSprite('oceanBg4', 'oceanBg4', -825, -900);
	setScrollFactor('oceanBg4', 1.0, 1.0);
	scaleObject('oceanBg4', 1.0, 1.0);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	end

	addLuaSprite('oceanBg1', false);
	addLuaSprite('oceanBg2', false);
	addLuaSprite('oceanBg3', false);
	addLuaSprite('oceanBg4', true);

	if (getProperty(songName) == 'Eye Spy' or getProperty(songName) == 'Free the End') then
		setProperty('defaultCamZoom', 1.0);
	else
		setProperty('defaultCamZoom', 0.8);
	end
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end