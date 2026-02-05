do 
	local _G = (getfenv and getfenv()) or _ENV or _G
	local __services = {
		Players = game:GetService("Players"),
		UIS = game:GetService("UserInputService"),
		RunService = game:GetService("RunService"),
		Workspace = game:GetService("Workspace"),
		TweenService = game:GetService("TweenService")
	}

	local __player = __services.Players.LocalPlayer
	local __playerGui = __player:WaitForChild("PlayerGui")

	if not __player.Character then
		__player.CharacterAdded:Wait()
	end

	local __screenGui = Instance.new("ScreenGui")
	__screenGui.Name = "NoverFlyUI"
	__screenGui.Parent = __playerGui
	__screenGui.ResetOnSpawn = false
	__screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local __main = Instance.new("Frame")
	__main.Size = UDim2.new(0, 200, 0, 310)
	__main.Position = UDim2.new(1, -220, 0.5, -155)
	__main.BackgroundColor3 = Color3.fromRGB(18, 18, 25)
	__main.BorderSizePixel = 0
	__main.ClipsDescendants = true

	local __mainCorner = Instance.new("UICorner")
	__mainCorner.CornerRadius = UDim.new(0, 12)
	__mainCorner.Parent = __main

	local __mainStroke = Instance.new("UIStroke")
	__mainStroke.Color = Color3.fromRGB(60, 60, 80)
	__mainStroke.Thickness = 1
	__mainStroke.Transparency = 0.5
	__mainStroke.Parent = __main

	local __neonBar = Instance.new("Frame")
	__neonBar.Size = UDim2.new(1, 0, 0, 3)
	__neonBar.Position = UDim2.new(0, 0, 0, 0)
	__neonBar.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
	__neonBar.BorderSizePixel = 0
	__neonBar.Parent = __main

	local __neonGradient = Instance.new("UIGradient")
	__neonGradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 43, 226)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(75, 0, 130)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(138, 43, 226))
	}
	__neonGradient.Parent = __neonBar

	task.spawn(function()
		while __main.Parent do
			for i = 0, 360, 2 do
				if not __main.Parent then break end
				__neonGradient.Rotation = i
				task.wait(0.03)
			end
		end
	end)

	local __header = Instance.new("Frame")
	__header.Size = UDim2.new(1, 0, 0, 45)
	__header.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
	__header.BorderSizePixel = 0
	__header.Parent = __main

	local __headerCorner = Instance.new("UICorner")
	__headerCorner.CornerRadius = UDim.new(0, 12)
	__headerCorner.Parent = __header

	local __headerCover = Instance.new("Frame")
	__headerCover.Size = UDim2.new(1, 0, 0, 12)
	__headerCover.Position = UDim2.new(0, 0, 1, -12)
	__headerCover.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
	__headerCover.BorderSizePixel = 0
	__headerCover.Parent = __header

	local __icon = Instance.new("TextLabel")
	__icon.Size = UDim2.new(0, 30, 0, 30)
	__icon.Position = UDim2.new(0, 10, 0, 8)
	__icon.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
	__icon.Text = "✈️"
	__icon.TextSize = 18
	__icon.Font = Enum.Font.GothamBold
	__icon.BorderSizePixel = 0
	__icon.Parent = __header

	local __iconCorner = Instance.new("UICorner")
	__iconCorner.CornerRadius = UDim.new(0, 8)
	__iconCorner.Parent = __icon

	local __title = Instance.new("TextLabel")
	__title.Size = UDim2.new(1, -110, 0, 20)
	__title.Position = UDim2.new(0, 45, 0, 8)
	__title.BackgroundTransparency = 1
	__title.Text = "NOVER FLY"
	__title.TextColor3 = Color3.fromRGB(220, 220, 240)
	__title.TextSize = 16
	__title.Font = Enum.Font.GothamBold
	__title.TextXAlignment = Enum.TextXAlignment.Left
	__title.Parent = __header

	local __subtitle = Instance.new("TextLabel")
	__subtitle.Size = UDim2.new(1, -110, 0, 15)
	__subtitle.Position = UDim2.new(0, 45, 0, 25)
	__title.BackgroundTransparency = 1
	__subtitle.BackgroundTransparency = 1
	__subtitle.Text = "Flight System v2.0"
	__subtitle.TextColor3 = Color3.fromRGB(130, 130, 160)
	__subtitle.TextSize = 10
	__subtitle.Font = Enum.Font.Gotham
	__subtitle.TextXAlignment = Enum.TextXAlignment.Left
	__subtitle.Parent = __header

	local __minimize = Instance.new("TextButton")
	__minimize.Size = UDim2.new(0, 28, 0, 28)
	__minimize.Position = UDim2.new(1, -65, 0, 8)
	__minimize.BackgroundColor3 = Color3.fromRGB(255, 193, 7)
	__minimize.Text = "─"
	__minimize.TextColor3 = Color3.fromRGB(30, 30, 30)
	__minimize.TextSize = 14
	__minimize.Font = Enum.Font.GothamBold
	__minimize.BorderSizePixel = 0
	__minimize.Parent = __header

	local __minimizeCorner = Instance.new("UICorner")
	__minimizeCorner.CornerRadius = UDim.new(1, 0)
	__minimizeCorner.Parent = __minimize

	local __close = Instance.new("TextButton")
	__close.Size = UDim2.new(0, 28, 0, 28)
	__close.Position = UDim2.new(1, -32, 0, 8)
	__close.BackgroundColor3 = Color3.fromRGB(244, 67, 54)
	__close.Text = "×"
	__close.TextColor3 = Color3.new(1, 1, 1)
	__close.TextSize = 20
	__close.Font = Enum.Font.GothamBold
	__close.BorderSizePixel = 0
	__close.Parent = __header

	local __closeCorner = Instance.new("UICorner")
	__closeCorner.CornerRadius = UDim.new(1, 0)
	__closeCorner.Parent = __close

	__minimize.MouseEnter:Connect(function()
		__services.TweenService:Create(__minimize, TweenInfo.new(0.2), {
			BackgroundColor3 = Color3.fromRGB(255, 220, 50)
		}):Play()
	end)

	__minimize.MouseLeave:Connect(function()
		__services.TweenService:Create(__minimize, TweenInfo.new(0.2), {
			BackgroundColor3 = Color3.fromRGB(255, 193, 7)
		}):Play()
	end)

	__close.MouseEnter:Connect(function()
		__services.TweenService:Create(__close, TweenInfo.new(0.2), {
			BackgroundColor3 = Color3.fromRGB(255, 100, 90)
		}):Play()
	end)

	__close.MouseLeave:Connect(function()
		__services.TweenService:Create(__close, TweenInfo.new(0.2), {
			BackgroundColor3 = Color3.fromRGB(244, 67, 54)
		}):Play()
	end)

	__close.MouseButton1Click:Connect(function()
		__services.TweenService:Create(__main, TweenInfo.new(0.3), {
			Size = UDim2.new(0, 0, 0, 0)
		}):Play()
		task.wait(0.3)
		__screenGui:Destroy()
	end)

	local __content = Instance.new("Frame")
	__content.Size = UDim2.new(1, -20, 1, -60)
	__content.Position = UDim2.new(0, 10, 0, 50)
	__content.BackgroundTransparency = 1
	__content.Parent = __main

	local __flyCard = Instance.new("Frame")
	__flyCard.Size = UDim2.new(1, 0, 0, 80)
	__flyCard.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
	__flyCard.BorderSizePixel = 0
	__flyCard.Parent = __content

	local __flyCardCorner = Instance.new("UICorner")
	__flyCardCorner.CornerRadius = UDim.new(0, 10)
	__flyCardCorner.Parent = __flyCard

	local __flyCardStroke = Instance.new("UIStroke")
	__flyCardStroke.Color = Color3.fromRGB(138, 43, 226)
	__flyCardStroke.Thickness = 1.5
	__flyCardStroke.Transparency = 0.7
	__flyCardStroke.Parent = __flyCard

	local __flyEmoji = Instance.new("TextLabel")
	__flyEmoji.Size = UDim2.new(0, 35, 0, 35)
	__flyEmoji.Position = UDim2.new(0, 8, 0, 8)
	__flyEmoji.BackgroundTransparency = 1
	__flyEmoji.Text = "🚀"
	__flyEmoji.TextSize = 24
	__flyEmoji.Parent = __flyCard

	local __flyLabel = Instance.new("TextLabel")
	__flyLabel.Size = UDim2.new(1, -100, 0, 20)
	__flyLabel.Position = UDim2.new(0, 48, 0, 6)
	__flyLabel.BackgroundTransparency = 1
	__flyLabel.Text = "Flight Mode"
	__flyLabel.TextColor3 = Color3.fromRGB(200, 200, 220)
	__flyLabel.TextSize = 13
	__flyLabel.Font = Enum.Font.GothamBold
	__flyLabel.TextXAlignment = Enum.TextXAlignment.Left
	__flyLabel.Parent = __flyCard

	local __flyStatus = Instance.new("TextLabel")
	__flyStatus.Size = UDim2.new(1, -100, 0, 18)
	__flyStatus.Position = UDim2.new(0, 48, 0, 24)
	__flyStatus.BackgroundTransparency = 1
	__flyStatus.Text = "Disabled"
	__flyStatus.TextColor3 = Color3.fromRGB(255, 100, 100)
	__flyStatus.TextSize = 10
	__flyStatus.Font = Enum.Font.Gotham
	__flyStatus.TextXAlignment = Enum.TextXAlignment.Left
	__flyStatus.Parent = __flyCard

	local __flySwitch = Instance.new("Frame")
	__flySwitch.Size = UDim2.new(0, 45, 0, 24)
	__flySwitch.Position = UDim2.new(1, -53, 0, 8)
	__flySwitch.BackgroundColor3 = Color3.fromRGB(50, 50, 65)
	__flySwitch.BorderSizePixel = 0
	__flySwitch.Parent = __flyCard

	local __flySwitchCorner = Instance.new("UICorner")
	__flySwitchCorner.CornerRadius = UDim.new(1, 0)
	__flySwitchCorner.Parent = __flySwitch

	local __flyKnob = Instance.new("Frame")
	__flyKnob.Size = UDim2.new(0, 18, 0, 18)
	__flyKnob.Position = UDim2.new(0, 3, 0, 3)
	__flyKnob.BackgroundColor3 = Color3.fromRGB(180, 180, 200)
	__flyKnob.BorderSizePixel = 0
	__flyKnob.Parent = __flySwitch

	local __flyKnobCorner = Instance.new("UICorner")
	__flyKnobCorner.CornerRadius = UDim.new(1, 0)
	__flyKnobCorner.Parent = __flyKnob

	local __flySwitchBtn = Instance.new("TextButton")
	__flySwitchBtn.Size = UDim2.new(1, 0, 1, 0)
	__flySwitchBtn.BackgroundTransparency = 1
	__flySwitchBtn.Text = ""
	__flySwitchBtn.Parent = __flySwitch

	local __flySpeedBox = Instance.new("TextBox")
	__flySpeedBox.Size = UDim2.new(1, -16, 0, 22)
	__flySpeedBox.Position = UDim2.new(0, 8, 0, 50)
	__flySpeedBox.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
	__flySpeedBox.Text = "50"
	__flySpeedBox.TextColor3 = Color3.fromRGB(200, 150, 255)
	__flySpeedBox.TextSize = 13
	__flySpeedBox.Font = Enum.Font.GothamBold
	__flySpeedBox.PlaceholderText = "Flight Speed"
	__flySpeedBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 130)
	__flySpeedBox.BorderSizePixel = 0
	__flySpeedBox.Parent = __flyCard

	local __flySpeedBoxCorner = Instance.new("UICorner")
	__flySpeedBoxCorner.CornerRadius = UDim.new(0, 6)
	__flySpeedBoxCorner.Parent = __flySpeedBox

	local __speedCard = Instance.new("Frame")
	__speedCard.Size = UDim2.new(1, 0, 0, 80)
	__speedCard.Position = UDim2.new(0, 0, 0, 90)
	__speedCard.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
	__speedCard.BorderSizePixel = 0
	__speedCard.Parent = __content

	local __speedCardCorner = Instance.new("UICorner")
	__speedCardCorner.CornerRadius = UDim.new(0, 10)
	__speedCardCorner.Parent = __speedCard

	local __speedCardStroke = Instance.new("UIStroke")
	__speedCardStroke.Color = Color3.fromRGB(255, 193, 7)
	__speedCardStroke.Thickness = 1.5
	__speedCardStroke.Transparency = 0.7
	__speedCardStroke.Parent = __speedCard

	local __speedEmoji = Instance.new("TextLabel")
	__speedEmoji.Size = UDim2.new(0, 35, 0, 35)
	__speedEmoji.Position = UDim2.new(0, 8, 0, 8)
	__speedEmoji.BackgroundTransparency = 1
	__speedEmoji.Text = "⚡"
	__speedEmoji.TextSize = 24
	__speedEmoji.Parent = __speedCard

	local __speedLabel = Instance.new("TextLabel")
	__speedLabel.Size = UDim2.new(1, -100, 0, 20)
	__speedLabel.Position = UDim2.new(0, 48, 0, 6)
	__speedLabel.BackgroundTransparency = 1
	__speedLabel.Text = "Player Speed"
	__speedLabel.TextColor3 = Color3.fromRGB(200, 200, 220)
	__speedLabel.TextSize = 13
	__speedLabel.Font = Enum.Font.GothamBold
	__speedLabel.TextXAlignment = Enum.TextXAlignment.Left
	__speedLabel.Parent = __speedCard

	local __speedStatus = Instance.new("TextLabel")
	__speedStatus.Size = UDim2.new(1, -100, 0, 18)
	__speedStatus.Position = UDim2.new(0, 48, 0, 24)
	__speedStatus.BackgroundTransparency = 1
	__speedStatus.Text = "Disabled"
	__speedStatus.TextColor3 = Color3.fromRGB(255, 100, 100)
	__speedStatus.TextSize = 10
	__speedStatus.Font = Enum.Font.Gotham
	__speedStatus.TextXAlignment = Enum.TextXAlignment.Left
	__speedStatus.Parent = __speedCard

	local __speedSwitch = Instance.new("Frame")
	__speedSwitch.Size = UDim2.new(0, 45, 0, 24)
	__speedSwitch.Position = UDim2.new(1, -53, 0, 8)
	__speedSwitch.BackgroundColor3 = Color3.fromRGB(50, 50, 65)
	__speedSwitch.BorderSizePixel = 0
	__speedSwitch.Parent = __speedCard

	local __speedSwitchCorner = Instance.new("UICorner")
	__speedSwitchCorner.CornerRadius = UDim.new(1, 0)
	__speedSwitchCorner.Parent = __speedSwitch

	local __speedKnob = Instance.new("Frame")
	__speedKnob.Size = UDim2.new(0, 18, 0, 18)
	__speedKnob.Position = UDim2.new(0, 3, 0, 3)
	__speedKnob.BackgroundColor3 = Color3.fromRGB(180, 180, 200)
	__speedKnob.BorderSizePixel = 0
	__speedKnob.Parent = __speedSwitch

	local __speedKnobCorner = Instance.new("UICorner")
	__speedKnobCorner.CornerRadius = UDim.new(1, 0)
	__speedKnobCorner.Parent = __speedKnob

	local __speedSwitchBtn = Instance.new("TextButton")
	__speedSwitchBtn.Size = UDim2.new(1, 0, 1, 0)
	__speedSwitchBtn.BackgroundTransparency = 1
	__speedSwitchBtn.Text = ""
	__speedSwitchBtn.Parent = __speedSwitch

	local __playerSpeedBox = Instance.new("TextBox")
	__playerSpeedBox.Size = UDim2.new(1, -16, 0, 22)
	__playerSpeedBox.Position = UDim2.new(0, 8, 0, 50)
	__playerSpeedBox.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
	__playerSpeedBox.Text = "16"
	__playerSpeedBox.TextColor3 = Color3.fromRGB(255, 220, 100)
	__playerSpeedBox.TextSize = 13
	__playerSpeedBox.Font = Enum.Font.GothamBold
	__playerSpeedBox.PlaceholderText = "Walk Speed"
	__playerSpeedBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 130)
	__playerSpeedBox.BorderSizePixel = 0
	__playerSpeedBox.Parent = __speedCard

	local __playerSpeedBoxCorner = Instance.new("UICorner")
	__playerSpeedBoxCorner.CornerRadius = UDim.new(0, 6)
	__playerSpeedBoxCorner.Parent = __playerSpeedBox

	local __noclipCard = Instance.new("Frame")
	__noclipCard.Size = UDim2.new(1, 0, 0, 55)
	__noclipCard.Position = UDim2.new(0, 0, 0, 180)
	__noclipCard.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
	__noclipCard.BorderSizePixel = 0
	__noclipCard.Parent = __content

	local __noclipCardCorner = Instance.new("UICorner")
	__noclipCardCorner.CornerRadius = UDim.new(0, 10)
	__noclipCardCorner.Parent = __noclipCard

	local __noclipCardStroke = Instance.new("UIStroke")
	__noclipCardStroke.Color = Color3.fromRGB(76, 175, 80)
	__noclipCardStroke.Thickness = 1.5
	__noclipCardStroke.Transparency = 0.7
	__noclipCardStroke.Parent = __noclipCard

	local __noclipEmoji = Instance.new("TextLabel")
	__noclipEmoji.Size = UDim2.new(0, 35, 0, 35)
	__noclipEmoji.Position = UDim2.new(0, 8, 0, 10)
	__noclipEmoji.BackgroundTransparency = 1
	__noclipEmoji.Text = "👻"
	__noclipEmoji.TextSize = 24
	__noclipEmoji.Parent = __noclipCard

	local __noclipLabel = Instance.new("TextLabel")
	__noclipLabel.Size = UDim2.new(1, -100, 0, 20)
	__noclipLabel.Position = UDim2.new(0, 48, 0, 8)
	__noclipLabel.BackgroundTransparency = 1
	__noclipLabel.Text = "Noclip Mode"
	__noclipLabel.TextColor3 = Color3.fromRGB(200, 200, 220)
	__noclipLabel.TextSize = 13
	__noclipLabel.Font = Enum.Font.GothamBold
	__noclipLabel.TextXAlignment = Enum.TextXAlignment.Left
	__noclipLabel.Parent = __noclipCard

	local __noclipStatus = Instance.new("TextLabel")
	__noclipStatus.Size = UDim2.new(1, -100, 0, 18)
	__noclipStatus.Position = UDim2.new(0, 48, 0, 30)
	__noclipStatus.BackgroundTransparency = 1
	__noclipStatus.Text = "Disabled"
	__noclipStatus.TextColor3 = Color3.fromRGB(255, 100, 100)
	__noclipStatus.TextSize = 10
	__noclipStatus.Font = Enum.Font.Gotham
	__noclipStatus.TextXAlignment = Enum.TextXAlignment.Left
	__noclipStatus.Parent = __noclipCard

	local __noclipSwitch = Instance.new("Frame")
	__noclipSwitch.Size = UDim2.new(0, 45, 0, 24)
	__noclipSwitch.Position = UDim2.new(1, -53, 0.5, -12)
	__noclipSwitch.BackgroundColor3 = Color3.fromRGB(50, 50, 65)
	__noclipSwitch.BorderSizePixel = 0
	__noclipSwitch.Parent = __noclipCard

	local __noclipSwitchCorner = Instance.new("UICorner")
	__noclipSwitchCorner.CornerRadius = UDim.new(1, 0)
	__noclipSwitchCorner.Parent = __noclipSwitch

	local __noclipKnob = Instance.new("Frame")
	__noclipKnob.Size = UDim2.new(0, 18, 0, 18)
	__noclipKnob.Position = UDim2.new(0, 3, 0, 3)
	__noclipKnob.BackgroundColor3 = Color3.fromRGB(180, 180, 200)
	__noclipKnob.BorderSizePixel = 0
	__noclipKnob.Parent = __noclipSwitch

	local __noclipKnobCorner = Instance.new("UICorner")
	__noclipKnobCorner.CornerRadius = UDim.new(1, 0)
	__noclipKnobCorner.Parent = __noclipKnob

	local __noclipSwitchBtn = Instance.new("TextButton")
	__noclipSwitchBtn.Size = UDim2.new(1, 0, 1, 0)
	__noclipSwitchBtn.BackgroundTransparency = 1
	__noclipSwitchBtn.Text = ""
	__noclipSwitchBtn.Parent = __noclipSwitch

	local __flyState = false
	local __noclipState = false
	local __speedState = false
	local __flySpeedValue = 50
	local __playerSpeedValue = 16
	local __flyLoop = nil
	local __noclipLoop = nil
	local __isMinimized = false

	__minimize.MouseButton1Click:Connect(function()
		__isMinimized = not __isMinimized

		local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

		if __isMinimized then
			__content.Visible = false
			__services.TweenService:Create(__main, tweenInfo, {
				Size = UDim2.new(0, 200, 0, 45)
			}):Play()
		else
			__services.TweenService:Create(__main, tweenInfo, {
				Size = UDim2.new(0, 200, 0, 310)
			}):Play()
			task.wait(0.2)
			__content.Visible = true
		end
	end)

	__flySpeedBox:GetPropertyChangedSignal("Text"):Connect(function()
		local __text = __flySpeedBox.Text
		if __text == "" then return end
		local __num = tonumber(__text)
		if __num and __num >= 1 then
			__flySpeedValue = math.min(__num, 10000)
		end
	end)

	-- التعديل الرئيسي: تحديث السرعة مباشرة عند تغيير النص
	__playerSpeedBox:GetPropertyChangedSignal("Text"):Connect(function()
		local __text = __playerSpeedBox.Text
		if __text == "" then return end
		local __num = tonumber(__text)
		if __num and __num >= 0 then
			__playerSpeedValue = math.min(__num, 500)
			
			-- تحديث السرعة مباشرة إذا كانت الميزة مفعلة
			if __speedState then
				local __char = __player.Character
				if __char then
					local __hum = __char:FindFirstChildOfClass("Humanoid")
					if __hum then
						__hum.WalkSpeed = __playerSpeedValue
					end
				end
			end
		end
	end)

	local function __toggleFlight()
		if __flyState then
			__flyState = false
			__flyStatus.Text = "Disabled"
			__flyStatus.TextColor3 = Color3.fromRGB(255, 100, 100)

			__services.TweenService:Create(__flyKnob, TweenInfo.new(0.2), {
				Position = UDim2.new(0, 3, 0, 3)
			}):Play()

			__services.TweenService:Create(__flySwitch, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.fromRGB(50, 50, 65)
			}):Play()

			__services.TweenService:Create(__flyKnob, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.fromRGB(180, 180, 200)
			}):Play()

			if __flyLoop then
				__flyLoop:Disconnect()
				__flyLoop = nil
			end

			local __char = __player.Character
			if __char then
				local __hum = __char:FindFirstChildOfClass("Humanoid")
				if __hum then
					__hum.PlatformStand = false
				end

				local __root = __char:FindFirstChild("HumanoidRootPart") or __char.PrimaryPart
				if __root then
					for _, __obj in pairs(__root:GetChildren()) do
						if __obj:IsA("BodyVelocity") or __obj:IsA("BodyGyro") then
							__obj:Destroy()
						end
					end
				end
			end
		else
			local __num = tonumber(__flySpeedBox.Text)
			if __num and __num >= 1 then
				__flySpeedValue = math.min(__num, 10000)
			end

			local __char = __player.Character
			if not __char then return end

			local __root = __char:FindFirstChild("HumanoidRootPart") or __char.PrimaryPart
			if not __root then return end

			__flyState = true
			__flyStatus.Text = "Enabled"
			__flyStatus.TextColor3 = Color3.fromRGB(100, 255, 150)

			__services.TweenService:Create(__flyKnob, TweenInfo.new(0.2), {
				Position = UDim2.new(1, -21, 0, 3)
			}):Play()

			__services.TweenService:Create(__flySwitch, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.fromRGB(138, 43, 226)
			}):Play()

			__services.TweenService:Create(__flyKnob, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.new(1, 1, 1)
			}):Play()

			local __hum = __char:FindFirstChildOfClass("Humanoid")
			if __hum then
				__hum.PlatformStand = true
			end

			local __bodyVel = Instance.new("BodyVelocity")
			__bodyVel.Velocity = Vector3.new(0, 0, 0)
			__bodyVel.MaxForce = Vector3.new(40000, 40000, 40000)
			__bodyVel.P = 1250
			__bodyVel.Parent = __root

			local __bodyGyro = Instance.new("BodyGyro")
			__bodyGyro.MaxTorque = Vector3.new(40000, 40000, 40000)
			__bodyGyro.CFrame = __root.CFrame
			__bodyGyro.P = 1000
			__bodyGyro.D = 50
			__bodyGyro.Parent = __root

			__flyLoop = __services.RunService.RenderStepped:Connect(function()
				if not __flyState or not __char or not __root then return end

				local __cam = __services.Workspace.CurrentCamera
				local __look = __cam.CFrame.LookVector
				local __right = __cam.CFrame.RightVector
				local __move = Vector3.new(0, 0, 0)

				if __services.UIS:IsKeyDown(Enum.KeyCode.W) then
					__move = __move + __look
				end
				if __services.UIS:IsKeyDown(Enum.KeyCode.S) then
					__move = __move - __look
				end
				if __services.UIS:IsKeyDown(Enum.KeyCode.A) then
					__move = __move - __right
				end
				if __services.UIS:IsKeyDown(Enum.KeyCode.D) then
					__move = __move + __right
				end
				if __services.UIS:IsKeyDown(Enum.KeyCode.Space) then
					__move = __move + Vector3.new(0, 1, 0)
				end
				if __services.UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
					__move = __move + Vector3.new(0, -1, 0)
				end

				if __move.Magnitude > 0 then
					__move = __move.Unit * __flySpeedValue
					__bodyVel.Velocity = __move
				else
					__bodyVel.Velocity = Vector3.new(0, 0, 0)
				end

				__bodyGyro.CFrame = CFrame.new(__root.Position, __root.Position + __look)
			end)
		end
	end

	local function __togglePlayerSpeed()
		if __speedState then
			__speedState = false
			__speedStatus.Text = "Disabled"
			__speedStatus.TextColor3 = Color3.fromRGB(255, 100, 100)

			__services.TweenService:Create(__speedKnob, TweenInfo.new(0.2), {
				Position = UDim2.new(0, 3, 0, 3)
			}):Play()

			__services.TweenService:Create(__speedSwitch, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.fromRGB(50, 50, 65)
			}):Play()

			__services.TweenService:Create(__speedKnob, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.fromRGB(180, 180, 200)
			}):Play()

			local __char = __player.Character
			if __char then
				local __hum = __char:FindFirstChildOfClass("Humanoid")
				if __hum then
					__hum.WalkSpeed = 16
				end
			end
		else
			local __num = tonumber(__playerSpeedBox.Text)
			if __num and __num >= 0 then
				__playerSpeedValue = math.min(__num, 500)
			end

			__speedState = true
			__speedStatus.Text = "Enabled"
			__speedStatus.TextColor3 = Color3.fromRGB(100, 255, 150)

			__services.TweenService:Create(__speedKnob, TweenInfo.new(0.2), {
				Position = UDim2.new(1, -21, 0, 3)
			}):Play()

			__services.TweenService:Create(__speedSwitch, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.fromRGB(255, 193, 7)
			}):Play()

			__services.TweenService:Create(__speedKnob, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.new(1, 1, 1)
			}):Play()

			local __char = __player.Character
			if __char then
				local __hum = __char:FindFirstChildOfClass("Humanoid")
				if __hum then
					__hum.WalkSpeed = __playerSpeedValue
				end
			end
		end
	end

	local function __toggleNoclip()
		if __noclipState then
			__noclipState = false
			__noclipStatus.Text = "Disabled"
			__noclipStatus.TextColor3 = Color3.fromRGB(255, 100, 100)

			__services.TweenService:Create(__noclipKnob, TweenInfo.new(0.2), {
				Position = UDim2.new(0, 3, 0, 3)
			}):Play()

			__services.TweenService:Create(__noclipSwitch, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.fromRGB(50, 50, 65)
			}):Play()

			__services.TweenService:Create(__noclipKnob, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.fromRGB(180, 180, 200)
			}):Play()

			if __noclipLoop then
				__noclipLoop:Disconnect()
				__noclipLoop = nil
			end

			local __char = __player.Character
			if __char then
				for _, __part in pairs(__char:GetDescendants()) do
					if __part:IsA("BasePart") then
						__part.CanCollide = true
					end
				end
			end
		else
			__noclipState = true
			__noclipStatus.Text = "Enabled"
			__noclipStatus.TextColor3 = Color3.fromRGB(100, 255, 150)

			__services.TweenService:Create(__noclipKnob, TweenInfo.new(0.2), {
				Position = UDim2.new(1, -21, 0, 3)
			}):Play()

			__services.TweenService:Create(__noclipSwitch, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.fromRGB(76, 175, 80)
			}):Play()

			__services.TweenService:Create(__noclipKnob, TweenInfo.new(0.2), {
				BackgroundColor3 = Color3.new(1, 1, 1)
			}):Play()

			__noclipLoop = __services.RunService.Stepped:Connect(function()
				if not __noclipState then return end

				local __char = __player.Character
				if __char then
					for _, __part in pairs(__char:GetDescendants()) do
						if __part:IsA("BasePart") then
							__part.CanCollide = false
						end
					end
				end
			end)
		end
	end

	__flySwitchBtn.MouseButton1Click:Connect(__toggleFlight)
	__speedSwitchBtn.MouseButton1Click:Connect(__togglePlayerSpeed)
	__noclipSwitchBtn.MouseButton1Click:Connect(__toggleNoclip)

	local __dragging = false
	local __dragStart, __startPos

	__header.InputBegan:Connect(function(__input)
		if __input.UserInputType == Enum.UserInputType.MouseButton1 then
			__dragging = true
			__dragStart = __input.Position
			__startPos = __main.Position
		end
	end)

	__services.UIS.InputChanged:Connect(function(__input)
		if __dragging and __input.UserInputType == Enum.UserInputType.MouseMovement then
			local __delta = __input.Position - __dragStart
			__main.Position = UDim2.new(
				__startPos.X.Scale,
				__startPos.X.Offset + __delta.X,
				__startPos.Y.Scale,
				__startPos.Y.Offset + __delta.Y
			)
		end
	end)

	__services.UIS.InputEnded:Connect(function(__input)
		if __input.UserInputType == Enum.UserInputType.MouseButton1 then
			__dragging = false
		end
	end)

	__main.Parent = __screenGui

	__main.Size = UDim2.new(0, 0, 0, 0)
	__services.TweenService:Create(__main, TweenInfo.new(0.5, Enum.EasingStyle.Back), {
		Size = UDim2.new(0, 200, 0, 310)
	}):Play()
end
