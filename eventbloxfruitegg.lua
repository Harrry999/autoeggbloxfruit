
if getgenv().leehub_egg_v1 then warn("Lee Hub loadingg..!") return end
getgenv().leehub_egg_v1 = true

local player = game.Players.LocalPlayer
local workspace = game:GetService("Workspace")
local ts = game:GetService("TweenService")
local runService = game:GetService("RunService")
local coreGui = game:GetService("CoreGui")

if coreGui:FindFirstChild("LeeHub_Exclusive") then coreGui.LeeHub_Exclusive:Destroy() end

_G.AutoEgg = false
_G.ESP_Egg = false


local placeId = game.PlaceId
local customIslands = {}
local currentSeaName = "ERROR"

if placeId == 2753915549 then
    currentSeaName = "SEA 1"
    customIslands = {
        Vector3.new(-2956, 191, 2262), Vector3.new(-2831, 191, 1856), Vector3.new(-2606, 157, 1876),
        Vector3.new(-2724, 157, 2360), Vector3.new(-1219, 162, 395), Vector3.new(-1627, 172, 454),
        Vector3.new(-1901, 162, -26), Vector3.new(-1606, 162, -222), Vector3.new(-1567, 165, 142),
        Vector3.new(-1138, 162, -344), Vector3.new(-1080, 160, -570), Vector3.new(-1319, 169, -545),
        Vector3.new(-891, 166, 4371), Vector3.new(-1145, 173, 4340), Vector3.new(-1472, 170, 4243),
        Vector3.new(-1278, 155, 3900), Vector3.new(-1144, 155, 3924), Vector3.new(-932, 164, 4010),
        Vector3.new(-957, 164, 3883), Vector3.new(-1251, 195, 3817), Vector3.new(61348, 192, 1148),
        Vector3.new(61571, 180, 1358), Vector3.new(61787, 168, 1648), Vector3.new(61985, 169, 1429),
        Vector3.new(61819, 168, 1240), Vector3.new(60927, 174, 1579), Vector3.new(60993, 168, 1088),
        Vector3.new(-2041, 157, -2776), Vector3.new(-1516, 169, -2884), Vector3.new(-1339, 157, -3059),
        Vector3.new(-1269, 163, -3369), Vector3.new(-1455, 166, -3631), Vector3.new(-485, 158, 1497),
        Vector3.new(-614, 166, 1825), Vector3.new(-858, 158, 1913), Vector3.new(-1129, 159, 1866),
        Vector3.new(-1224, 159, 1571), Vector3.new(-1006, 158, 1359), Vector3.new(5315, 227, 4238),
        Vector3.new(5221, 202, 4508), Vector3.new(5488, 209, 4819), Vector3.new(5842, 207, 4799),
        Vector3.new(6024, 214, 4498), Vector3.new(5925, 211, 4169), Vector3.new(5602, 206, 4036),
        Vector3.new(5303, 210, 4219), Vector3.new(5256, 209, 4574), Vector3.new(5487, 209, 4819),
        Vector3.new(5834, 211, 4792), Vector3.new(6031, 212, 4489), Vector3.new(5925, 210, 4165),
        Vector3.new(5595, 208, 4040), Vector3.new(6203, 157, 3944), Vector3.new(-7768, 5757, -2403),
        Vector3.new(-7591, 5790, -1931), Vector3.new(-7619, 5757, -1384), Vector3.new(-7892, 5695, -769),
        Vector3.new(-7676, 5695, -511), Vector3.new(-4592, 1018, -1701), Vector3.new(-4597, 995, -1684),
        Vector3.new(-4620, 995, -1683), Vector3.new(-4720, 1000, -1956), Vector3.new(1037, 156, 4252),
        Vector3.new(786, 156, 4342), Vector3.new(880, 156, 4516), Vector3.new(1081, 170, 4558),
        Vector3.new(1592, 154, 4392), Vector3.new(-4914, 888, -2576), Vector3.new(-4631, 868, -2479),
        Vector3.new(-5241, 540, -2212), Vector3.new(-4925, 152, -2441), Vector3.new(-4781, 152, -2242),
        Vector3.new(-4685, 154, -2566), Vector3.new(836, 157, 1417), Vector3.new(1091, 156, 1178),
        Vector3.new(1354, 166, 1476), Vector3.new(1113, 166, 1629), Vector3.new(-5392, 158, 8352),
        Vector3.new(-5705, 158, 8416), Vector3.new(-5835, 242, 8769), Vector3.new(-5540, 218, 8941),
        Vector3.new(-5278, 159, 8691), Vector3.new(5320, 239, 722), Vector3.new(-4658, 171, 4480),
        Vector3.new(-4806, 171, 3951), Vector3.new(-4929, 234, 4516), Vector3.new(-5307, 263, 4358),
        Vector3.new(-5124, 235, 4600), Vector3.new(1391, 237, -1351), Vector3.new(1130, 256, -1546),
        Vector3.new(1188, 168, -1179), Vector3.new(944, 217, -1538), Vector3.new(1498, 187, -1241)
    }
