local market_place_service = game:GetService("MarketplaceService");
local http_request = request or http_request or (syn and syn.request) or (http and http.request) or (fluxus and fluxus.request);

local game_name = market_place_service and market_place_service:GetProductInfo(game.PlaceId).Name;

-- loader framework needed
local change_logs = "https://raw.githubusercontent.com/Nocturya/next_gen/refs/heads/main/change_logs_framework";
local version_scripts = "https://raw.githubusercontent.com/Nocturya/next_gen/refs/heads/main/version_scripts_framework";
local missing_function = "";
--

if (not change_logs) or (not version_scripts) or (not missing_function) then
    nocturya_kick_reason = "[Fatal Error], loader framework mismatch or not found block 1"
elseif (change_logs and change_logs ~= nil) and (version_scripts and version_scripts ~= nil) and (missing_function and missing_function ~= nil) then

end
