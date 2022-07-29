function onCreatePost()
	setProperty('scoreTxt.y', 12);
	setProperty('iconP1.alpha', 0);
	setProperty('iconP2.alpha', 0);
	if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		setProperty('scoreTxt.y', 32);
		setProperty('healthBar.y', 8);
		else if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
			setProperty('scoreTxt.y', 660);
			setProperty('healthBar.y', 700);
		end
	end
end