--server
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local saymsg = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local getmsg = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local StarterGui = game:GetService("StarterGui")
local instance = (_G.chatSpyInstance or 0) + 1
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

--counter variables
local AmountOfPlayers
local AllPlayers
local TimeOfExecutedLB = 0
local minutesOfExecutedLB = 0
local osk = 1
local savePos = nil 
local breakingSpeed
local SavedCheckpoint
local posit = Player.Character.HumanoidRootPart.Position.Y
local bangDefense

--toggle variables
local breakFullLadderEnabled
local breakLadderEnabled
local oskSpamEnabled
local antiSpyEnabled
local chatBypassEnabled
local chatBypassEnabled2
local antiVoidenabled
local antiSitEnabled
local antiWarpEnabled
local autoDropDolce
local autoGrabDolce
local ladderTransparency = 0.5
enabledSpy = false
spyOnMyself = false
public = false
publicItalics = true
_G.chatSpyInstance = instance

--properties
local csc1 = 160
local csc2 = 0
local csc3 = 160
privateProperties = {
	Color = Color3.fromRGB(csc1, csc2, csc3); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}

--functions
local function ChangeFov(Fov, Time)
	TweenService:Create(workspace.Camera, TweenInfo.new(Time), {FieldOfView = Fov}):Play()
end

local function brkLdr()
	while breakLadderEnabled == true do
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(88, 141, -237)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(90, 140, -234)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(92, 137, -231)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(94, 136, -230)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(95, 135, -228)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(97, 134, -226)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(100, 132, -224)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(105, 129, -226)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(109, 127, -228)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(111, 125, -227)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(113, 124, -226)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(115, 123, -226)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(118, 122, -227)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(118, 121, -228)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(120, 120, -229)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(123, 118, -232)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(125, 116, -234)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(126, 114, -237)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(125, 113, -239)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(125, 112, -241)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(125, 112, -244)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(124, 111, -247)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(124, 109, -250)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(123, 107, -253)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(123, 105, -256)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(121, 103, -259)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(120, 101, -261)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(117, 99, -264)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(115, 97, -265)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(113, 95, -265)
		wait(breakingSpeed)
	end
end

local function brkldrfull()
	while breakFullLadderEnabled == true do
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(88, 141, -237)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(90, 140, -234)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(92, 137, -231)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(94, 136, -230)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(95, 135, -228)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(97, 134, -226)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(100, 132, -224)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(105, 129, -226)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(109, 127, -228)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(111, 125, -227)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(113, 124, -226)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(115, 123, -226)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(118, 122, -227)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(118, 121, -228)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(120, 120, -229)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(123, 118, -232)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(125, 116, -234)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(126, 114, -237)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(125, 113, -239)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(125, 112, -241)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(125, 112, -244)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(124, 111, -247)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(124, 109, -250)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(123, 107, -253)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(123, 105, -256)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(121, 103, -259)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(120, 101, -261)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(117, 99, -264)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(115, 97, -265)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(113, 95, -265)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(110, 93, -265)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(108, 92, -265)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(105, 90, -264)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(102, 88, -264)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(98, 86, -263)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(95, 84, -262)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(91, 82, -259)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(89, 78, -256)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(89, 76, -253)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(89, 74, -250)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(89, 74, -247)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(89, 73, -244)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(89, 71, -240)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(89, 70, -237)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(90, 68, -234)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(91, 67, -231)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(94, 66, -230)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(96, 64, -228)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(99, 62, -226)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(103, 60, -227)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(107, 57, -227)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(111, 55, -227)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(114, 53, -228)
		wait(breakingSpeed)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(118, 50, -228)
		wait(breakingSpeed)
	end
end

local function onChatted(p,msg)
	if _G.chatSpyInstance == instance then
		if p==Player and msg:lower():sub(1,4)=="/spy" then
			enabledSpy = not enabledSpy
			wait(0.3)
			privateProperties.Text = "{SPY "..(enabledSpy and "EN" or "DIS").."ABLED}"
			StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
		elseif enabledSpy and (spyOnMyself==true or p~=Player) then
			msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
			local hidden = true
			local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
				if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==Player.Team)) then
					hidden = false
				end
			end)
			wait(1)
			conn:Disconnect()
			if hidden and enabledSpy then
				if public then
					saymsg:FireServer((publicItalics and "" or '').."{SPY} [".. p.DisplayName .."]: "..msg,"All")
				else
					privateProperties.Text = "{SPY} [".. p.DisplayName .."]: "..msg
					StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
				end
			end
		end
	end
end

local function antiChatSpy()
	while antiSpyEnabled do
		game:GetService("Players"):Chat("ЙОУ ВЫРУБИ ЧЯТ СПАЙ Э")
		wait(0.1)
	end
end

local function chatBypass()
	while chatBypassEnabled do
		Players:Chat("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE")
        wait(0.2)
        Players:Chat("/e ABC")
        wait(0.2)
        Players:Chat("le le le le le le le")
        wait(0.2)
        Players:Chat("le le le le le")
        wait(0.2)
	end
end

for _,p in ipairs(Players:GetPlayers()) do
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end
Players.PlayerAdded:Connect(function(p)
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end)

StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
local chatFrame = Player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)

--library
local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/m1kp0/libraries/refs/heads/main/m1kpe0_orion_lib.lua")))()
local Window = OrionLib:MakeWindow({Name = "Ladder Breaker | Premium", HidePremium = false, IntroEnabled = false, IntroText = "Loading..", SaveConfig = true, ConfigFolder = "OrionTest"})

local MainTab = Window:MakeTab({Name = "main", Icon = "", PremiumOnly = false})
local ChatTab = Window:MakeTab({Name = "chat", Image = "", PremiumOnly = false})
local TPTab = Window:MakeTab({Name = "teleport", Image = "", PremiumOnly = false})
local DefenseTab = Window:MakeTab({Name = "defense", Image = "", PremiumOnly = false})
local PlayerTab = Window:MakeTab({Name = "character", Image = "", PremiumOnly = false})
local ScriptTab = Window:MakeTab({Name = "scripts", Image = "", PremiumOnly = false})
local ClockTab = Window:MakeTab({Name = "time", Image = "", PremiumOnly = false})
local Ctab = Window:MakeTab({Name = "changelog", Image = "", PremiumOnly = false})
local Servertab = Window:MakeTab({Name = "server", Image = "", PremiumOnly = false})

--main tab
MainTab:AddToggle({
	Name = "break ladder",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		breakLadderEnabled = Value
		brkLdr()
	end    
})

MainTab:AddToggle({
	Name = "break ladder (more)",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		breakFullLadderEnabled = Value
		brkldrfull()
	end    
})

MainTab:AddLabel("лучший delay: 0.07")

MainTab:AddTextbox({
	Name = "delay (break ladder)",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		breakingSpeed = Value
	end	  
})

--chat tab
ChatTab:AddToggle({
	Name = "chat spy",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		if Value == true then
			enabledSpy = true
			spyOnMyself = false
		else
			enabledSpy = false
			spyOnMyself = false
		end
	end    
})

ChatTab:AddToggle({
	Name = "public chat spy",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		if Value == true then
			public = true
		else
			public = false
		end
	end    
})

ChatTab:AddToggle({
	Name = "spy on myself",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		if Value == true then
			spyOnMyself = true
		else
			spyOnMyself = false
		end
	end    
})

ChatTab:AddToggle({
	Name = "anti chat spy",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		antiSpyEnabled = Value
		antiChatSpy()
	end    
})

