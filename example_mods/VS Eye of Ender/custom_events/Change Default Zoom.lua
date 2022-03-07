function onEvent(name, value1, value2)
	if name == 'Change Default Zoom' then
		setProperty('defaultCamZoom', toNumber(value1));
		--setProperty('camGame.zoom', toNumber(value1));
	end
	print('Event triggered: ', name, value1, value2);
end