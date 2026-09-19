-- File: Loader.lua
local PlaceId = game.PlaceId
-- Thay "Tên_GitHub_Của_Bạn" và "Tên_Repo_Của_Bạn" vào đây:
local baseUrl = "https://raw.githubusercontent.com/Tên_GitHub_Của_Bạn/Tên_Repo_Của_Bạn/main/"

-- Bảng ánh xạ PlaceID -> File game tương ứng
local GamesMap = {
    [111894976456494] = "Games/AnimeLife.lua",
    [94309190278698]  = "Games/SafetyNotRequired.lua",
    [77419850589072]  = "Games/SafetyNotRequired.lua",
    [128001665358186] = "Games/ScaryShawarmaKiosk.lua",
    -- [] = "",
}

-- if not in list will load Universal.lua or bao loi
local scriptPath = GamesMap[PlaceId] or "Games/Universal.lua"

local success, err = pcall(function()
    loadstring(game:HttpGet(baseUrl .. scriptPath))()
end)

if not success then
    warn("[PhiPhai Hub] Lỗi nạp script:", err)
end
