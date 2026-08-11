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

if (change_logs and (change_logs ~= nil or change_logs ~= "")) and (version_scripts and (version_scripts ~= nil or version_scripts ~= "")) and (missing_function and (missing_function ~= nil or missing_function ~= "")) then
    if (not executor) then
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
                if (rconsoleprint) then
                    local debug_preference = message_box("Do you want to enable debug mode ?", "Nocturya", 4)

                    if debug_preference == 6 then
                        getgenv().Nocturya_DEBUG == true;

                        if (not debug_rconsoleprint) then
                            debug_rconsoleprint = true;
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
        end;        
    end;
else
    nocturya_kick_reason = "[Fatal Error] \n loader framework mismatch or not found block 1";
end;
