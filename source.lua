--[[
GAME LINK https://www.roblox.com/games/4616652839/TEN-TAILS-Shinobi-Life-2
v3rm: https://v3rmillion.net/showthread.php?tid=1063031
Discord: reav#2966
Discord Server: https://discord.gg/aDRStgw
Usage:
loadstring(game:HttpGet("https://raw.githubusercontent.com/23r4t/name/main/source.lua", true))()
]]

repeat wait() until game:IsLoaded()
--old-antitp bypass
if workspace:FindFirstChild("CCoff") then
    game:GetService("Workspace").CCoff:Destroy()
end
--antiafk
local VirtualUser=game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
	warn("anti-afk")
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)
--variables
local player = game.Players.LocalPlayer
local mission = player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild("Missionstory")
local menuplace = 4616652839
local forestplace = 5447073001
local rainplace = 5084678830
local trainingplace = 5431071837
local akatsukiplace = 5431069982
local worldxplace = 5943874201
local villageplace = game:GetService("Workspace"):FindFirstChild("rank")
local warplace = game:GetService("Workspace"):FindFirstChild("warmode")
function toTarget(pos, targetPos, targetCFrame)
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((targetPos - pos).Magnitude/getgenv().speed, Enum.EasingStyle.Linear)
    local tween, err = pcall(function()
        local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(90))})
        tween:Play()
    end)
    if not tween then return err end
end

