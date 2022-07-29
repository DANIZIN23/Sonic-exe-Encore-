local ffi = require("ffi")  -- LuaJIT Extension
local user32 = ffi.load("user32")   -- LuaJIT User32 DLL Handler Function

ffi.cdef([[
enum{
    MB_OK = 0x00000000L,
	MB_OKCANCEL = 0x00000001L,
    MB_ABORTRETRYIGNORE = 0x00000002L,
    MB_YESNOCANCEL = 0x00000003L,
    MB_YESNO = 0x00000004L,
    MB_RETRYCANCEL = 0x00000005L,
    MB_CANCELTRYCONTINUE = 0x00000006L,
    MB_ICONINFORMATION = 0x00000040L,
};

typedef void* HANDLE;
typedef HANDLE HWND;
typedef const char* LPCSTR;
typedef unsigned UINT;

int MessageBoxA(HWND, LPCSTR, LPCSTR, UINT);
int MessageBoxW(HWND, LPCSTR, LPCSTR, UINT);
]])

local followchars = true;
local del = 0;
local del2 = 0;
local xx = 1200;
local yy = 500;
local xx2 = 1700;
local yy2 = 900;
local ofs = 50;
function onCreate()
	setProperty('health', 2.0);
	
	makeLuaSprite('sky_exe','sky_exe',0,0)
	addLuaSprite('sky_exe',false)
	setLuaSpriteScrollFactor('sky_exe', 0.9, 0.9);

	makeLuaSprite('backtrees','backtrees',0,0)
	addLuaSprite('backtrees',false)
	setLuaSpriteScrollFactor('backtrees', 0.9, 0.9);
	
        makeLuaSprite('trees_exe','trees_exe',0,0)
	addLuaSprite('trees_exe',false)
	setLuaSpriteScrollFactor('trees_exe', 0.9, 0.9);        

	makeLuaSprite('ground','ground',0,0)
	addLuaSprite('ground',false)
	setLuaSpriteScrollFactor('ground', 1, 1);	
	
	makeAnimatedLuaSprite('ExeAnimatedBG_Assets','ExeAnimatedBG_Assets',0,0)
    	addAnimationByPrefix('ExeAnimatedBG_Assets','ExeBGAnim','ExeBGAnim',24,true)
    	addLuaSprite('ExeAnimatedBG_Assets',false)
    	objectPlayAnimation('ExeAnimatedBG_Assets','ExeBGAnim',false)	
	
	makeLuaSprite('TailsCorpse','TailsCorpse',1300,760)
	addLuaSprite('TailsCorpse',false)
	setLuaSpriteScrollFactor('TailsCorpse', 1, 1);
end	

function onBeatHit()-- for every beat

end

function onStepHit()-- for every step
	-- body
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
            setProperty('defaultCamZoom',0.9)
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
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then              
		triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'deathLoop' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'deathConfrim' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'firstDeath' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        else

            setProperty('defaultCamZoom',0.95)
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
            if getProperty('boyfriend.animation.curAnim.name') == 'deathLoop' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'deathConfrim' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'firstDeath' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
	for i = 0,3 do
        setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
    end
	for i = 0, getProperty('unspawnNotes.length')-1 do	
		setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'BloodSplash');
	end
	setPropertyFromClass('GameOverSubstate', 'characterName', 'ded-exe'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'buildUP'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Exe_die'); --put in mods/music/   
end



function opponentNoteHit(id,data,type,sus)

	health = getProperty('health')
	if getProperty('health') > 0.1 then
		setProperty('health', health- 0.0005);
	end
end