ChatTab:AddSection({Name = "advanced"})
osk = 1
ChatTab:AddToggle({
	Name = "спам-оск (без бана)",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		oskSpamEnabled = Value
		while oskSpamEnabled do
			if osk == 1 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Але пердокрылый хуйла шлюшенская подзалупная хуета", "All")
				wait(5)
				osk = 2
			elseif osk == 2 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le уворачивайся от моей запы чернохуеплитический дегенерат", "All")
				wait(5)
				osk = 3
			elseif osk == 3 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я ща твоей потаскухе шлюхо матери череп хуем пробью кину тоего батька через реку", "All")
				wait(5)
				osk = 4
			elseif osk == 4 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты нищее дегенеративное утребье которое в очко долбил прадед", "All")
				wait(5)
				osk = 5
			elseif osk == 5 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le давай нахуй отцов пересчитывай своих я уже заебался слишком мало человек тя там долбит", "All")
				wait(5)
				osk = 6
			elseif osk == 6 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le хуесос патлатый чо ты там плачешь в хуй раб ща твоей маме гнилозубой 3 оставшиеся зуба выбью", "All")
				wait(5)
				osk = 7
			elseif osk == 7 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ты фрик ебаный под напором моей спермы из мармелада превратился в черную поганду", "All")
				wait(5)
				osk = 8
			elseif osk == 8 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le але мудоногий вафлепидешь ты сын пробляди тухлодырой просто копроеб низкорослый я же кончу твоей мамаше на могилу", "All")
				wait(5)
				osk = 9
			elseif osk == 9 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le там толпа ебет твоего батька за котлету он там полудохлый уже лежит", "All")
				wait(5)
				osk = 10
			elseif osk == 10 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le твоя бабка колясочница блядная мне минет за пачку сухариков 3 месяца делала она здохла быстрее чем я предполагал не успела сделать мне минет на память", "All")
				wait(5)
				osk = 11
			elseif osk == 11 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le але ты же наикопрохуила я же твоего жирного небритого батька смусорки достал после того как он от меня хуем в рыло получал", "All")
				wait(5)
				osk = 12
			elseif osk == 12 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Але ты че тут нахуй озверевшея обезьяна тухлодырая пытаешься просраться у меня под ногами", "All")
				wait(5)
				osk = 13
			elseif osk == 13 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le тише ты сейчас будешь получать мощные тычки хуем по затылку", "All")
				wait(5)
				osk = 14
			elseif osk == 14 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le але имбицильная потаскуха ты сейчас в своем же чемодане с которым ты хотел ко мне приехать полетишь в жерло вулкана", "All")
				wait(5)
				osk = 15
			elseif osk == 15 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le сынуля куртизанской шлюхи я те ща рил вены хуем вскрою влечу тебе с 2 ног в ебучку и кричу арррр арррр", "All")
				wait(5)
				osk = 16
			elseif osk == 16 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты уже тут смардное еблище на 180 скривил от такого удара", "All")
				wait(5)
				osk = 17
			elseif osk == 17 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le сынуля пробляди дырявой какой те хаудинг нахуй сын бляди принимай богоподобный хуй в свой спермоприемник", "All")
				wait(5)
				osk = 18
			elseif osk == 18 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le поебированная выблядь тебя в данной конференции уже пустили по кругу", "All")
				wait(5)
				osk = 19
			elseif osk == 19 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le гнилозубый вафлепиздешь анука выплюнь яйца изо рта нищее дегенеративное утребье которое в детстве долбил в очко прадед", "All")
				wait(5)
				osk = 20
			elseif osk == 20 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le блядохуила шлюхопропиздическая санкционная тайская шлюха я же закапывпю твою мамашу заживо на твоих глазах", "All")
				wait(5)
				osk = 21
			elseif osk == 21 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты нищий сын швали подорожной я же твоего батька там пилю лазером еблан его на 2 части распилило так быстро что он не успел мне там помолиться", "All")
				wait(5)
				osk = 22
			elseif osk == 22 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le давай ебало подбей сын свиноматки а то я ща те швабру в очко начну сувать", "All")
				wait(5)
				osk = 23
			elseif osk == 23 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Блять сука але сын свиноматки ебированной всей калифорнии что ты тут пиздишь", "All")
				wait(5)
				osk = 24
			elseif osk == 24 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le сынуля шаболды жирной нахуй давай вылизывай потные яйца своего жирного небритого отчима", "All")
				wait(5)
				osk = 25
			elseif osk == 25 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le перхоть подзалупная что ты можешь противопоставить я ща с мексиканским картелем влетаем к те на хату убиваем твою шваль мамашу жирную", "All")
				wait(5)
				osk = 26
			elseif osk == 26 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le на ран зе гантлит сняли видео как мы ее потрашили нахуй", "All")
				wait(5)
				osk = 27
			elseif osk == 27 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le але скотопиздыц кривозубый сынуля падали тумбоголовой ты знаешь как мой член проскальзывал по анальным тунелям твоей матери", "All")
				wait(5)
				osk = 28
			elseif osk == 28 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Че ты там себе начинаешь свечки в анус сувать походу ты страдаешь от собственной не вьебучести", "All")
				wait(5)
				osk = 29
			elseif osk == 29 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le отрыжка папиного хуя давай уже втопи ебало вылизывай древнегреческий клитор своей толстой шлюхо матери", "All")
				wait(5)
				osk = 30
			elseif osk == 30 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я же те очко разорвпл хуем и спермой залил ты раздулся я тя запустил пинком к тебе в окно", "All")
				wait(5)
				osk = 31
			elseif osk == 31 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ослина ебированная у тя семья мои гнилые рабы я же ща в берцах белыми шнурками буду подошвой давить интимную стрижку", "All")
				wait(5)
				osk = 32
			elseif osk == 32 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le твоего батька я тя нахуц подвесил как морковку в майнкрафте для свиней проеормил потомство", "All")
				wait(5)
				osk = 33
			elseif osk == 33 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le слизывай лечебную сметану с моего хуя собака гнилая ты обычный сперматозоид вытекающий с моей уретры", "All")
				wait(5)
				osk = 34
			elseif osk == 34 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le просто признац что ты слаб и я тебя только что отпинал ногами выблядка", "All")
				wait(5)
				osk = 35
			elseif osk == 35 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le разрублю тебя пополам нищий сынок полумертвого коня", "All")
				wait(5)
				osk = 36
			elseif osk == 36 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le але ебаная патчерица я же ща твой гнилой ебасос по кругу пускать буду", "All")
				wait(5)
				osk = 37
			elseif osk == 37 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Тебе мать ебали але в хуй пиши мне бырее", "All")
				wait(5)
				osk = 38
			elseif osk == 38 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le свинья ебало подбей у тя батек хач ебливый который твою мохнатую раздробленную пизду своим хуем выпотрошил полностью", "All")
				wait(5)
				osk = 39
			elseif osk == 39 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я те сказал ебало закрыла ебаная ротовыебанная обезьяна занимающаяся проституцией на хуе своего гнилозубого хачееба отца", "All")
				wait(5)
				osk = 40
			elseif osk == 40 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Дура ебаная ты че на мой хуй рыпаешься тебе же ща все ебало вскрою своим богоподобным членом", "All")
				wait(5)
				osk = 41
			elseif osk == 41 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Инфантильная шлюха ебало свое закрой и начни впитывать миллионы фактов в свое продырявленное моим хуем ебало", "All")
				wait(5)
				osk = 42
			elseif osk == 42 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Я же тебе щас яйцами все твои глаза выбью дочь куртизанской грязной свиноты жирной 300 килотонн бля", "All")
				wait(5)
				osk = 43
			elseif osk == 43 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Але копрофильная лупоглазая блядинка тебе же когда твою шлюхомать на белазе переезжали белаз чуть не утонул в ее пузе она как черная дыра нахуй", "All")
				wait(5)
				osk = 44
			elseif osk == 44 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Ты че у тя бабку твою пузатую сиротку на колесо камаза намотало и 30 раз переебашило в блендере", "All")
				wait(5)
				osk = 45
			elseif osk == 45 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Твой батек спермобак ща пойдет тебе свой фимозный хуек сувать в твою ротовую полость где нет языка он в остался в анале твоего прадеда", "All")
				wait(5)
				osk = 46
			elseif osk == 46 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Ты че беззубая мусорница я же тебя ща за волосы возьму начну по всему твоему шалашу раскручивать нахуй", "All")
				wait(5)
				osk = 47
			elseif osk == 47 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Ау хуесосница я ща пойду твой череп испепелять лазером из головки моего хуя", "All")
				wait(5)
				osk = 48
			elseif osk == 48 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Потаскуха нахуй за пивом мне метнулась быстро я те этой банкой ща пропасть сделаю в твоем пустом черепе", "All")
				wait(5)
				osk = 49
			elseif osk == 49 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Ты че бля я ща приду твою матушку вросшую в диван возьму за ебало и начну его выкручивать нахуй", "All")
				wait(5)
				osk = 50
			elseif osk == 50 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le паскудница я тебе говорю ща тя просто в землю втоптаю ты там будешь червей жрать выдра ебанутая стремная", "All")
				wait(5)
				osk = 51
			elseif osk == 51 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le чета ты сын шлюхи прихуел тут я смотрю может те давно череп не пробивали хуем", "All")
				wait(5)
				osk = 52
			elseif osk == 52 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Или я все не как не пойму давай ка я те тута щас скважину вьебу во лбу и ты нахуй будешь туда говнеца принимать покуда во рту места нет", "All")
				wait(5)
				osk = 53
			elseif osk == 53 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Закрой там еблище своё идиот ебучий черный сын шлюхи ты куда там убежало с этой конференции в надежде что тебя это спасет или что я не могу толком то понять", "All")
				wait(5)
				osk = 54
			elseif osk == 54 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le естественно от тебя ничего не остаётся тут ты поняла нет мышцы напряги свои и начни выдавать отпор какой либо пока тебе пизда тут окончательно не пришла", "All")
				wait(5)
				osk = 55
			elseif osk == 55 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le баная нахуйница сидит и терпит пока я его мать хачиху ебашу во все щели с эхом как в онигарском водопаде", "All")
				wait(5)
				osk = 56
			elseif osk == 56 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я те тута щас ряд еблище раскрою Ты чё мне тут начинаешь пиздеть дочь шлюхи я же тебя разъебашу мне даже не придется силы тратить", "All")
				wait(5)
				osk = 57
			elseif osk == 57 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты же ебанутая девчонка которая думает что сможет вывезти меня ты очень сильно ошибаешься", "All")
				wait(5)
				osk = 58
			elseif osk == 58 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le a я тебя выебу как нехуй делать и будешь выжимать из себя соки чтобы ответить мне самому богу твоих родителей", "All")
				wait(5)
				osk = 59
			elseif osk == 59 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le свои слова которые ты высераешь и понимаешь насколько ты позорище и потом начнёшь мне в лс плакаться извинятся за твои слова и ты будешь думать что приму твои извинения", "All")
				wait(5)
				osk = 60
			elseif osk == 60 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le но ты ты ошибаешься так как ты дочь шлюхи которая ебётся каждый раз", "All")
				wait(5)
				osk = 61
			elseif osk == 61 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le при рождении она уж ебалась с отчимом которые ебашил в ней струек спермы", "All")
				wait(5)
				osk = 62
			elseif osk == 62 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le тут же ты нахуй отлетишь от хуя моего и тебе даже не кто не поможет ты же думаешь что тебе помогут", "All")
				wait(5)
				osk = 63
			elseif osk == 63 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты же максимум позовешь своих подружек на мой хуй", "All")
				wait(5)
				osk = 64
			elseif osk == 64 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le твои подружки подсосы которые в силах отсосать у меня членок и пойти спать в свой сарай где уж бомжы твою мамашу ебашут", "All")
				wait(5)
				osk = 65
			elseif osk == 65 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le даже не надо объяснить что я тут сильный а ты слабак которые возомнил себя царем ты такой смешной однако", "All")
				wait(4)
				osk = 66
			elseif osk == 66 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le внутри тебя сперма моих дружков давай щас бел глупостей ты отсосешь мне по классике как ты обычно умеешь", "All")
				wait(5)
				osk = 67
			elseif osk == 67 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le и я забью на тебя хуй и перестану трогать и ты будешь выгоде и ты всегда будешь радоваться тому моменту когда я свой пенис буду пихать к твоим губам", "All")
				wait(5)
				osk = 68
			elseif osk == 68 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le да кстати ты уж сожрал мое говно я тебе дал свой кал жрать а ты его так доел сильно что ты просила добавки ты же даже в жизни не знаешь", "All")
				wait(5)
				osk = 69
			elseif osk == 69 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Слушай сюда пиздонаркогейша я же начну тебя ебать по всем фронтам также как твоего хуесоса отца на сво", "All")
				wait(5)
				osk = 70
			elseif osk == 70 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты же слабая трансуха мне похуй кто ты я тебя ебал слабая дочурка хуеты я же тя об столб заебашил я тя с небоскреба кидал в тя тор молниями ебашил под 100000 вольт", "All")
				wait(5)
				osk = 71
			elseif osk == 71 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я тя яйцами душил ты от моего хуя получала удары что ты увидела спутник с которого я твоей матери сперму спустил", "All")
				wait(5)
				osk = 72
			elseif osk == 72 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le А ну-ка ты нахуй ебасос хуеплетный я же ща начну пулять тебя в стратосферу ебаный пиздоблядский лохматый чмырь", "All")
				wait(5)
				osk = 73
			elseif osk == 73 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le яш щас буду ебашить тебя шваль тухлодырая", "All")
				wait(5)
				osk = 74
			elseif osk == 74 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le А ну-ка свой еблет всосала дочура щлюхи я те нахуй все кости вы ломаю наизнанку", "All")
				wait(5)
				osk = 75
			elseif osk == 75 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я твоей матери палками по её уродливому лобку ебашил ну ну бля попизди в хуй пиздохуесоска", "All")
				wait(5)
				osk = 76
			elseif osk == 76 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Я тя нахуй как рыбу буду вскрывать я тя об тумбу уебал шлюхоподобная свиноте мразота", "All")
				wait(5)
				osk = 77
			elseif osk == 77 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я те меч в жопу сувал ща поминутно начну ебать тя ты своим спермоприемником будешь лизать мне хуй хуераспиздяйка у ты блять выродка залупы", "All")
				wait(5)
				osk = 78
			elseif osk == 78 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le внутри тебя сперма моих дружков давай щас бел глупостей ты отсосешь мне по классике как ты обычно умеешь", "All")
				wait(5)
				osk = 79
			elseif osk == 79 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le и я забью на тебя хуй и перестану трогать и ты будешь выгоде и ты всегда будешь радоваться тому моменту когда я свой пенис буду пихать к твоим губам", "All")
				wait(5)
				osk = 80
			elseif osk == 80 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le да кстати ты уж сожрал мое говно я тебе дал свой кал жрать а ты его так доел сильно что ты просила добавки ты же даже в жизни не знаешь", "All")
				wait(5)
				osk = 81
			elseif osk == 81 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Слушай сюда пиздонаркогейша я же начну тебя ебать по всем фронтам также как твоего хуесоса отца на сво", "All")
				wait(5)
				osk = 82
			elseif osk == 82 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты же слабая трансуха мне похуй кто ты я тебя ебал слабая дочурка хуеты я же тя об столб заебашил я тя с небоскреба кидал в тя тор молниями ебашил под 100000 вольт", "All")
				wait(5)
				osk = 83
			elseif osk == 83 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я тя яйцами душил ты от моего хуя получала удары что ты увидела спутник с которого я твоей матери сперму спустил", "All")
				wait(5)
				osk = 84
			elseif osk == 84 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le А ну-ка ты нахуй ебасос хуеплетный я же ща начну пулять тебя в стратосферу ебаный пиздоблядский лохматый чмырь", "All")
				wait(5)
				osk = 85
			elseif osk == 85 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я в тя комочками из спермой пулял ты же слабая подсоска хуя моего ты никому не известная детя шлюхи медленная хуета ща хуем те ебало скрою", "All")
				wait(5)
				osk = 86
			elseif osk == 86 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Ты еще поклониться моему волшебному дилдаку будешь", "All")
				wait(5)
				osk = 87
			elseif osk == 87 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Ебаная шлюха щя начну ебать тя камнями по еблету залупой на Марс к Илону Маску запущу он тя выебет пиздохарактерную подзалупную ебаподсоску", "All")
				wait(5)
				osk = 88
			elseif osk == 88 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Тle le le le le le le le ы же нахуй поеботна блядопиздеща я же нахуй твоего отца заебаширую своими сильными ногами маленькая хуебродопиздатая чмырила, прыщявая залупень", "All")
				wait(5)
				osk = 89
			elseif osk == 89 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Ты нахуй как мармелад под огнем превратилась в черную поганку от моей спермы ты вместо воды будешь пить мою спермоту", "All")
				wait(5)
				osk = 90
			elseif osk == 90 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты детишка алконаркоцигана со своими собутыльниками отсосали хуи по размеру к их гнилозубому рту", "All")
				wait(5)
				osk = 91
			elseif osk == 91 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты же нахуц пиздец какая слабая и даже не пизди что ты мою мать ебал потому что даже женщина заебашит такую слабую хуетень как ты", "All")
				wait(5)
				osk = 92
			elseif osk == 92 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Ты де уже от пота выявленным моим хуем задыхаешься ты просто черножопая грязная своей жизнью хуеглотное дерьмо", "All")
				wait(5)
				osk = 93
			elseif osk == 93 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le вскройся также как это сделал твой бухой узбек отец на сво", "All")
				wait(5)
				osk = 94
			elseif osk == 94 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ну ты же нахуй цель для буллинга все сильнее заглатываешь мой хуй", "All")
				wait(5)
				osk = 95
			elseif osk == 95 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я своим металлическим членом достал до твоего желудочного сока но место него там была моя сперма", "All")
				wait(3)
				osk = 96
			elseif osk == 96 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le которая появилась из за твоего тупого отца яйцебродного которого заебашить даже букашке не составит особого труда", "All")
				wait(5)
				osk = 97
			elseif osk == 97 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я тебе в натуре буду пробивать в твое обосанное ебло каждые 5 секунд потому что я буду доводить тебя до смерти старенькая коза", "All")
				wait(5)
				osk = 98
			elseif osk == 98 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Ты же нахуй понимаешь что я буду ебать тебя до смерти без секунды отдыха просто нахуй скажи уже что ты слабость которая насасывает мне хуй", "All")
				wait(5)
				osk = 99
			elseif osk == 99 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Такая мразотина яж твою колясочницу бабушку выбросил в окно и она прилетела в твой ничтожный еблет осла ебаного", "All")
				wait(5)
				osk = 100
			elseif osk == 100 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ну уже просто втопи свое еблище в могилу твоей матери, твоец матери краном уебали в ебло ты же нахуй не по смеешь даже высрать 1 слово", "All")
				wait(5)
				osk = 101
			elseif osk == 101 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le против такого могущественого как я который холодно кровно заебашировал всю твою семью ты же нахуй слабая шлюхидзе скунсиха от которой за километр пахнет моей спермой просто нахуй", "All")
				wait(5)
				osk = 102
			elseif osk == 102 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le лузани шалавка ебаная", "All")
				wait(5)
				osk = 103
			elseif osk == 103 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Анука але вафлепиздище вафлехуильное анука соси мой обконченный дилдак который выебал в анал твою бездарную шлюшенскую", "All")
				wait(5)
				osk = 104
			elseif osk == 104 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le шлюхо мамашу прошмандовку але утребье я щя буду ебашить твою мандохвостого отца камнями по голове я со спутника спущю", "All")
				wait(5)
				osk = 105
			elseif osk == 105 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("тle le le le le le le le ы же сам блядоблядинская проблядная чернохуеплитическая мандорылая чернорылая пиздорылая фуфловое мразеебированная млепопитающая", "All")
				wait(5)
				osk = 106
			elseif osk == 106 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le засунь огурец в пизду твоей мертвой бездарной губке матери я же здал эту чушку на мясо комбинат к таким же свиноподобным", "All")
				wait(5)
				osk = 107
			elseif osk == 107 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le свинорылым свиньям которые бяли такими же паскуда и прошмандовками как и твоя шлюхидза потаскуха матушка ты знал что я вырезал", "All")
				wait(5)
				osk = 108
			elseif osk == 108 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ее древнегреческий клитор выкопанный племеним древних ацтеков ножницами и с моей сперомой скормил твоему козлоссаному ничтожеству блядотворенскуму копрохую жирному небритому отчима", "All")
				wait(5)
				osk = 109
			elseif osk == 109 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le он ебет тебя стручком в 3 см всю ночь а ты ахаешь будто увидел как я режу сиськи твоей проблядоблядухе мертвой шаболде атери которая делала мне минет 3 месяца за пачку сухариков с котлетой", "All")
				wait(5)
				osk = 110
			elseif osk == 110 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le она будет получать тотальные проблемы от моего члена перейдем на твою старую потаскуху шлюхо бабушку я же ей выбивал ее вставную челусть купленные на последние гроши", "All")
				wait(5)
				osk = 111
			elseif osk == 111 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le потому что она такая же мудоногая кривозубая гнилозубая мандохвостная жирная блядуха ей пора в гроб я лично на кончаю ей на могилку поставлю ей там ф как твоей матери", "All")
				wait(5)
				osk = 112
			elseif osk == 112 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le хорошая женщина была всегда мне давала как только я попрощу ее спермоприемник уже выглядед как белый экран жаль что они все здохли", "All")
				wait(5)
				osk = 113
			elseif osk == 113 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le пока что кроме тебя чушкохуила я же распелю тебя бензопилой пополам а потом выложу как расчлененку я посмотрю как ты будешь хрюкать", "All")
				wait(5)
				osk = 114
			elseif osk == 114 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le когда я буду резать тебе твою глотку ты же просто свинорылый козлоссаный свиняра подсоска моего хуя", "All")
				wait(5)
				osk = 115
			elseif osk == 115 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты же просто хитроебированный сынок жирной мертвой шлюхидзы шлюхоблядиной прошмандоки которую наркоманы хуярили по пузу пока же я говорил", "All")
				wait(5)
				osk = 116
			elseif osk == 116 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты уже здох от ебейшего напора моей спермы бездарное утребье ебаный пасынок жирной шаболды", "All")
				wait(5)
				osk = 117
			elseif osk == 117 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я же распелю тебя бензопилой пополам а потом выложу как расчлененку я посмотрю как ты будешь хрюкать когда я буду резать тебе", "All")
				wait(5)
				osk = 118
			elseif osk == 118 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le твою глотку ты же просто свинорылый козлоссаный свиняра подсоска моего хуя ты же просто хитроебированный сынок жирной мертвой", "All")
				wait(5)
				osk = 119
			elseif osk == 119 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le шлюхидзы шлюхоблядиной прошмандоки которую наркоманы хуярили по пузу пока же я говорил ты уже здох от ебейшего напора моей", "All")
				wait(5)
				osk = 120
			elseif osk == 120 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le спермы бездарное утребье ебаный пасынок жирной шаболды анука сосо мой член 0 отпора безприемное хуета ложись в гроб", "All")
				wait(5)
				osk = 121
			elseif osk == 121 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я буду него кончать как и твоей полоумной шлюхо пиздапроблной бляди матери", "All")
				wait(5)
				osk = 122
			elseif osk == 122 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Блядоблятский пиздонутый вафледрон анука соси мой обконченный дилдак суванный в пидзу твоей козлоссущей шлюхо мамаше выебнаая", "All")
				wait(5)
				osk = 123
			elseif osk == 123 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le перхотью подзалупной уворачивайся от моей залупы ктребье а то я уебу яйцами те по глазам они у тебя под диван укатяться будешь по всей хате ебало собирать", "All")
				wait(5)
				osk = 124
			elseif osk == 124 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Троллинг бедная девочка обиделась на мои факты про тебя у тебя уж пизда задроченая малоимущий умирай уж в муках собака ебливая", "All")
				wait(5)
				osk = 125
			elseif osk == 125 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le каждый раз при обстоятельствах будешь у меня под столом мой членок обсасывать и мою сперму в себя принимать ты уж этим заниматься любишь так что приказам моим ты уж всегда готова", "All")
				wait(5)
				osk = 126
			elseif osk == 126 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le Максимум высри из своего ротика говнище, я буду хуярить твой текст своим королевским агрегатом, сделаю печать на твой лобешник,", "All")
				wait(5)
				osk = 127
			elseif osk == 127 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le там будет написано тупой сынок шлюшенции, ибо ты выписал мне в хуй срутекст своими жирненькими копытцами, ебать ты сынище мутации", "All")
				wait(5)
				osk = 128
			elseif osk == 128 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le старался так и влетел в мой хуй,мдаа можно спокойно въебать тебе троический ударок в печень за твою микрообъебануюю деградированную текстовку", "All")
				wait(5)
				osk = 129
			elseif osk == 129 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты же сыночек шмарообъебки будешь доедать за мной объедки,точнее частицы своей дегролированной матухи спермобанки,", "All")
				wait(5)
				osk = 130
			elseif osk == 130 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я в неё столько спермы влил ,что ты просто наешься до отвала будешь пить из своей мамы, а если ослушаешься возьму и сдеру с тебя твою мутированную кожецу,", "All")
				wait(5)
				osk = 131
			elseif osk == 131 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le для меня ты всего лишь хуесос высравший из себя мало по малу, ибо твои наделенные деградацией тексты пошли дефать моё ахуенное чтиво,", "All")
				wait(5)
				osk = 132
			elseif osk == 132 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le щас же я возьму просто и испепелю твою мать своим хуйцом и разрежу все её микрохуемподорванные частицы деградации,", "All")
				wait(5)
				osk = 133
			elseif osk == 133 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты же сынок блядусии как заурядный пасынок будешь выдан на обед моему хую,буду ебать твой ротик и кончать в тебя,", "All")
				wait(5)
				osk = 134
			elseif osk == 134 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le а ты будешь все это глотать,я сделаю из тебя последнюю шлюшку, хотя в твоей линии есть и дочерние клетки ,я избавлю тебч от них ебанув на тебя тупогорильную чмышку клеймо,", "All")
				wait(5)
				osk = 135
			elseif osk == 135 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты же в свою очередь пойдешь на линию отбора ,где и будут ебать твою ничтожномямлющую тушку", "All")
				wait(5)
				osk = 136
			elseif osk == 136 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le слышишь рабоблядь ,я расстреляю ноги твоему бати ,возьму его голову и буду ебашить в неё из дробовика ,а после перейду на мать и выбью из неё все свиные кости,", "All")
				wait(5)
				osk = 137
			elseif osk == 137 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le а тебя в свою очередь я пропущу через мясорубку и сделаю фаршеподобное изделие , будешь фрикаделькой, буду наслаждаться твоей ничтожной плотью сыночек шлюхематочной продукции", "All")
				wait(5)
				osk = 138
			elseif osk == 138 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я твою мамашу ебал дерьмо ебанное быстрее в руки себя взяла козлина ебучая будешь тут мне отсасывать на постоянной основе", "All")
				wait(5)
				osk = 139
			elseif osk == 139 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le телочка ебанная я тебе нахуй тут сосалище объебашу кулаками дерьмо ебучее будешь у меня тут на постоянной основе лещей получать", "All")
				wait(5)
				osk = 140
			elseif osk == 140 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le теленок ебучий что ты тут пытаешься нахуй я тебе тут один хуй сломаю все сосалище ебанная тряпка", "All")
				wait(5)
				osk = 141
			elseif osk == 141 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le молись сколько хочешь тебе никто не поможет осилить мою залупу в этом противостоянии тряпичная мизерная куртизанская банкаброшница", "All")
				wait(5)
				osk = 142
			elseif osk == 142 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le что будет тут на постоянной основе получать у меня в рыгалище тварь ебаная я тебе сказал в руки себя щеглина ебанная", "All")
				wait(5)
				osk = 143
			elseif osk == 143 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le будешь же тут всеми своими слабыми силами надрачивать мою залупу щегол ебучий я твою мамашу шлюху ебал пошел нахуй отсюда сынуля", "All")
				wait(5)
				osk = 144
			elseif osk == 144 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le шалавы ты перекошенный тебе же тут пизды сынку шалавы дадим обоссыв твою глазницу терпила ебанная будешь тут своей черепной коробкой", "All")
				wait(5)
				osk = 145
			elseif osk == 145 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le обороняться от моей залупы терпилоид ебучий тебе тут каждый мать ебал что ты тут пытаешься отсосница ебанная я твое ебало нахуй", "All")
				wait(5)
				osk = 146
			elseif osk == 146 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le тут вытрахаю кидая его в масленицу терпила ебанная в руки себя взяла и начала мне показывать что ты из себя представляешь терпильная хуесосущая тряпка", "All")
				wait(5)
				osk = 147
			elseif osk == 147 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le тут которую я буду кидать тут по пентаграмме мусорщица ебанная я тебе тут нахуй буду кости ломать пока ты будешь здесь истошно орать", "All")
				wait(5)
				osk = 148
			elseif osk == 148 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le сын шалавы перекошенный завали свое ебало сынуля шлюхи ебучий тебе же тут один хуй сынку шалавы сломаем все ебало кидая в него харчи и рапиры", "All")
				wait(5)
				osk = 149
			elseif osk == 149 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я твою мамашу ебал так что не замедляйся тряпка глупейшая", "All")
				wait(5)
				osk = 150
			elseif osk == 150 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я твою мамашу ебал чушак ебучий тебе сказано тут показывать весь свой нулячий скилл в виде своих отсосов девчонка ебучая", "All")
				wait(5)
				osk = 151
			elseif osk == 151 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я тебе тут буду на постоянной основе кидать маслянистые харчи в ебалище будешь ими умывать свой говнистый ебальник сын шалавы ебанный", "All")
				wait(5)
				osk = 152
			elseif osk == 152 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я твою мамашу ебал попросту что ты мразь ебанная лоускильная хуесоска пытаешься тебе никогда не осилить меня на фантазии", "All")
				wait(5)
				osk = 153
			elseif osk == 153 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le просто прими факт того что ты ебанная мразота попросту никогда и никого тут не осилишь", "All")
				wait(5)
				osk = 154
			elseif osk == 154 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le что на выдержке что на фантазии кидая мне свою немыслимую трепотню девчонка ебучая я тебе попросту тут сосалище в ошметки превращу чуркабес ебучий", "All")
				wait(5)
				osk = 155
			elseif osk == 155 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le будешь тут своими лоускильными текстами выживать тут у меня слышишь телочка ебанная я твою мамашу шалаву ебанную ебу", "All")
				wait(5)
				osk = 156
			elseif osk == 156 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le тут в дерьмище превращу один хуй ты тряпка говнистая будешь тут своим упитанным ебалищем набирать залупы в свой зубной состав вместо пломбы", "All")
				wait(5)
				osk = 157
			elseif osk == 157 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le телочка ебучая пиздец тебе же сынку падали шаблонизированной тут пиздец слышала телочка ебучая собирай уже все свои силы воедино", "All")
				wait(5)
				osk = 158
			elseif osk == 158 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le и показывай мне отсосы в хорошем качестве чтобы я тебя мразоту ебанную тут попросту не начал раскидывать по всем отделам дерьмеца который летит в твое ебалище интуитивно", "All")
				wait(5)
				osk = 159
			elseif osk == 159 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le телочка ты ебучая наислабейшая", "All")
				wait(5)
				osk = 160
			elseif osk == 160 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты попросту у меня тут будешь высижывать последние свои дни жизни и вкачиваться смотря на мои объемные текста и отсасыват одну громадную залупу", "All")
				wait(5)
				osk = 161
			elseif osk == 161 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le чурочка ебучая я тебе тут попросту мать ебал хуесос лоускильный ничтожный ничего из себя не представляющий", "All")
				wait(5)
				osk = 162
			elseif osk == 162 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le телочка я тебе говорю не смей даже противиться мне я тебе нахуй ебало все перетрахаю что ты ебанная терпила еще годами в себя прийти не сможешь", "All")
				wait(5)
				osk = 163
			elseif osk == 163 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ебанная мразота говорю реще собирай все свои силы в кулак и начинай мне показывать как ты умеешь наяриватьмою залупу своими ебучими сраными культяпками", "All")
				wait(5)
				osk = 164
			elseif osk == 164 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le которые я тебе отбил в ходе харкания в ебалище твоей матери шалаве дерьмище ебанное", "All")
				wait(5)
				osk = 165
			elseif osk == 165 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты ебучая терпила тебе тут будем на постоянной основе кидать харчки в ебало дабы ты ебанная блевотина понимала что со мной бесполезно конкурировать в чем либо", "All")
				wait(5)
				osk = 166
			elseif osk == 166 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ведь твое ебалище гнилое будет постоянно находиться в опасности и страхе ведь моя залупа полностью пронзит и насквозь твою сосальню сынок шлюхи ебучий", "All")
				wait(5)
				osk = 167
			elseif osk == 167 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я тебе говорю не отсоси здесь тебе никакие шаблоны тут не помогут знай это терпила ебанная я же буду тебе ебалище переламывать на постоянной основе", "All")
				wait(5)
				osk = 168
			elseif osk == 168 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le чуркабес ебучий ты уже сжился с тем фактом что твоя мать шлюха сделает тут мне минет и съебется нахуй пока я буду сокрушать твое ебалище меж галлактики", "All")
				wait(5)
				osk = 169
			elseif osk == 169 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ебанная мусорница я тебе говорю не смей тут отсосать шимпанзе ебучее тебе же тут сынку падали все ноги нахуй переломаю за твои попытки отсосать мою залупу на камеру", "All")
				wait(5)
				osk = 170
			elseif osk == 170 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le патлатый длиноволоссый скуфурезный тупейший сын рабопидораса ебанного жирного нахуй толстоеблый прыщавый омежный сын шлюхи что гниет понорвстающе на моем елданище", "All")
				wait(5)
				osk = 171
			elseif osk == 171 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le встанем вдвоем меж ног твоей матери копро бляди и будем харкать в ее жирноою отраханное жерло будтно она не человек", "All")
				wait(5)
				osk = 172
			elseif osk == 172 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le а просто выблядко подобная трипоблядская пиздаеблая полузгнившая дочура черной хуйни хуй держи в зубах своих", "All")
				wait(5)
				osk = 173
			elseif osk == 173 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le сыняра ебанной выдры залупу мою чещешь при этом тыкая по клаве клава мой хуй тыкай быстрее дерьмоедливый сынок копроблядиты просто потеха ебаннаянахуй", "All")
				wait(5)
				osk = 174
			elseif osk == 174 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le не на что не способная которая ищет тут оправдания сосируя мой богоебский половой агрегат накрозависиый блядотный увалень четопиздит своим сальным непропорциональным еблом", "All")
				wait(5)
				osk = 175
			elseif osk == 175 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le пытаевьшсись достигунть своей главной цели в жизни а именно отсосать мой детародный орган качественно и без хуйни я тыою мамашу ебалником", "All")
				wait(5)
				osk = 176
			elseif osk == 176 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le не известный сынуля шлюхикоторый сидит врежиметерпилыебучейиполучаетпизды от каждегоя тя слабака ебанного буду хуесосить терпи унижения сын шлюхи", "All")
				wait(5)
				osk = 177
			elseif osk == 177 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le я твою мать ебал тебе ноавиься мое мамаебство хуйлуша ебливая я тебе рога сломаю тут за твой базар петух ебаный еблище своё", "All")
				wait(5)
				osk = 178
			elseif osk == 178 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le нахуй завали шерсть ебучая чисто я кста в зубы твоей матери с ноги влетал сынише ебанного говна тут нахуй решил моему пенису", "All")
				wait(5)
				osk = 179
			elseif osk == 179 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le нахуй сопоставить чото ртом своей жировыебанной свинорылой матухи в итоге ща сосируя мне им нахуй пытаясь душу высосать из моего королевского нахуй волшебного хуя", "All")
				wait(5)
				osk = 180
			elseif osk == 180 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le который одним взмахом заставить тебя примкнуть к нему своими ебаными губами и сосировать его ртом мамки твоей ебливой свиноватки", "All")
				wait(5)
				osk = 181
			elseif osk == 181 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le в итоге нахуй получив по ебалу и начать судорожно сосать его до потери пулься нахуй", "All")
				wait(5)
				osk = 182
			elseif osk == 182 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le пока он тебе нахуй глаза не выбил и тепбе не пришлось мою хуяку нахуй на ощуп искать ебланище ебать тупое ебаная подвальная проблядская хуета", "All")
				wait(5)
				osk = 183
			elseif osk == 183 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le чо ты тут на деле може кроме того как сосать мою королевскую хуяку нижняя ветвь развития чото пытается сопоставить мне ртом своей матери", "All")
				wait(5)
				osk = 184
			elseif osk == 184 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le пока его отец гоняет мои шары чтоб они ему нахуй вмятину на ебале не оставили тупорылое", "All")
				wait(5)
				osk = 185
			elseif osk == 185 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ебать создание я же тебя ща отьебашу нахуй и колени наизнанку выверну хуесос ебливый сосок ебаный я же ща внатуре твою мамашу ебу", "All")
				wait(5)
				osk = 186
			elseif osk == 186 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le она пытается убежать от моего хуя чтоб он ее как в прошлый раз залупай по губам не отхуесосил ты тут сынок шлюхи черной", "All")
				wait(5)
				osk = 187
			elseif osk == 187 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le чисто рексиш мне на хуй пиздов отхватывал от залцпф моейа ну тяни сюда ебло твоей мамаши ебем ее всей кф сын бляди у твоей", "All")
				wait(5)
				osk = 188
			elseif osk == 188 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le матери шлюхи ебаной черепно мозговая от удара залупой рекс ебучий обхарканный бомжами сын шлбхи ты сосешь сдесь сын шлюхи с обконченым еблищем", "All")
				wait(5)
				osk = 189
			elseif osk == 189 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ты куда по тапкам там въебал ишак ебучий ты тут будешь страдать каждый день в моем присутствии чуркаш ебучий", "All")
				wait(5)
				osk = 190
			elseif osk == 190 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le мать те в бронивике нбал мать те покойницу ебанную хуем пытал заплаканную дочь выдры шпиглик ебанный не боймя меня телка", "All")
				wait(5)
				osk = 191
			elseif osk == 191 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le месим твою губастую шлюхомать передай своей матери что она шлюха траханная мною так скажем ты тут щеняра ты ебанная тупо рексик", "All")
				wait(5)
				osk = 192
			elseif osk == 192 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ебливый ниначто ниспособный я те мамашу зарежу нахуй копрофильный отсосный сыняра ебанной шельмы я те на рыло срал ничтожный", "All")
				wait(5)
				osk = 193
			elseif osk == 193 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le рабопидорас ты сынуля шлюхи ебанной будешь онли по еблу своему маловидному получать удары залупой ты пиздец блядорыльцевый сынуля", "All")
				wait(5)
				osk = 194
			elseif osk == 194 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le хуйни не смыслящий ничего в жизни я твою мамашу ебал она брала тут по самые десна ебал твое изнасилованное сосалище харчеглотное", "All")
				wait(5)
				osk = 195
			elseif osk == 195 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le поебенное рыльце твое разобью на пазлы нахуй те тельце твое обьебанное сынуля ты черной шлюхи ебало твое мамбетное тут трахать", "All")
				wait(5)
				osk = 196
			elseif osk == 196 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le буду косозубая шельма бля блядоуфанатевшая тут моим пенисом дегенеративная говноедливая трущебное сынуля ты потешной говноеблой", "All")
				wait(5)
				osk = 197
			elseif osk == 197 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le наездницы моего полового агрегата сынуля ебанной попездливой блядины кринжовая дочь фимозного пастуха рабыня ты ебанная", "All")
				wait(5)
				osk = 198
			elseif osk == 198 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le дряблокожая ебанная дочура шлавенции деревнская шлюха твою тупую физиомюномию нахуй тут ебировать буду тумородная ты дите свиньи", "All")
				wait(5)
				osk = 199
			elseif osk == 199 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le ебанной ебал те мамашу тут ты сынуля бляди нбанной я те матуху ебал потому что эта блядуха пришла на мусорку набила се брюхо", "All")
				wait(5)
				osk = 200
			elseif osk == 200 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le жирное хуями блядскими эту хуесоску драли пятеро бомжей ебанных под забором она давала в пизду свою спидозную за шестнадцать рублей", "All")
				wait(5)
				osk = 201
			elseif osk == 201 and oskSpamEnabled then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("le le le le le le le le бля в принципе живет ваша радословная хуесосов тем что она сосет грязные елдаки как и ты сыняра шельмы ебанной", "All")
				wait(5)
				osk = 1
			end
			wait()
		end
	end    
})

