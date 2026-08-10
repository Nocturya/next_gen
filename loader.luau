local market_place_service = game:GetService("MarketplaceService");
local http_request = request or http_request or (syn and syn.request) or (http and http.request) or (fluxus and fluxus.request);

local game_name = market_place_service and market_place_service:GetProductInfo(game.PlaceId).Name;

-- loader framework needed
local change_logs = "https://raw.githubusercontent.com/Nocturya/next_gen/refs/heads/main/change_logs_framework";
local version_scripts = "https://raw.githubusercontent.com/Nocturya/next_gen/refs/heads/main/version_scripts_framework";
local missing_function = "";
--

if (change_logs and (change_logs ~= nil or change_logs ~= "")) and (version_scripts and (version_scripts ~= nil or version_scripts ~= "")) and (missing_function and (missing_function ~= nil or missing_function ~= "")) then
    if (not executor) then
        executor = getexecutorname() or nil
    end;

    if (not nocturya_player or not nocturya_kick_reason) then
        nocturya_player = local_player;
        nocturya_kick_reason = "[No Error Detected]";
    end;

    if (not executor or executor == nil) then
        nocturya_kick_reason = "[Fatal Error] \n Your executor dont support [getexecutorname] block 2";
    end;
else
    nocturya_kick_reason = "[Fatal Error] \n loader framework mismatch or not found block 1";
end;