elseif placeId == 4442272183 then
    currentSeaName = "SEA 2"
    customIslands = {
        Vector3.new(-65, 271, 404), Vector3.new(52, 272, 1249), Vector3.new(933, 308, 1245),
        Vector3.new(-491, 272, 1273), Vector3.new(-1140, 244, 994), Vector3.new(-1812, 196, 1348),
        Vector3.new(911, 331, 33568), Vector3.new(730, 331, 33495), Vector3.new(-6506, 233, -122),
        Vector3.new(-5523, 306, -743), Vector3.new(3805, 165, -3502), Vector3.new(3394, 186, -3674),
        Vector3.new(3861, 184, -3937), Vector3.new(4259, 187, -3305), Vector3.new(4148, 163, -3147),
        Vector3.new(4019, 163, -3023), Vector3.new(3534, 163, -3182), Vector3.new(-3008, 389, -10279),
        Vector3.new(-3373, 389, -10879), Vector3.new(-3687, 228, -11591), Vector3.new(-4875, 225, -5032),
        Vector3.new(-5838, 210, -5787), Vector3.new(-6136, 217, -4936), Vector3.new(-5828, 235, -4099),
        Vector3.new(1007, 579, -4764), Vector3.new(1369, 579, -5389), Vector3.new(662, 554, -5789),
        Vector3.new(345, 622, -5667), Vector3.new(245, 551, -5093), Vector3.new(4771, 158, 2843),
        Vector3.new(6148, 444, -6730), Vector3.new(5526, 179, -6716), Vector3.new(-2525, 210, -2468),
        Vector3.new(-2864, 223, -3405), Vector3.new(-2774, 223, -4073), Vector3.new(-2145, 223, -4281),
        Vector3.new(-1661, 223, -3141)
    }
else
    currentSeaName = "."
    -- Auto quét map chống phế nếu đang ở Sea 3
    local mapFolder = workspace:FindFirstChild("Map") or workspace:FindFirstChild("_WorldOrigin")
    if mapFolder then
        for _, obj in pairs(mapFolder:GetChildren()) do
            local part = obj:IsA("BasePart") and obj or obj:FindFirstChildWhichIsA("BasePart", true)
            if part then table.insert(customIslands, part.CFrame.Position + Vector3.new(0, 150, 0)) end
        end
    end
end

print(" LEE HUB LOADING: " .. currentSeaName)

local sg = Instance.new("ScreenGui", coreGui)
sg.Name = "LeeHub_Exclusive"

local accent = Color3.new(1, 0, 0)
local bg = Color3.new(0.06, 0.06, 0.06) 
local sideBg = Color3.new(0.07, 0.07, 0.07)
local textWhite = Color3.new(1, 1, 1)
local darkGray = Color3.new(0.15, 0.15, 0.15)
local darkerGray = Color3.new(0.08, 0.08, 0.08)

local toggleIcon = Instance.new("TextButton", sg)
toggleIcon.Size = UDim2.new(0, 50, 0, 50) toggleIcon.Position = UDim2.new(0, 15, 0.5, -25) 
toggleIcon.BackgroundColor3 = bg toggleIcon.Text = "L" toggleIcon.TextColor3 = accent 
toggleIcon.Font = Enum.Font.GothamBlack toggleIcon.TextSize = 25 toggleIcon.Visible = false toggleIcon.Draggable = true 
Instance.new("UICorner", toggleIcon).CornerRadius = UDim.new(1, 0)
Instance.new("UIStroke", toggleIcon).Color = accent

