local followchars = true;
local del = 0;
local del2 = 0;
local xx = 1100;
local yy = 680;
local xx2 = 1500;
local yy2 = 720;
local ofs = 50;
function onCreate()
	setPropertyFromClass('ClientPrefs', 'healthBarAlpha', '100');
        makeLuaSprite('skyP2','skyP2',0,0)
	addLuaSprite('skyP2',false)
	setLuaSpriteScrollFactor('skyP2', 0.9, 0.9);

	makeLuaSprite('Trees2','Trees2',0,0)
	addLuaSprite('Trees2',false)
	setLuaSpriteScrollFactor('Trees2', 0.9, 0.9);
	
        makeLuaSprite('Trees','Trees',0,0)
	addLuaSprite('Trees',false)
	setLuaSpriteScrollFactor('Trees', 1, 1);

	makeLuaSprite('Grass','Grass',0,0)
	addLuaSprite('Grass',false)
	setLuaSpriteScrollFactor('Grass', 1, 1);
		
    makeAnimatedLuaSprite('Phase3Static','Phase3Static',0,0)
    addAnimationByPrefix('Phase3Static','Phase3Static instance','Phase3Static instance',24,false)
    addLuaSprite('Phase3Static',false)
    scaleObject('Phase3Static', 4, 4);
    setObjectCamera('Phase3Static', 'other');
	setProperty('Phase3Static.visible',false)
	
		makeLuaSprite('Counter','Counter',1050,600)
	addLuaSprite('Counter',false)
	setObjectCamera('Counter','other');
	scaleObject('Counter', 1.3, 1.3)
end	

function onBeatHit()-- for every beat
	-- body
end

function onStepHit()-- for every step

end

function onUpdate()
        if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'Laugh' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',0.8)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
	if curStep == 0 then
		setProperty('Phase3Static.visible',true)
		objectPlayAnimation('Phase3Static','Phase3Static instance',true)
	end
	if curStep == 16 then
		setProperty('Phase3Static.visible',false)
	end
	if curStep == 1024 then
		setProperty('Phase3Static.visible',true)
		objectPlayAnimation('Phase3Static','Phase3Static instance',true)
	end
	if curStep == 1039 then
		setProperty('Phase3Static.visible',false)
	end
	if curStep == 1088 then
		setProperty('Phase3Static.visible',true)
		objectPlayAnimation('Phase3Static','Phase3Static instance',true)
	end
	if curStep == 1104 then
		setProperty('Phase3Static.visible',false)
	end
	if curStep == 1216 then
		setProperty('Phase3Static.visible',true)
		objectPlayAnimation('Phase3Static','Phase3Static instance',true)
	end
	if curStep == 1232 then
		setProperty('Phase3Static.visible',false)
	end
	if curStep == 1280 then
		setProperty('Phase3Static.visible',true)
		objectPlayAnimation('Phase3Static','Phase3Static instance',true)
	end
	if curStep == 1295 then
		setProperty('Phase3Static.visible',false)
	end
	if curStep == 2304 then
		setProperty('Phase3Static.visible',true)
		objectPlayAnimation('Phase3Static','Phase3Static instance',true)
	end
	if curStep == 2319 then
		setProperty('Phase3Static.visible',false)
	end
	if curStep == 2816 then
		setProperty('Phase3Static.visible',true)
		objectPlayAnimation('Phase3Static','Phase3Static instance',true)
	end
	if curStep == 2831 then
		setProperty('Phase3Static.visible',false)
	end
	if curStep == 3200 then
		setProperty('Phase3Static.visible',true)
		objectPlayAnimation('Phase3Static','Phase3Static instance',true)
	end
	if curStep == 3216 then
		setProperty('Phase3Static.visible',false)
	end
	if curStep == 3456 then
		setProperty('Phase3Static.visible',true)
		objectPlayAnimation('Phase3Static','Phase3Static instance',true)
	end
	if curStep == 3472 then
		setProperty('Phase3Static.visible',false)
	end
	if curStep == 4096 then
		setProperty('Phase3Static.visible',true)
		objectPlayAnimation('Phase3Static','Phase3Static instance',true)
	end
	if curStep == 4112 then
		setProperty('Phase3Static.visible',false)
	end
	if curStep == 5120 then
		setProperty('Phase3Static.visible',true)
		objectPlayAnimation('Phase3Static','Phase3Static instance',true)
	end
	if curStep == 5136 then
		setProperty('Phase3Static.visible',false)
	end
    	setPropertyFromClass('GameOverSubstate', 'characterName', 'ded'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end