ChatTab:AddTextbox({
	Name = "chat (не забанят)",
	Default = "",
	TextDisappear = true,
	Callback = function(messageToSay)
		if _what then
			ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("                                                                                                                                       "..messageToSay, "All")
		else
			ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(messageToSay, "All")
		end
	end	  
})

ChatTab:AddToggle({
	Name = "chat bypass",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		chatBypassEnabled = Value
		chatBypass()
	end    
})

ChatTab:AddToggle({
	Name = "mega message",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		_what = Value
	end    
})

local raidSymbol = "👹"
ChatTab:AddToggle({
	Name = "chat raid",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
	spamen = Value
		if spamen then
			if raidSymbol == "👹" then
				repeat
					wait(2)
					ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹👹", "All")
				until spamen == false
			elseif raidSymbol == "👍" then
				repeat
					wait(2)
					ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍", "All")
				until spamen == false
			elseif raidSymbol == "🥵" then
				repeat
					wait(2)
					ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵🥵", "All")
				until spamen == false
			elseif raidSymbol == "😈" then
				repeat
					wait(2)
					ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈", "All")
				until spamen == false
			elseif raidSymbol == "👺" then
				repeat
					wait(2)
					ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺👺", "All")
				until spamen == false
			elseif raidSymbol == "❤️" then
				repeat
					wait(2)
					ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️", "All")
				until spamen == false
			end
		end
	end    
})

