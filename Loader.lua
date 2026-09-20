-- File: Loader.lua
local PlaceId = game.PlaceId

-- Link RAW rút gọn chuẩn (Tự nhận diện nhánh chính)
local baseUrl = "https://raw.githubusercontent.com/chienminh21/PhiPhaiv3/main/"

local GamesMap = {
    [111894976456494] = "Games/AnimeLife.lua",
    [94309190278698]  = "Games/SafetyNotRequired.lua",
    [77419850589072]  = "Games/SafetyNotRequired.lua",
    [128001665358186] = "Games/ScaryShawarmaKiosk.lua",
}

local scriptPath = GamesMap[PlaceId] or "Games/Universal.lua"
local fullUrl = baseUrl .. scriptPath

local ok, content = pcall(function()
    return game:HttpGet(fullUrl)
end)

if ok and content and content ~= "404: Not Found" then
    loadstring(content)()
else
    warn("[PhiPhai v3] Lỗi 404 - Không tìm thấy file:", fullUrl)
end
