function onEvent(name, value1, value2)
	if name == 'Change PlayState Property' then
		if toNumber(value2) ~= nil then
			setProperty(value1, toNumber(value2));
		else
			if value2 == 'true' then
				setProperty(value1, true);
			else if value2 == 'false' then
				setProperty(value1, false);
			else
				setProperty(value1, value2);
		end
	end
end