ChatTab:AddDropdown({
	Name = "raid symbol",
	Default = "👹",
	Options = {"👹", "👍", "🥵", "😈", "👺", "❤️"},
	Callback = function(Value)
		raidSymbol = Value
	end    
})

--teleport tab
TPTab:AddButton({
	Name = "spawn",
	Callback = function()
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(91, 3, -26)
	end    
})

TPTab:AddButton({
	Name = "top of the ladder",
	Callback = function()
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(80, 147, -247)
	end    
})

TPTab:AddButton({
	Name = "bottom of the ladder",
	Callback = function()
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(93, 3, -232)
	end    
})

TPTab:AddButton({
	Name = "green zone",
	Callback = function()
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(70, 100, -469)
	end    
})

TPTab:AddButton({
	Name = "yellow zone",
	Callback = function()
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(41, 106, -775)
	end    
})

TPTab:AddButton({
	Name = "pink zone",
	Callback = function()
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(3, 188, -1188)
	end    
})

TPTab:AddButton({
	Name = "purple zone",
	Callback = function()
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(-25, 192, -1534)
	end    
})

TPTab:AddButton({
	Name = "orange zone",
	Callback = function()
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(-82, 282, -1824)
	end    
})

TPTab:AddButton({
	Name = "dark-yellow zone",
	Callback = function()
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(-122, 264, -2145)
	end    
})