local main = Instance.new("Frame", sg)
main.Size = UDim2.new(0, 520, 0, 340) main.Position = UDim2.new(0.5, -260, 0.5, -170) main.BackgroundColor3 = bg main.Visible = false main.ClipsDescendants = true 
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 12)
Instance.new("UIStroke", main).Color = accent

local side = Instance.new("Frame", main) side.Size = UDim2.new(0, 150, 1, 0) side.BackgroundColor3 = sideBg Instance.new("UICorner", side)
local sTitle = Instance.new("TextLabel", side) sTitle.Size = UDim2.new(1, 0, 0, 60) sTitle.Text = "LEE HUB" sTitle.TextColor3 = accent sTitle.Font = Enum.Font.GothamBlack sTitle.TextSize = 22 sTitle.BackgroundTransparency = 1

local farmPage = Instance.new("ScrollingFrame", main) farmPage.Size = UDim2.new(1, -170, 1, -20) farmPage.Position = UDim2.new(0, 160, 0, 10) farmPage.BackgroundTransparency = 1 farmPage.ScrollBarThickness = 2 farmPage.Visible = true farmPage.BorderSizePixel = 0
local listLayout = Instance.new("UIListLayout", farmPage) listLayout.Padding = UDim.new(0, 8)

local statusLabel = Instance.new("TextLabel", farmPage)
statusLabel.Size = UDim2.new(1, -10, 0, 30) statusLabel.BackgroundTransparency = 1
statusLabel.Text = "WAIT..: " .. currentSeaName statusLabel.TextColor3 = Color3.fromRGB(0, 255, 150)
statusLabel.Font = Enum.Font.GothamBold statusLabel.TextSize = 14 statusLabel.TextXAlignment = Enum.TextXAlignment.Left

local infoLabel = Instance.new("TextLabel", farmPage)
infoLabel.Size = UDim2.new(1, -10, 0, 25) infoLabel.BackgroundTransparency = 1
infoLabel.Text = "Trạng thái: WAIT..." infoLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
infoLabel.Font = Enum.Font.GothamMedium infoLabel.TextSize = 13 infoLabel.TextXAlignment = Enum.TextXAlignment.Left

local function makeToggle(parent, text, callback)
    local f = Instance.new("Frame", parent) f.Size = UDim2.new(1, -10, 0, 45) f.BackgroundColor3 = darkerGray Instance.new("UICorner", f).CornerRadius = UDim.new(0, 8) 
    local lab = Instance.new("TextLabel", f) lab.Size = UDim2.new(0.6, 0, 1, 0) lab.Position = UDim2.new(0, 15, 0, 0) lab.Text = text lab.TextColor3 = textWhite lab.Font = Enum.Font.GothamBold lab.TextSize = 13 lab.TextXAlignment = Enum.TextXAlignment.Left lab.BackgroundTransparency = 1
    local sw = Instance.new("TextButton", f) sw.Size = UDim2.new(0, 42, 0, 20) sw.Position = UDim2.new(1, -50, 0.5, -10) sw.BackgroundColor3 = darkGray sw.Text = "" Instance.new("UICorner", sw).CornerRadius = UDim.new(1, 0)
    local circ = Instance.new("Frame", sw) circ.Size = UDim2.new(0, 14, 0, 14) circ.Position = UDim2.new(0, 3, 0.5, -7) circ.BackgroundColor3 = textWhite Instance.new("UICorner", circ).CornerRadius = UDim.new(1, 0)
    local active = false
    sw.MouseButton1Click:Connect(function()
        active = not active
        if active then
            ts:Create(circ, TweenInfo.new(0.2), {Position = UDim2.new(1, -17, 0.5, -7)}):Play() sw.BackgroundColor3 = accent
        else
            ts:Create(circ, TweenInfo.new(0.2), {Position = UDim2.new(0, 3, 0.5, -7)}):Play() sw.BackgroundColor3 = darkGray
        end
        callback(active)
    end)
end

local btnTab = Instance.new("TextButton", side) btnTab.Size = UDim2.new(0.85, 0, 0, 40) btnTab.Position = UDim2.new(0.075, 0, 0, 70) btnTab.BackgroundColor3 = accent btnTab.Text = "  FARM EVENT" btnTab.TextColor3 = textWhite btnTab.Font = Enum.Font.GothamBold btnTab.TextSize = 13 btnTab.TextXAlignment = Enum.TextXAlignment.Left Instance.new("UICorner", btnTab).CornerRadius = UDim.new(0, 6)


