local market_place_service = game:GetService("MarketplaceService");
local game_name = market_place_service and market_place_service:GetProductInfo(game.PlaceId).Name;
-- loader framework needed
local get_change_logs = "https://raw.githubusercontent.com/Nocturya/next_gen/refs/heads/main/change_logs_framework";
local get_version_scripts = "https://raw.githubusercontent.com/Nocturya/next_gen/refs/heads/main/version_scripts_framework";
local get_missing_function = "";
--

if (not get_change_logs) or (not get_version_scripts) or (not missing_function) then
    nocturya_kick_reason = "[Fatal Error], loader framework mismatch or not found block 1"
end
