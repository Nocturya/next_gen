local market_place_service = game:GetService("MarketplaceService")
local get_change_logs = ""

local game_name = market_place_service and market_place_service:GetProductInfo(game.PlaceId).Name
