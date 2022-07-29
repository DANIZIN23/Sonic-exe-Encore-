function onCreatePost()
	setProperty('scoreTxt.alpha', 0);
	setProperty('iconP1.alpha', 0);
	setProperty('iconP2.alpha', 0);
	if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		setProperty('scoreTxt.alpha', 0);
		setProperty('healthBar.alpha', 0);
		else if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
			setProperty('scoreTxt.alpha', 0);
			setProperty('healthBar.alpha', 0);
		end
	end
end