local noclipCon
local function toggleNoclip(state)
    if state then
        if not noclipCon then
            noclipCon = runService.Stepped:Connect(function()
                if player.Character then
                    for _, v in pairs(player.Character:GetDescendants()) do
                        if v:IsA("BasePart") and v.CanCollide then v.CanCollide = false end
                    end
                end
            end)
        end
    else
        if noclipCon then noclipCon:Disconnect() noclipCon = nil end
    end
end

local function setAntiGravity(state)
    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    if state then
        local bg = hrp:FindFirstChild("LeeHub_AntiGrav")
        if not bg then
            bg = Instance.new("BodyVelocity") bg.Name = "LeeHub_AntiGrav" bg.MaxForce = Vector3.new(math.huge, math.huge, math.huge) bg.Velocity = Vector3.new(0, 0, 0) bg.Parent = hrp
        end
    else
        local bg = hrp:FindFirstChild("LeeHub_AntiGrav")
        if bg then bg:Destroy() end
    end
end

local tween
local ignoredEggs = {}
local function getNextEgg()
    local hiddenFolder = workspace:FindFirstChild(" ")
    if hiddenFolder then
        for _, obj in pairs(hiddenFolder:GetChildren()) do
            if obj.Name == "_PrimaryPart" and obj:IsA("BasePart") and not ignoredEggs[obj] then return obj end
        end
    end
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj.Name == "_PrimaryPart" and obj:IsA("BasePart") and not ignoredEggs[obj] then return obj end
    end
    return nil
end

local currentIslandIndex = 1

local function serverHop()
    infoLabel.Text = "Trạng thái: WAIT..."
    infoLabel.TextColor3 = Color3.fromRGB(150, 0, 255)
    local PlaceID = game.PlaceId
    local Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    for i,v in pairs(Site.data) do
        if v.maxPlayers > v.playing and v.id ~= game.JobId then
            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, v.id, game.Players.LocalPlayer)
            task.wait(4)
        end
    end
end

local function startAuto()
    toggleNoclip(true)
    setAntiGravity(true)
    local emptyScans = 0 
    
    task.spawn(function()
        while _G.AutoEgg do
            local egg = getNextEgg()
            local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            
            if egg and hrp then
                emptyScans = 0 
                infoLabel.Text = "Trạng thái: COLLET EGG"
                infoLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
                
                local tickStart = os.clock()
                while _G.AutoEgg and egg and egg.Parent and egg:IsDescendantOf(workspace) and (os.clock() - tickStart < 5) do
                    hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                    if not hrp then break end
                    
                    local dist = (hrp.Position - egg.Position).Magnitude
                    if dist > 5 then
                        local speed = 250 
                        local tweenInfo = TweenInfo.new(dist / speed, Enum.EasingStyle.Linear)
                        tween = ts:Create(hrp, tweenInfo, {CFrame = egg.CFrame})
                        tween:Play()
                        task.wait(0.2)
                    else
                        if tween then tween:Cancel() end
                        egg.CanCollide = false hrp.CFrame = egg.CFrame 
                        if player.Character:FindFirstChild("Humanoid") then player.Character.Humanoid.Jump = true end
                        task.wait(0.1) 
                    end
                end
                
                if tween then tween:Cancel() end
                if egg and egg.Parent then ignoredEggs[egg] = true end
                
            else
                if #customIslands > 0 and hrp then
                    infoLabel.Text = "Trạng thái: WAIT ("..currentIslandIndex.."/"..#customIslands..")"
                    infoLabel.TextColor3 = Color3.fromRGB(50, 150, 255)
                    local nextIsland = customIslands[currentIslandIndex]
                    
                    local dist = (hrp.Position - nextIsland).Magnitude
                    local speed = 250 
                    tween = ts:Create(hrp, TweenInfo.new(dist / speed, Enum.EasingStyle.Linear), {CFrame = CFrame.new(nextIsland)})
                    tween:Play()
                    
                    while tween and tween.PlaybackState == Enum.PlaybackState.Playing do
                        if getNextEgg() then tween:Cancel() break end
                        task.wait(0.2)
                    end
                    
                    if not getNextEgg() then
                        currentIslandIndex = currentIslandIndex + 1
                        if currentIslandIndex > #customIslands then
                            currentIslandIndex = 1
                            emptyScans = emptyScans + 1
                        end
                        if emptyScans >= 3 then
                            _G.AutoEgg = false
                            serverHop()
                        end
                    end
                else
                    infoLabel.Text = "LỖI: ERROR!"
                    task.wait(2)
                end
            end
        end
        toggleNoclip(false)
        setAntiGravity(false) 
    end)