TPTab:AddButton({
	Name = "blue zone",
	Callback = function()
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(-204, 264, -2620)
	end    
})

TPTab:AddButton({
	Name = "end",
	Callback = function()
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(-238, 265, -2809)
	end    
})

--defense tab
DefenseTab:AddSection({Name = "anti-admin"})

DefenseTab:AddButton({
	Name = "delete blur",
	Callback = function()
        workspace.Camera.Blur:Destroy()
  	end    
})


DefenseTab:AddButton({
	Name = "anti kill/kick part",
	Callback = function()
		for i, p in pairs(workspace.Damage:GetDescendants()) do
			if p.Name == "TouchInterest" then
				p:Destroy()
			end
		end
		for i, v in pairs(workspace:GetDescendants()) do
			if v.Name == "TeleportPart" then
				for i, p in pairs(v:GetDescendants()) do
					if p.Name == "TouchInterest" then
						p:Destroy()
					end
				end
			end
		end
	end    
})

DefenseTab:AddToggle({
	Name = "anti warp",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Flag = "AntiWarpToggle",
	Callback = function(Value)
		antiWarpEnabled = Value
		while RunService.RenderStepped:Wait() and antiWarpEnabled do
			ChangeFov(70, 0.0000001)
		end
	end    
})

DefenseTab:AddToggle({
	Name = "anti sit",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Flag = "AntiSitToggle",
	Callback = function(Value)
		antiSitEnabled = Value
		Player.Character.Humanoid.Seated:Connect(function()
			if antiSitEnabled then
				Player.Character.Humanoid.Sit = false
			else
				antiSitEnabled = false
			end
		end)
	end    
})