--loading wally ui revamped By Aika
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
_G.ButtonTextColor = Color3.fromRGB(247, 95, 28);
_G.ButtonColor = Color3.fromRGB(5, 16, 20);
_G.PointerColor = Color3.fromRGB(247, 95, 28);
_G.SecondaryColor = Color3.fromRGB(0, 102, 255);
_G.TertiaryColor = Color3.fromRGB(5, 16, 20);
_G.ToggleColor = Color3.fromRGB(247, 95, 28);
_G.MainTextColor = Color3.fromRGB(255, 255, 255);
_G.MainColor = Color3.fromRGB(247, 95, 28);
_G.SliderColor = Color3.fromRGB(247, 95, 28);
getgenv().speed = 500
local w = library:CreateWindow("Shindo Life")
if villageplace or game.PlaceId == trainingplace or game.PlaceId == rainplace or game.PlaceId == akatsukiplace or game.PlaceId == forestplace then
	--AUTOFARM
	local b = w:CreateFolder("AutoFarm")
	b:Label("To prevent issues farm in a ps",{
		TextSize = 16;
		TextColor = Color3.fromRGB(255,255,255); 
		BgColor = Color3.fromRGB(247, 95, 28);
	}) 
	local autofarm
	b:Toggle("AutoFarm",function(bool)
		autofarm = bool
	end)
	local candies
	b:Toggle("Farm candies",function(bool)
		candies = bool
	end)
	local speed
	b:Slider("Tween Speed",{
		min = 500; 
		max = 2500;
		precise = false;
		},function(speed)
		getgenv().speed = speed
	end)
	local scrollfarm
	b:Toggle("Scroll Sniper",function(bool)
		scrollfarm = bool
	end)
	local jinfarm
	b:Toggle("JinFarm (instakill)",function(bool)
		jinfarm = bool
	end)
	local RANKUP
	b:Toggle("AutoRank",function(bool)
		RANKUP = bool
	end)

	local d = w:CreateFolder("Quests Maker")
	d:Button("Rushs",function()
		for i = 1,300 do
			game.Players.LocalPlayer.Character.combat.update:FireServer("rushw")
			wait(.25)
		end
	end)
	d:Button("Jumps",function()
		for v = 1,300 do
			game.Players.LocalPlayer.Character.combat.update:FireServer("takemovement2")
			wait(.25)
		end
	end)
	d:Button("Chakra Charges",function()
		for i = 1,500 do
			game.Players.LocalPlayer.Character.combat.update:FireServer("key","c")
			wait(.1)
			game.Players.LocalPlayer.Character.combat.update:FireServer("key","cend")
			wait(.5)
		end
	end)
	d:Button("Punches",function()
		for i = 1,999 do
			game.Players.LocalPlayer.Character.combat.update:FireServer("mouse1",true)
			wait(.3)
		end
	end)
	d:Button("TP TrainLog",function()
		toTarget(player.Character.HumanoidRootPart.Position,workspace.npc.logtraining:FindFirstChild("HumanoidRootPart").Position,CFrame.new(game:GetService("Workspace").npc.logtraining:FindFirstChild("HumanoidRootPart").Position))
	end)

	game:GetService('RunService').Stepped:connect(function()
		if autofarm or candies then
			pcall(function()
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end)
		end
	end)
	local green = "http://www.roblox.com/asset/?id=5459241648"
	local red = "http://www.roblox.com/asset/?id=5459241799"
	local candy = "http://www.roblox.com/asset/?id=5710748193"
	spawn(function()
		while wait() do
			if autofarm then
				if  player.currentmission.Value == nil then
					for i,v in pairs(workspace.missiongivers:GetChildren()) do
						pcall(function()
							if player.currentmission.Value == nil and v.Name == "" and v:FindFirstChild("Head") and v.Head:FindFirstChild("givemission").Enabled and v.Head.givemission:FindFirstChild("color").Visible  then
								local TALK = v:FindFirstChild("Talk")
								local lvl = player.statz.lvl.lvl.Value
								if lvl <= 699 then
									if player.currentmission.Value == nil  and v.Talk:FindFirstChild("typ").Value == "defeat" and v.Head.givemission.Enabled and v.Head.givemission.color.Visible and v.Head.givemission.color.Image == green then
										local getmission = v:FindFirstChild("HumanoidRootPart")
										local clienttalk = v:FindFirstChild("CLIENTTALK")
										repeat wait(.3)
											toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-8,0)))
											if (player.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude < 10 then
												clienttalk:FireServer()
												wait(.3)
												clienttalk:FireServer("accept")
											end
										until mission.Visible or v:FindFirstChild("Head").givemission.Enabled == false or player.currentmission.Value == "mission" or not autofarm
									end
								elseif lvl >= 700 then
									if player.currentmission.Value == nil and TALK.typ.Value == "defeat" and v.Head.givemission.Enabled and v.Head.givemission.color.Visible and v.Head.givemission.color.Image == green or v.Head.givemission.color.Image == red then
										local getmission = v:FindFirstChild("HumanoidRootPart")
										local clienttalk = v:FindFirstChild("CLIENTTALK")
										repeat wait(.3)
											toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-8,0)))
											if (player.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude < 10 then
												clienttalk:FireServer()
												wait(.3)
												clienttalk:FireServer("accept")
											end
										until mission.Visible or v:FindFirstChild("Head").givemission.Enabled == false or player.currentmission.Value == "mission" or not autofarm
									end
								end
							end
						end)
					end
				else
					for i,v in pairs(workspace.npc:GetChildren()) do
						pcall(function()
						    if v.ClassName == "Model" and v:FindFirstChild("npctype") and string.find(v.Name, "npc") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Head.CFrame.Y > -1000 then
								repeat wait(.5)
									toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-8,0)))
									v.Humanoid.Health = 0
								until v.Humanoid.Health == 0 or not autofarm or player.currentmission.Value == nil
							end
						end)
					end
				end
			end
		end
	end)
	spawn(function()
		while wait() do
			if candies then
				local spins = player.statz.spins.Value
				if spins < 500 then
					for i,v in pairs(workspace.missiongivers:GetChildren()) do
						pcall(function()
							if mission.Visible == false and v.ClassName == "Model" and v:FindFirstChild("Head"):FindFirstChild("givemission").Enabled and v:FindFirstChild("CLIENTTALK") and v:FindFirstChild("Talk") and string.find(v.Talk.talk1.Value, "TRICK OR TREAT") and v.Talk:FindFirstChild("typ").Value == "halloweenevent" and v.Head.givemission.color.Image == candy then
								repeat wait(.3)
									toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-5,0)))
									v.CLIENTTALK:FireServer()
									wait(.2)
									v.CLIENTTALK:FireServer("accept")
								until v:FindFirstChild("Head").givemission.Enabled == false or not candies
							end
						end)
					end
				else
					print("max spins reached 500")
				end
			end
		end
	end)
	local function SCROLLFARM()
		for i,v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
			if v.ClassName == "Model" and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and v.sh.Position.Y < 2000 then
				local scrollA = v.sh:FindFirstChild("invoke")
				print("SCROLL SPAWNED")
				pcall(function()
					toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.sh.Position,CFrame.new(v.sh.Position))
				end)
				scrollA:FireServer(game.Players.LocalPlayer)
				fireclickdetector(v.sh.ClickDetector)
			end
		end
	end
	local function SCROLLFARM1()
		for i,v in pairs(game.workspace:GetChildren()) do
			if v.ClassName == "Model" and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and v.sh.Position.Y < 2000 then
				local scrollA = v.sh:FindFirstChild("invoke")
				print("SCROLL SPAWNED in workspace")
				pcall(function()
					toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.sh.Position,CFrame.new(v.sh.Position))
					scrollA:FireServer(game.Players.LocalPlayer)
					fireclickdetector(v.sh.ClickDetector)
				end)
			end
		end
	end
	spawn(function()
		while wait() do
			if scrollfarm then
				repeat wait()
					SCROLLFARM()
					SCROLLFARM1()
				until not scrollfarm or not war or not war2
			end
		end
	end)
	local function JINFARM()
		for i,v in pairs(game:GetService("Workspace").npc:GetChildren()) do
			if v.Name == "npc1" then
				repeat wait()
					pcall(function()
						toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-25,0)))
						player.Character.combat.update:FireServer("mouse1", true)
						wait(.1)
						v.Humanoid.HealthChanged:Connect(function()
    						v.Humanoid.Health = 0
    					end)
					end)
				until v.Humanoid.Health == 0 or not jinfarm
			end
		end
	end
	spawn(function()
		while wait() do
			if jinfarm then
				JINFARM()
			end
		end
	end)
	spawn(function()
		while wait() do
			if RANKUP and player.statz.lvl:FindFirstChild("lvl").Value == 1000 then
				repeat wait()
					game.Players.LocalPlayer.startevent:FireServer("rankup")
				until player.statz.lvl:FindFirstChild("lvl").Value == 1 or not RANKUP
			end
		end
	end)
