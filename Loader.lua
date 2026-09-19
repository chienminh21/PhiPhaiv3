-- File: Loader.lua
local PlaceId = game.PlaceId
local baseUrl = "https://raw.githubusercontent.com/chienminh21/PhiPhaiv3/refs/heads/main/"

local GamesMap = {
    [111894976456494] = "Games/AnimeLife.lua",
    [94309190278698]  = "Games/SafetyNotRequired.lua",
    [77419850589072]  = "Games/SafetyNotRequired.lua",
    [128001665358186] = "Games/ScaryShawarmaKiosk.lua",
}

local scriptPath = GamesMap[PlaceId] or "Games/Universal.lua"
local fullUrl = baseUrl .. scriptPath

-- Tải nội dung file từ GitHub
local ok, content = pcall(function()
    return game:HttpGet(fullUrl)
end)

if not ok or not content or content == "404: Not Found" then
    warn("[PhiPhai v3] Không tìm thấy file trên GitHub:", fullUrl)
    return
end

-- Biên dịch code
local func, err = loadstring(content)
if not func then
    warn("[PhiPhai v3] Lỗi cú pháp trong file (" .. scriptPath .. "):", err)
    return
end

-- Chạy script
func()