DefenseTab:AddSection({Name = "advanced"})

DefenseTab:AddButton({
	Name = "kill/kick facebang",
	Callback = function()
		if bangDefense == "kill" then
			local p =  Player.Character.HumanoidRootPart.Position
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(65, 89, -404)
			wait(0.3)
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(65, 89, -404)
			wait(0.3)
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(p)
		else
			local p =  Player.Character.HumanoidRootPart.Position
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(-244, 265, -2826)
			wait(0.3)
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(-244, 265, -2826)
			wait(0.3)
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(p)
		end
  	end    
})

DefenseTab:AddButton({
	Name = "kill/kick bang",
	Callback = function()
		if bangDefense == "kill" then
			local p = Player.Character.HumanoidRootPart.Position
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(65, 96, -407)
			wait(0.3)
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(65, 96, -407)
			wait(0.3)
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(p)
		else
			local p = Player.Character.HumanoidRootPart.Position
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(-245, 265, -2828)
			wait(0.3)
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(-245, 265, -2828)
			wait(0.3)
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(p)
		end
  	end    
})

DefenseTab:AddDropdown({
	Name = "bang-defense",
	Default = "kill",
	Options = {"kill", "kick"},
	Callback = function(Value)
		bangDefense = Value
	end    
})

DefenseTab:AddToggle({
	Name = "anti void",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		if Value then
			antiVoidEnabled = true
			workspace.FallenPartsDestroyHeight = -100000
			while Value do
				while Player.Character.HumanoidRootPart and Player.Character.HumanoidRootPart.Position.Y < -500 and antiVoidEnabled do
					Player.Character.HumanoidRootPart.CFrame = CFrame.new(80, 147, -247)
					OrionLib:MakeNotification({
						Name = "Theres a staarmaan waiting in the sky",
						Content = "i will save you next time:3",
						Image = "rbxassetid://18624604880",
						Time = 5
					})
					Player.Character.HumanoidRootPart.CFrame = CFrame.new(80, 147, -247)
					wait()
				end
				wait()
			end
		else
			antiVoidEnabled = false
			workspace.FallenPartsDestroyHeight = -100
		end
	end    
})