end
if villageplace or game.PlaceId == trainingplace or game.PlaceId == rainplace or game.PlaceId == akatsukiplace or game.PlaceId == forestplace then
    local g = w:CreateFolder("Infinite Mode")
	g:Label("Enable your mode and setup when charge chakra (not max)",{
		TextSize = 15;
		TextColor = Color3.fromRGB(255,255,255); 
		BgColor = Color3.fromRGB(247, 95, 28);
	}) 
    local when = 100000
    g:Slider("When charge(NOT MAX)",{
        min = 30000; 
        max = 200000; 
        precise = false;
    },function(z)
        when = z
    end)    
    g:Button("InfiniteMode",function()
        local mode = game.Players.LocalPlayer.Character.combat.mode
        local copy = mode:Clone()
        copy.Parent = mode.Parent
        mode:Destroy()
        local chakra = string.split(game.Players.LocalPlayer.PlayerGui.Main.ingamearena.Bar.cha.Text,"CHA: ")[2]
        c = chakra:gsub("CHA%:","")
        local cha
        local function chakracheck()
            chakra = string.split(game.Players.LocalPlayer.PlayerGui.Main.ingamearena.Bar.cha.Text,"CHA: ")[2]
            c = chakra:gsub("CHA%:","")
            cha = c
        end
        spawn(function() 
            while wait() do
                if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 0 then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
                end
                chakracheck()
            end
        end)
        spawn(function() 
            while wait() do
                if tonumber(cha) < tonumber(when) then
                    game.Players.LocalPlayer.Character.combat.update:FireServer("key","c")
                else
                    game.Players.LocalPlayer.Character.combat.update:FireServer("key","cend")
                end
            end
        end)
    end)
    g:Button("Disable InfMode",function()
        player.Character:BreakJoints()
    end)