end


makeToggle(farmPage, "AUTO COLLET EGG", function(state)
    _G.AutoEgg = state
    if state then
        ignoredEggs = {} 
        startAuto()
    else
        infoLabel.Text = "Trạng thái: WAIT"
        infoLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
        if tween then tween:Cancel() end
        toggleNoclip(false)
        setAntiGravity(false)
    end
end)

makeToggle(farmPage, "ESP EGG", function(state)
    _G.ESP_Egg = state
    if state then
        task.spawn(function()
            while _G.ESP_Egg do
                task.wait(1)
                for _, obj in pairs(workspace:GetDescendants()) do
                    if obj.Name == "_PrimaryPart" and obj:IsA("BasePart") and not obj:FindFirstChild("LeeHub_ESP") then
                        local billboard = Instance.new("BillboardGui", obj) billboard.Name = "LeeHub_ESP" billboard.AlwaysOnTop = true billboard.Size = UDim2.new(0, 200, 0, 50)
                        local text = Instance.new("TextLabel", billboard) text.Size = UDim2.new(1, 0, 1, 0) text.BackgroundTransparency = 1 text.Text = "🥚 TRỨNG EVENT" text.TextColor3 = Color3.new(1, 0.8, 0) text.Font = Enum.Font.GothamBlack text.TextSize = 14
                    end
                end
            end
        end)
    else
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:FindFirstChild("LeeHub_ESP") then obj.LeeHub_ESP:Destroy() end
        end
    end
end)

task.spawn(function()
    local loadF = Instance.new("Frame", sg)
    loadF.Size = UDim2.new(0, 320, 0, 150) loadF.Position = UDim2.new(0.5, -160, 0.5, -75) loadF.BackgroundColor3 = bg Instance.new("UICorner", loadF).CornerRadius = UDim.new(0, 15)
    local lTitle = Instance.new("TextLabel", loadF) lTitle.Size = UDim2.new(1, 0, 1, -40) lTitle.Text = "LEE HUB" lTitle.TextColor3 = accent lTitle.Font = Enum.Font.GothamBlack lTitle.TextSize = 45 lTitle.BackgroundTransparency = 1 lTitle.TextTransparency = 1
    local barBG = Instance.new("Frame", loadF) barBG.Size = UDim2.new(0.8, 0, 0, 4) barBG.Position = UDim2.new(0.1, 0, 0.8, 0) barBG.BackgroundColor3 = darkGray
    local bar = Instance.new("Frame", barBG) bar.Size = UDim2.new(0, 0, 1, 0) bar.BackgroundColor3 = accent Instance.new("UICorner", bar).CornerRadius = UDim.new(1, 0)

    ts:Create(lTitle, TweenInfo.new(0.8), {TextTransparency = 0}):Play() 
    ts:Create(bar, TweenInfo.new(1.2), {Size = UDim2.new(1, 0, 1, 0)}):Play() 
    task.wait(1.4)
    ts:Create(loadF, TweenInfo.new(0.4, Enum.EasingStyle.Back), {Size = UDim2.new(0, 0, 0, 0)}):Play() 
    task.wait(0.4) loadF:Destroy()

    toggleIcon.Visible = true main.Visible = true main.Size = UDim2.new(0, 0, 0, 0) 
    ts:Create(main, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 520, 0, 340)}):Play() 
end)

local isToggling = false
toggleIcon.MouseButton1Click:Connect(function()
    if isToggling then return end isToggling = true 
    if main.Visible then 
        local closeTween = ts:Create(main, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, 0)}) 
        closeTween:Play() closeTween.Completed:Wait() main.Visible = false 
    else 
        main.Visible = true 
        local openTween = ts:Create(main, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 520, 0, 340)}) 
        openTween:Play() openTween.Completed:Wait() 
    end
    isToggling = false 
end)