DefenseTab:AddTextbox({
	Name = "ladder transparency",
	Default = "0.5",
	TextDisappear = true,
	Callback = function(Value)
		ladderTransparency = Value
	end	  
})

DefenseTab:AddToggle({
	Name = "create my ladder",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		if Value then
			for i, p in pairs(workspace.Stairs:GetDescendants()) do
				if p:IsA("Part") then
					local k = Instance.new("Part", workspace)
					k.Position = p.Position
					k.Anchored = true
					k.CFrame = p.CFrame
					k.Size = p.Size
					k.Name = "LB-Ladder"
					k.Color = p.Color
					k.BrickColor = p.BrickColor
					k.Transparency = ladderTransparency
					k.Material = "SmoothPlastic"
				end
			end
		else
			for i, p in pairs(workspace:GetDescendants()) do
				if p.Name == "LB-Ladder" then
					p:Destroy()
				end
			end
		end
	end    
})

DefenseTab:AddButton({
	Name = "save checkpoint",
	Callback = function()
		SavedCheckpoint = Player.Character.HumanoidRootPart.Position
		Player.CharacterAdded:Connect(function()
			wait(0.2)
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(SavedCheckpoint + Vector3.new(0, 3, 0))
		end)
  	end    
})

DefenseTab:AddButton({
	Name = "delete checkpoint",
	Callback = function()
		SavedCheckpoint = nil
  	end    
})