end
if villageplace or game.PlaceId == trainingplace or game.PlaceId == rainplace or game.PlaceId == akatsukiplace or game.PlaceId == forestplace then
    local h = w:CreateFolder("Auto Chakra")
	h:Label("Setup when charge chakra (also max)",{
		TextSize = 16;
		TextColor = Color3.fromRGB(255,255,255); 
		BgColor = Color3.fromRGB(247, 95, 28);
	}) 
    local infchakra
    h:Toggle("Charge Chakra+Move",function(bool)
    	infchakra = bool
    end)
    local when = 100000
    h:Slider("When charge(NOT MAX)",{
        min = 30000; 
        max = 250000; 
        precise = false;
    },function(z)
        when = z
    end)    
    spawn(function()
        while wait() do
            if infchakra then
                local chakra = string.split(game.Players.LocalPlayer.PlayerGui.Main.ingamearena.Bar.cha.Text,"CHA: ")[2]
                c = chakra:gsub("CHA%:","")
                local cha
                local function chakracheck()
                    chakra = string.split(game.Players.LocalPlayer.PlayerGui.Main.ingamearena.Bar.cha.Text,"CHA: ")[2]
                    c = chakra:gsub("CHA%:","")
                    cha = c
                end
                spawn(function() 
                    while wait() do
                        if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 0 then
                            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
                        end
                        chakracheck()
                    end
                end)
                spawn(function() 
                    while wait() do
                        if tonumber(cha) < tonumber(when) then
                            game.Players.LocalPlayer.Character.combat.update:FireServer("key","c")
                        else
                            game.Players.LocalPlayer.Character.combat.update:FireServer("key","cend")
                        end
                    end
                end)
            end
        end
    end)
	h:Label("Dont use INFMODE and INFCHAKRA together",{
		TextSize = 15;
		TextColor = Color3.fromRGB(255,255,255); 
		BgColor = Color3.fromRGB(247, 95, 28);
	}) 
end
if warplace then
	--WAR
	local c = w:CreateFolder("War Farm")
	c:Label("Snipe is built-in",{
		TextSize = 24;
		TextColor = Color3.fromRGB(255,255,255); 
		BgColor = Color3.fromRGB(247, 95, 28);
	}) 
	local war 
	c:Toggle("WarMode No Tween",function(bool)
		war = bool
	end)
	local war2
	c:Toggle("WarMode Tween (multple players)",function(bool)
		war2 = bool
	end)

	c:Slider("Tween Speed",{
		min = 500; 
		max = 2500;
		precise = false;
		},function(speed)
		getgenv().speed = speed
	end)
	local reset
	c:Toggle("Reset after round 21",function(bool)
		reset = bool
	end)
	--Suggested by Moddi#2715
	local refresh = c:Label("ROUND COUNTER",{
		TextSize = 24;
		TextColor = Color3.fromRGB(255,255,255); 
		BgColor = Color3.fromRGB(247, 95, 28);
	}) 
	local count = 0
	local refreshC = c:Label("10TAILS COUNTER",{
		TextSize = 24;
		TextColor = Color3.fromRGB(255,255,255); 
		BgColor = Color3.fromRGB(247, 95, 28);
	}) 
	game:GetService('RunService').Stepped:connect(function()
		if war or war2 then
			pcall(function()
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end)
		end
	end)
	local function SCROLLFARM()
		for i,v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
			if v.ClassName == "Model" and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and v.sh.Position.Y < 2000 then
				local scrollA = v.sh:FindFirstChild("invoke")
				print("SCROLL SPAWNED")
				pcall(function()
					toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.sh.Position,CFrame.new(v.sh.Position))
				end)
				scrollA:FireServer(game.Players.LocalPlayer)
				fireclickdetector(v.sh.ClickDetector)
			end
		end
	end
	local function SCROLLFARM1()
		for i,v in pairs(game.workspace:GetChildren()) do
			if v.ClassName == "Model" and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and v.sh.Position.Y < 2000 then
				local scrollA = v.sh:FindFirstChild("invoke")
				print("SCROLL SPAWNED in workspace")
				pcall(function()
					toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.sh.Position,CFrame.new(v.sh.Position))
					scrollA:FireServer(game.Players.LocalPlayer)
					fireclickdetector(v.sh.ClickDetector)
				end)
			end
		end
	end
	spawn(function()
		while wait() do
			if war or war2 then
				repeat wait()
					SCROLLFARM()
					SCROLLFARM1()
				until not scrollfarm or not war or not war2
			end
		end
	end)
	spawn(function()
		while wait() do
			if war then
				pcall(function()
					refresh:Refresh("War Completed: " .. count)
					refreshC:Refresh("Round: " .. workspace.warserver.round.Value)
				end)
				for i,v in pairs(workspace.npc:GetChildren()) do
					if workspace.warserver:FindFirstChild("zetsu").Value > 0 and string.find(workspace.warserver.text.Value, "Left") or string.find(workspace.warserver.text.Value, "DEFEAT") and v.ClassName == "Model" and v:FindFirstChild("npc") and string.find(v.Name, "npc") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Head.CFrame.Y > -1000 and not v:FindFirstChild("megaboss") then
						wait(.2)
						pcall(function()
							v.Humanoid.Health = 0
						end)
					elseif v.ClassName == "Model" and v:FindFirstChild("npc") and string.find(v.Name, "npc") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Head.CFrame.Y > -1000 and v:FindFirstChild("megaboss") then
						wait(6)
						pcall(function()
							toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position))
							v.Humanoid.Health = 0
						end)
					end
				end
				if reset then
					for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
						if v.Name == "warserver" and v:FindFirstChild("round").Value > 20 then
							wait(5)
							player.Character:BreakJoints()
							repeat wait()
							until v.round.Value == 0
							count = count + 1
						end
					end
				end
			end
		end
	end)
	spawn(function()
		while wait() do
			if war2 then
				refresh:Refresh("War Completed: " .. count)
				refreshC:Refresh("Round: " .. workspace.warserver.round.Value)
				for i,v in pairs(workspace.npc:GetChildren()) do
					if workspace.warserver:FindFirstChild("zetsu").Value > 0 and string.find(workspace.warserver.text.Value, "Left") or string.find(workspace.warserver.text.Value, "DEFEAT") and v.ClassName == "Model" and v:FindFirstChild("npc") and string.find(v.Name, "npc") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Head.CFrame.Y > -1000 and not v:FindFirstChild("megaboss") then
						pcall(function()
							repeat wait()
							toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-12,0)))
							wait(.3)
							v.Humanoid.Health = 0
							until v.Humanoid.Health == 0
						end)
					elseif v.ClassName == "Model" and v:FindFirstChild("npc") and string.find(v.Name, "npc") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Head.CFrame.Y > -1000 and v:FindFirstChild("megaboss") then
						wait(8)
						pcall(function()
							toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-25,0)))
							v.Humanoid.Health = 0
						end)
					else
						wait()
					end
				end
				if reset then
					for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
						if v.Name == "warserver" and v:FindFirstChild("round").Value > 20 then
							wait(5)
							player.Character:BreakJoints()
							repeat wait()
							until v.round.Value == 0
							count = count + 1
						end
					end
				end
			end
		end
	end)
