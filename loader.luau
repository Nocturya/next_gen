local market_place_service = game:GetService("MarketplaceService");
local http_request = request or http_request or (syn and syn.request) or (http and http.request) or (fluxus and fluxus.request);
local clipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set);
local game_name = market_place_service and market_place_service:GetProductInfo(game.PlaceId).Name;

local clone_ref = cloneref;
local workspace = clone_ref(game.GetService(game, "Workspace"));
local players = clone_ref(game.GetService(game, "Players"));
local uis = clone_ref(game.GetService(game, "UserInputService"));
local tween_service = clone_ref(game.GetService(game, "TweenService"));
local rs = clone_ref(game.GetService(game, "ReplicatedStorage"));
local stats = clone_ref(game.GetService(game, "Stats"));
local run_service = clone_ref(game.GetService(game, "RunService"));

local local_player = players["LocalPlayer"];
local local_char = local_player.Character or local_player.CharacterAdded:Wait();

-- loader framework needed
local change_logs = "https://raw.githubusercontent.com/Nocturya/next_gen/refs/heads/main/change_logs_framework";
local version_scripts = "https://raw.githubusercontent.com/Nocturya/next_gen/refs/heads/main/version_scripts_framework";
--

if (change_logs and (change_logs ~= nil or change_logs ~= "")) and (version_scripts and (version_scripts ~= nil or version_scripts ~= "")) then
        executor = getexecutorname() or nil
    end;

    local message_box = function(body, title, id)
        local success, error = pcall(messagebox, body, title, id)

        if not success then
             nocturya_kick_reason = "[Fatal Error] \n Your executor dont support [messagebox] block 4"
        end

        return error
    end;

    if (not nocturya_player or not nocturya_kick_reason) then
        nocturya_player = local_player;
        nocturya_kick_reason = "[No Error Detected]";

        if getgenv and getgenv().Nocturya_DEBUG == true and not nocturya_debug then
            nocturya_debug = true;
        elseif getgenv and getgenv().Nocturya_DEBUG == nil then
            local debug_enable = message_box("Do you want to enable debug mode ?", "Nocturya", 4)
           
            if (debug_enable == 6) then
                getgenv().Nocturya_DEBUG = true;

                if (rconsoleprint) then
                    local debug_preference = message_box("Do you want the debug output to be displayed via rconsoleprint ?", "Nocturya", 4)

                    if debug_preference == 6 then
                        if (not debug_rconsoleprint) then
                            debug_rconsoleprint = true;
                        end;
                    else
                        message_box("Debug messages will be displayed in the (F9) console", "Nocturya", 0)
                         
                        if (not debug_rconsoleprint) then
                            debug_rconsoleprint = false;
                        end;
                    end;
                else
                    if (not debug_rconsoleprint) then
                        debug_rconsoleprint = false
                    end;
                end;
            end;
        else
            nocturya_debug = false;
        end;
    end;

    if (not executor or executor == nil) then
        nocturya_kick_reason = "[Fatal Error] \n Your executor dont support [getexecutorname] block 2";
    end;

    -- Services
    if not cloneref then
        nocturya_kick_reason = "[Fatal Error] \n Your executor dont support [cloneref] block 3"

        cloneref = function(reference)
            return reference
        end;
    end;

    if not getgenv then
        nocturya_kick_reason = "[Fatal Error] \n Your executor dont support [getgenv] block 3"
         
        getgenv = function()
            return _G
        end;
    end;

    if not loadfile then
        nocturya_kick_reason = "[Fatal Error] \n Your executor dont support [loadfile] block 3"

        loadfile = function(...)
            return ...
        end;
    end;

    if not readfile then
        nocturya_kick_reason = "[Fatal Error] \n Your executor dont support [readfile] block 3"

        readfile = function(...)
            return ...
        end;
    end;

    if not newcclosure then
        nocturya_kick_reason = "[Fatal Error] \n Your executor dont support [newcclosure] block 3"

        newcclosure = function(...)
            return ...
        end;
    end;

    if not hookfunction then
        nocturya_kick_reason = "[Fatal Error] \n Your executor dont support [hookfunction] block 3"
       
        hookfunction = function() end
    end;

    if not debug.traceback and not debug.getupvalue and not debug.getupvalues and not debug.setupvalue then
        nocturya_kick_reason = "[Fatal Error] \n Your executor dont support [debug ...] block 3"
        
        debug.traceback = function(...)
            return ...
        end;

        debug.getupvalue = function(...)
            return ...
        end;

        debug.getupvalues = function(...)
            return ...
        end;

        debug.setupvalue = function(...)
            return ...
        end;
    end;

    -- end 

    if (nocturya_debug and nocturya_debug == true) then
        if game_name ~= "Arsenal" then
            
        else

        end;
    end;

    local nocturya_loader_ui = Instance.new("ScreenGui")
    nocturya_loader_ui.Name = "nocturya_loader_ui"
    nocturya_loader_ui.Parent = game.CoreGui
    nocturya_loader_ui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local main_frame = Instance.new("Frame")
    main_frame.Name = "main_frame"
    main_frame.Parent = nocturya_loader_ui
    main_frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    main_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    main_frame.BorderSizePixel = 0
    main_frame.Position = UDim2.new(0.5, -150, 0.5, -222)
    main_frame.Size = UDim2.new(0, 300, 0, 444)
    main_frame.Draggable = true
    main_frame.Active = true

    local main_corner = Instance.new("UICorner")
    main_corner.CornerRadius = UDim.new(0, 12)
    main_corner.Name = "main_corner"
    main_corner.Parent = mainFrame

    local main_label = Instance.new("TextLabel")
    main_label.Name = "main_label"
    main_label.Parent = mainFrame
    main_label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    main_label.BackgroundTransparency = 1
    main_label.BorderSizePixel = 0
    main_label.Size = UDim2.new(1, 0, 0, 40)
    main_label.Font = Enum.Font.Oswald
    main_label.Text = "Level Up - Key System V2"
    main_label.TextColor3 = Color3.fromRGB(255, 255, 255)
    main_label.TextSize = 37

    local game_image = Instance.new("ImageLabel")
    game_image.Name = "game_image"
    game_image.Parent = main_frame
    game_image.BackgroundTransparency = 1
    game_image.BorderSizePixel = 0
    game_image.Position = UDim2.new(0.254166663, 0, 0.167274743, 0)
    game_image.Size = UDim2.new(0, 150, 0, 150)
    game_image.Image = "http://www.roblox.com/asset/?id=18246172257"

    local description_label = Instance.new("TextLabel")
    description_label.Name = "description_label"
    description_label.Parent = main_frame
    description_label.BackgroundTransparency = 1
    description_label.BorderSizePixel = 0
    description_label.Position = UDim2.new(0.09, 0, 0.588716269, 0)
    description_label.Size = UDim2.new(0, 244, 0, 119)
    description_label.Font = Enum.Font.Oswald
    description_label.Text = "Level Up doesn't seem to support this game, but maybe our universal script will work! Check the Discord for a full list"
    description_label.TextColor3 = Color3.fromRGB(178, 178, 178)
    description_label.TextSize = 29
    description_label.TextWrapped = true
    description_label.TextYAlignment = Enum.TextYAlignment.Top

    local run_bg = Instance.new("TextButton")
    run_bg.Name = "run_bg"
    run_bg.Parent = main_frame
    run_bg.BackgroundColor3 = Color3.fromRGB(23, 176, 0)
    run_bg.BorderSizePixel = 0
    run_bg.Position = UDim2.new(0.5, -26, 0.89, 0)
    run_bg.Size = UDim2.new(0, 52, 0, 32)
    run_bg.AutoButtonColor = false
    run_bg.Text = ""

    local run_corner = Instance.new("UICorner")
    run_corner.CornerRadius = UDim.new(0, 16)
    run_corner.Parent = run_bg

    local run_button = Instance.new("ImageButton")
    run_button.Name = "run_button"
    run_button.Parent = run_bg
    run_button.BackgroundTransparency = 1
    run_button.Position = UDim2.new(1, -36, 0.5, -12)
    run_button.Size = UDim2.new(0, 24, 0, 24)
    run_button.ZIndex = 2
    run_button.Image = "rbxassetid://3926307971"
    run_button.ImageRectOffset = Vector2.new(44, 284)
    run_button.ImageRectSize = Vector2.new(36, 36)

    -- Info Button
    local info_bg = Instance.new("TextButton")
    info_bg.Name = "info_bg"
    info_bg.Parent = main_frame
    info_bg.BackgroundColor3 = Color3.fromRGB(255, 191, 0)
    info_bg.BorderSizePixel = 0
    info_bg.Position = UDim2.new(0.78, -26, 0.89, 0)
    info_bg.Size = UDim2.new(0, 52, 0, 32)
    info_bg.AutoButtonColor = false
    info_bg.Text = ""

    local info_corner = Instance.new("UICorner")
    info_corner.CornerRadius = UDim.new(0, 16)
    info_corner.Parent = info_bg

    local infoButton = Instance.new("ImageButton")
    infoButton.Name = "infoButton"
    infoButton.Parent = infoBG
    infoButton.BackgroundTransparency = 1
    infoButton.Position = UDim2.new(0.25, 0, 0.5, -13)
    infoButton.Size = UDim2.new(0, 25, 0, 25)
    infoButton.ZIndex = 2
    infoButton.Image = "rbxassetid://3926305904"
    infoButton.ImageRectOffset = Vector2.new(524, 444)
    infoButton.ImageRectSize = Vector2.new(36, 36)

    -- // discord button
    local discordBG = Instance.new("TextButton")
    discordBG.Name = "discordBG"
    discordBG.Parent = mainFrame
    discordBG.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
    discordBG.BorderSizePixel = 0
    discordBG.Position = UDim2.new(0.22, -26, 0.89, 0)
    discordBG.Size = UDim2.new(0, 52, 0, 32)
    discordBG.AutoButtonColor = false
    discordBG.Text = ""

    local discordCorner = Instance.new("UICorner")
    discordCorner.CornerRadius = UDim.new(0, 16)
    discordCorner.Parent = discordBG

    local discordButton = Instance.new("ImageButton")
    discordButton.Name = "discordButton"
    discordButton.Parent = discordBG
    discordButton.BackgroundTransparency = 1
    discordButton.Position = UDim2.new(0.25, 0, 0.5, -13)
    discordButton.Size = UDim2.new(0, 25, 0, 25)
    discordButton.ZIndex = 2
    discordButton.Image = "rbxassetid://3926305904"
    discordButton.ImageRectOffset = Vector2.new(164, 404)
    discordButton.ImageRectSize = Vector2.new(36, 36)

    -- // :: Close Button
    local close_button = Instance.new("ImageButton")
    close_button.Name = "close_button"
    close_button.Parent = main_frame
    close_button.BackgroundTransparency = 1
    close_button.Position = UDim2.new(0.903333306, 0, 0.0157657657, 0)
    close_button.Size = UDim2.new(0, 25, 0, 25)
    close_button.ZIndex = 2
    close_button.Image = "rbxassetid://3926305904"
    close_button.ImageColor3 = Color3.fromRGB(255, 90, 90)
    close_button.ImageRectOffset = Vector2.new(124, 124)
    close_button.ImageRectSize = Vector2.new(36, 36)

    -- // :: Key Frame
    local key_frame = Instance.new("Frame")
    key_frame.Name = "key_frame"
    key_frame.Parent = levelUpLoader
    key_frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    key_frame.BorderSizePixel = 0
    key_frame.Position = UDim2.new(0.5, -243, 0.5, 242)
    key_frame.Size = UDim2.new(0, 487, 0, 85)
    key_frame.Visible = false
    key_frame.Draggable = true
    key_frame.Active = true

    local key_corner = Instance.new("UICorner")
    key_corner.CornerRadius = UDim.new(0, 12)
    key_corner.Parent = key_frame

    local key_box = Instance.new("TextBox")
    key_box.Name = "key_box"
    key_box.Parent = key_frame
    key_box.BackgroundTransparency = 1
    key_box.BorderSizePixel = 0
    key_box.Position = UDim2.new(0.034907598, 0, 0.2, 0)
    key_box.Size = UDim2.new(0, 399, 0, 50)
    key_box.Font = Enum.Font.Oswald
    key_box.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
    key_box.PlaceholderText = "Paste your key here"
    key_box.Text = ""
    key_box.TextColor3 = Color3.fromRGB(255, 255, 255)
    key_box.TextSize = 26

    local underline = Instance.new("TextLabel")
    underline.Name = "underline"
    underline.Parent = key_box
    underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    underline.BorderSizePixel = 0
    underline.Position = UDim2.new(0, 0, 1, 0)
    underline.Size = UDim2.new(1, 0, 0, 1)
    underline.Text = ""

    local underline_corner = Instance.new("UICorner")
    underline_corner.CornerRadius = UDim.new(0, 32)
    underline_corner.Parent = underline

    local key_run_bg = Instance.new("TextButton")
    key_run_bg.Name = "key_run_bg"
    key_run_bg.Parent = key_box
    key_run_bg.BackgroundColor3 = Color3.fromRGB(23, 176, 0)
    key_run_bg.BorderSizePixel = 0
    key_run_bg.Position = UDim2.new(1.09899747, -26, 0.37, 0)
    key_run_bg.Size = UDim2.new(0, 52, 0, 32)
    key_run_bg.AutoButtonColor = false
    key_run_bg.Text = ""

    local key_run_corner = Instance.new("UICorner")
    key_run_corner.CornerRadius = UDim.new(0, 16)
    key_run_corner.Parent = key_run_bg

    local key_run_button = Instance.new("ImageButton")
    key_run_button.Name = "key_run_button"
    key_run_button.Parent = key_run_bg
    key_run_button.BackgroundTransparency = 1
    key_run_button.Position = UDim2.new(1, -36, 0.5, -12)
    key_run_button.Size = UDim2.new(0, 24, 0, 24)
    key_run_button.ZIndex = 2
    key_run_button.Image = "rbxassetid://3926307971"
    key_run_button.ImageRectOffset = Vector2.new(44, 284)
    key_run_button.ImageRectSize = Vector2.new(36, 36)

    local key_close_button = Instance.new("ImageButton")
    key_close_button.Name = "key_close_button"
    key_close_button.Parent = key_frame
    key_close_button.BackgroundTransparency = 1
    key_close_button.Position = UDim2.new(1, -30, 0, 5)
    key_close_button.Size = UDim2.new(0, 25, 0, 25)
    key_close_button.ZIndex = 2
    key_close_button.Image = "rbxassetid://3926305904"
    key_close_button.ImageColor3 = Color3.fromRGB(255, 90, 90)
    key_close_button.ImageRectOffset = Vector2.new(124, 124)
    key_close_button.ImageRectSize = Vector2.new(36, 36)

    -- Info Frame
    local info_frame = Instance.new("Frame")
    info_frame.Name = "info_frame"
    info_frame.Parent = nocturya_loader_ui
    info_frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    info_frame.BorderSizePixel = 0
    info_frame.Position = UDim2.new(0.5, -434, 0.5, -222)
    info_frame.Size = UDim2.new(0, 264, 0, 353)
    info_frame.Visible = false
    info_frame.Draggable = true
    info_frame.Active = true

    local info_corner_2 = Instance.new("UICorner")
    info_corner_2.CornerRadius = UDim.new(0, 12)
    info_corner_2.Parent = info_frame

    local info_title_label = Instance.new("TextLabel")
    info_title_label.Name = "info_title_label"
    info_title_label.Parent = info_frame
    info_title_label.BackgroundTransparency = 1
    info_title_label.BorderSizePixel = 0
    info_title_label.Size = UDim2.new(1, 0, 0, 40)
    info_title_label.Font = Enum.Font.Oswald
    info_title_label.Text = "Information"
    info_title_label.TextColor3 = Color3.fromRGB(255, 255, 255)
    info_title_label.TextSize = 37

    local info_label = Instance.new("TextLabel")
    info_label.Name = "info_label"
    info_label.Parent = info_frame
    info_label.BackgroundTransparency = 1
    info_label.BorderSizePixel = 0
    info_label.Position = UDim2.new(0.0369697325, 0, 0.126959875, 0)
    info_label.Size = UDim2.new(0, 244, 0, 295)
    info_label.Font = Enum.Font.Oswald
    info_label.Text = "Today's news: This update took way too long and I'm tired."
    info_label.TextColor3 = Color3.fromRGB(178, 178, 178)
    info_label.TextSize = 29
    info_label.TextWrapped = true
    info_label.TextYAlignment = Enum.TextYAlignment.Top

    local info_close_button = Instance.new("ImageButton")
    info_close_button.Name = "info_close_button"
    info_close_button.Parent = info_frame
    info_close_button.BackgroundTransparency = 1
    info_close_button.Position = UDim2.new(1, -30, 0, 5)
    info_close_button.Size = UDim2.new(0, 25, 0, 25)
    info_close_button.ZIndex = 2
    info_close_button.Image = "rbxassetid://3926305904"
    info_close_button.ImageColor3 = Color3.fromRGB(255, 90, 90)
    info_close_button.ImageRectOffset = Vector2.new(124, 124)
    info_close_button.ImageRectSize = Vector2.new(36, 36)

    close_button.MouseButton1Click:Connect(function()
        nocturya_loader_ui:Destroy()
    end)

    info_button.MouseButton1Click:Connect(function()
        infoFrame.Visible = true
    end)

    info_bg.MouseButton1Click:Connect(function()
        info_frame.Visible = true
    end)

    info_close_button.MouseButton1Click:Connect(function()
        info_frame.Visible = false
    end)

    discord_button.MouseButton1Click:Connect(function()
        setclipboard("https://discord.gg/nxTJs7RV5d")
    end)

    discord_bg.MouseButton1Click:Connect(function()
        setclipboard("https://discord.gg/nxTJs7RV5d")
    end)

    run_button.MouseButton1Click:Connect(function()
        key_frame.Visible = true
    end)

    run_bg.MouseButton1Click:Connect(function()
        key_frame.Visible = true
    end)

    key_close_nutton.MouseButton1Click:Connect(function()
        key_frame.Visible = false
    end)

    local run_script = {
        ["Arsenal"] = {
            status = "undected",
            level = "hight",
            run_script_utl = ""
        },

        ["Gunfight Arena"] = {
            status = "undected",
            level = "hight",
            run_script_utl = ""
        },
    }

    local game_info = run_script[game_name]
    

    do
        game:GetService("ScriptContext").Error:Connect(function(msg, trace, scr)
            if not scr or trace:find("''") or msg:find("''") then
                pcall(function()
                    if not (trace and trace:find("cl_%d+%.Client") and game_name == "Arsenal") then
               --       nocturya_safe_debug = "Arsenal detected for not get kicked by Loader"
                    elseif game_name ~= "Arsenal" then
                        if not scr or trace:find("''") or msg:find("''") then
                            local_player:Kick("Fatal error detected\n" .. tostring(msg))
                        end;
                    end;
                end)
            end;
        end);        
    end;
else
    nocturya_kick_reason = "[Fatal Error] \n loader framework mismatch or not found block 1";
end;