DefenseTab:AddButton({
	Name = "drop dolce milk (inventory)",
	Callback = function()
		local tool = Player.Character:FindFirstChild("Dolce Milk")
		if tool then
			tool.Parent = workspace
		else
			OrionLib:MakeNotification({
				Name = "возьми дольче милк",
				Content = "в руки",
				Image = "rbxassetid://18624604880",
				Time = 5
			})
		end
	end
})

DefenseTab:AddToggle({
	Name = "auto drop dolce milk",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		autoDropDolce = Value
		while autoDropDolce do
			wait()
			local tool = Player.Character:FindFirstChild("Dolce Milk")
			if tool and autoDropDolce and not autoGrabDolce then
				tool.Parent = workspace
			end
		end
	end    
})

DefenseTab:AddToggle({
	Name = "auto grab dolce milk",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		autoGrabDolce = Value
		while autoGrabDolce and not autoDropDolce do
			wait(0.1)
			for i, d in pairs(workspace:GetDescendants()) do
				if d.Name == "Dolce Milk" and d.Parent == workspace then
					d.Handle.CFrame = CFrame.new(Player.Character.RightLowerArm.CFrame.Position + Vector3.new(-1, -1, 0))
				end
			end
		end
	end    
})
--character settings tab
PlayerTab:AddTextbox({
	Name = "speed",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		Player.Character.Humanoid.WalkSpeed = Value
	end	  
})

PlayerTab:AddTextbox({
	Name = "jump power",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		Player.Character.Humanoid.JumpPower = Value
	end	  
})

PlayerTab:AddToggle({
	Name = "infinite jumps",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		if Value then
			infJump = true
			game:GetService("UserInputService").JumpRequest:Connect(function()
				if infJump then
					Player.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
				end
			end)
		else
			infJump = false
		end
	end
})

PlayerTab:AddTextbox({
	Name = "gravity",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		workspace.Gravity = Value
	end	  
})

PlayerTab:AddTextbox({
	Name = "field of view",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		workspace.Camera.FieldOfView = Value
	end	  
})

PlayerTab:AddToggle({
	Name = "infinite zoom distance",
	Default = false,
	Color = Color3.fromRGB(102, 0, 102),
	Callback = function(Value)
		if Value then
			Player.CameraMaxZoomDistance = math.huge
		else
			Player.CameraMaxZoomDistance = 150
		end
	end
})

PlayerTab:AddButton({
	Name = "sit",
	Callback = function()
		if OrionLib.Flags["AntiSitToggle"].Value == true then
			OrionLib:MakeNotification({
				Name = "you need to disable the anti sit",
				Content = "you cant sit with enabled anti sit",
				Image = "rbxassetid://18624604880",
				Time = 5
			})
		else
			workspace.Gravity = 10
			Player.Character.Humanoid.Sit = true
			wait(1)
			workspace.Gravity = 192.6
		end
	end    
})

PlayerTab:AddButton({
	Name = "r6 animation",
	Callback = function()
		OrionLib:MakeNotification({
			Name = "подожди",
			Content = "wait",
			Image = "rbxassetid://18624604880",
			Time = 1
		})
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-R6-Animations-on-R15-16865"))()
	end    
})

PlayerTab:AddParagraph("defaults","| speed - 16 | jump power - 50 | gravity - 196.2 | field of view - 70 |")

--other scripts tab
ScriptTab:AddButton({
	Name = "infinite yield",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end    
})

ScriptTab:AddButton({
	Name = "system broken",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))()
	end    
})

ScriptTab:AddButton({
	Name = "float",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float"))()
	end    
})

ScriptTab:AddButton({
	Name = "dex explorer v2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/dex2.0", true))()
	end    
})

ScriptTab:AddButton({
	Name = "path & float",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/m1kp0/universal_scripts/refs/heads/main/ONLY-PC_pathing"))()
	end    
})

ScriptTab:AddButton({
	Name = "jerk off",
	Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
  	end    
})

ScriptTab:AddButton({
	Name = "отдельный chat bypass",
	Callback = function()
        loadstring(game:HttpGet'https://raw.githubusercontent.com/m1kp0/universal_scripts/refs/heads/main/chat_bypass.lua')()
  	end    
})

--clocktime tab
ClockTab:AddButton({
	Name = "night",
	Callback = function()
		game.Lighting.ClockTime = 0
	end    
})

ClockTab:AddButton({
	Name = "day",
	Callback = function()
		game.Lighting.ClockTime = 10
	end    
})

ClockTab:AddButton({
	Name = "morning",
	Callback = function()
		game.Lighting.ClockTime = 6
	end    
})

ClockTab:AddButton({
	Name = "evening",
	Callback = function()
		game.Lighting.ClockTime = 18
	end    
})

ClockTab:AddTextbox({
	Name = "custom time",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Lighting.ClockTime = Value
	end	  
})

--changelog tab
Ctab:AddParagraph("PREMIUM", "онли я и друзья")

--server tab
AmountOfPlayers = #Players:GetPlayers()
AllPlayers = #Players:GetPlayers()

Servertab:AddSection({Name = "players (max 50)"})

local countOfPlayersLabel = Servertab:AddLabel("count of players: "..AmountOfPlayers.."")
local allPlayersLabel = Servertab:AddLabel("all players: "..AmountOfPlayers.."")

Servertab:AddSection({Name = "you"})

Servertab:AddLabel("you: "..Player.DisplayName.."("..Player.Name..")")

local executedLB_label = Servertab:AddLabel("йоу")

Players.PlayerAdded:Connect(function(plr)
	AmountOfPlayers = AmountOfPlayers + 1
	AllPlayers = AllPlayers + 1
	countOfPlayersLabel:Set("count of players: "..AmountOfPlayers.."")
	allPlayersLabel:Set("all players: "..AllPlayers.."")
end)

Players.PlayerRemoving:Connect(function()
	AmountOfPlayers = AmountOfPlayers - 1
	countOfPlayersLabel:Set("count of players: "..AmountOfPlayers.."")
end)

local hourOfExecutedLB = 0

OrionLib:MakeNotification({
	Name = "Ladder Breaker loaded",
	Content = "completely",
	Image = "rbxassetid://4483345998",
	Time = 3
})

while wait(1) do
	TimeOfExecutedLB = TimeOfExecutedLB + 1
	executedLB_label:Set("script executed: "..hourOfExecutedLB.." hour, "..minutesOfExecutedLB.." min, "..TimeOfExecutedLB.." sec")

	if TimeOfExecutedLB == 59 then
		minutesOfExecutedLB = minutesOfExecutedLB + 1
		TimeOfExecutedLB = 0
		wait()
	end

	if minutesOfExecutedLB == 59 and TimeOfExecutedLB == 59 then
		hourOfExecutedLB = hourOfExecutedLB + 1
		minutesOfExecutedLB = 0
		TimeOfExecutedLB = 0
		wait()
	end
end

OrionLib:Init()