end
if game.PlaceId == menuplace then
	--main menu
	local e = w:CreateFolder("ResetSpins")
	local elements = {}
	for i,v in pairs(game:GetService("ReplicatedStorage").alljutsu:GetChildren()) do
		if v:FindFirstChild("element") then
			table.insert(elements, v.Name)
		end
	end
	e:Label("Select the element slot you want to change",{
		TextSize = 15;
		TextColor = Color3.fromRGB(255,255,255); 
		BgColor = Color3.fromRGB(247, 95, 28);
	}) 
	e:Label("Choose your elements and press SPIN element",{
		TextSize = 15;
		TextColor = Color3.fromRGB(255,255,255); 
		BgColor = Color3.fromRGB(247, 95, 28);
	}) 
	local b
	local elementslot
	local elementvalue
	e:Dropdown("Element SLOT",{"element1", "element2", "element3", "element4"},true,function(elementS)
		b = elementS
		elementslot = game.Players.LocalPlayer.statz.main:FindFirstChild(b)
		elementvalue = elementslot.Value
		print(elementslot)
		print(elementvalue)
	end)
	local a1
	e:Dropdown("water",elements,true,function(element1)
		print("Selected: " .. element1)
		a1 = element1
	end)
	local a2
	e:Dropdown("WHAT DO YOU WANT",elements,true,function(Element2)
		print("Selected: " .. element2)
		a2 = element2
	end)
	local a3
	e:Dropdown("WHAT DO YOU WANT",elements,true,function(element3)
		print("Selected: " .. element3)
		a3 = element3
	end)
	local a4
	e:Dropdown("WHAT DO YOU WANT",elements,true,function(element4)
		print("Selected: " .. element4)
		a4 = element4
	end)
	local a5
	e:Dropdown("WHAT DO YOU WANT",elements,true,function(element5)
		print("Selected: " .. element5)
		a5 = element5
	end)
	e:Button("Start Spin element",function()
		elementslot.ChildAdded:Connect(function(yes)
            if yes.Name == "dontspin" then
                wait(.1)
                yes:Destroy()
            end
        end)
		local spins = game.Players.LocalPlayer.statz.spins.Value
		local des = game.Players.LocalPlayer.statz.spins
        spawn(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").alljutsu:GetChildren()) do
            	if v:FindFirstChild("element") then
                    local a = Instance.new("StringValue")
                    a.Name = v.Name
                    a.Parent = game.Players.LocalPlayer.statz.genkailevel
            	end
            end
        end)
		spawn(function()
		    while wait() do
		        if spins > 0 then
            		spins = game.Players.LocalPlayer.statz.spins.Value
            		elementvalue = elementslot.Value
            		print("Rolled: " .. elementvalue)
            		if elementvalue ~= a1 and elementvalue ~= a2 and elementvalue ~= a3 and elementvalue ~= a4 and elementvalue ~= a5 then
            		    elementvalue = elementslot.Value
            			game.Players.LocalPlayer.startevent:FireServer("spin", b)
            			wait(.2)
            			elementvalue = elementslot.Value
            		else
            		    print("You have got: " .. elementvalue)
            		end
                else
                    player.statz.spins:Destroy()
                    game:GetService('TeleportService'):Teleport(game.PlaceId, player)
		        end
		    end
		end)
	end)
	e:Button("Reset Spin NOW",function()
        player.statz.spins:Destroy()
        game:GetService('TeleportService'):Teleport(game.PlaceId, player)	 
    end)
