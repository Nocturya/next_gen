local market_place_service = game:GetService("MarketplaceService")
local game_name = market_place_service and market_place_service:GetProductInfo(game.PlaceId).Name

print(game_name)
