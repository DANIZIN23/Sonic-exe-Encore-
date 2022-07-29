function onCreate()
	-- background shit
	makeLuaSprite('run', 'run', -600, -300);
	setScrollFactor('run', 0.9, 0.9);
	addLuaSprite('run', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end