end
if game.PlaceId == worldxplace then
	--World X
	local village = player.yourvillage.Value
	local g = w:CreateFolder("World X")
    local side
    g:Toggle("F Rank - Side Quest",function(bool)
    	side = bool
    end)
    local nogrip
    g:Toggle("No Grip",function(bool)
    	nogrip = bool
    end)
    spawn(function()
        while wait() do
            if side then
                if player.currentmission.Value == nil then
                    for i,v in pairs(game:GetService("Workspace").sidequest.getmission:GetChildren()) do
                        if v.Name == "rankd" and v:FindFirstChild("village").Value == village and v:FindFirstChild("ClickDetector") then
                            --player.Character.HumanoidRootPart.CFrame=v.CFrame
                            v.invoke:FireServer()
                            fireclickdetector(v.ClickDetector)
                        end
                    end
                else
                    for i,v in pairs(game:GetService("Workspace").sidequest.weeds[village]:GetChildren()) do
                        if v.Name == "grass" and v:FindFirstChild("ClickDetector") and v:FindFirstChild("taken").Value == true then
                            fireclickdetector(v.ClickDetector)
                        end
                    end
                    for i,v in pairs(game:GetService("Workspace").sidequest.dirt[village]:GetChildren()) do
                        if v.Name == village and v:FindFirstChild("ClickDetector") and v:FindFirstChild("taken").Value == true then
                            fireclickdetector(v.ClickDetector)
                        end
                    end
                    for i,v in pairs(game:GetService("Workspace").sidequest.grafitti[village]:GetChildren()) do
                        if v.Name == village and v:FindFirstChild("taken").Value == true and v:FindFirstChild("ClickDetector") then
                            fireclickdetector(v.ClickDetector)
                        end
                    end
                    for i,v in pairs(game:GetService("Workspace").sidequest.groceries[village]:GetChildren()) do
                        if v.Name == village and v:FindFirstChild("taken").Value == true then
                            player.Character.HumanoidRootPart.CFrame=v.CFrame
                        end
                    end
                    for i,v in pairs(game:GetService("Workspace").sidequest.deliver:GetChildren()) do
                        if v.Name == "point" and v:FindFirstChild("taken").Value == true then
                            player.Character.HumanoidRootPart.CFrame=v.CFrame
                        end
                    end
                end
            end
        end
    end)
    spawn(function()
        while wait() do
            if nogrip then
                while player.Character.Humanoid.WalkSpeed == 0 do
                    player.Character.Humanoid.WalkSpeed = 200
                end
            end
        end
    end)
end

local f = w:CreateFolder("Misc")
f:Box("Teleport to PS","string",function(tpps)
    game.Players.LocalPlayer.startevent:FireServer("teleporttoprivate", tpps)
end)
f:Label("made by reav#2966 | ver 4.2",{
    TextSize = 15;
    TextColor = Color3.fromRGB(255,255,255); 
    BgColor = Color3.fromRGB(247, 95, 28);
}) 
f:Label("https://discord.gg/aDRStgw",{
    TextSize = 17;
    TextColor = Color3.fromRGB(255,255,255); 
    BgColor = Color3.fromRGB(247, 95, 28); 
}) 
f:Button("Copy Discord Link",function()
    setclipboard("https://discord.gg/aDRStgw")
end)
