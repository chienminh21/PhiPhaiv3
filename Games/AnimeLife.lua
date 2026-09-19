-- File: Games/AnimeLife.lua
local baseUrl = "https://raw.githubusercontent.com/chienminh21/PhiPhaiv3/refs/heads/main/"

-- Tải WindUI và UIBuilder từ Core
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()
local UIBuilder = loadstring(game:HttpGet(baseUrl .. "Core/UIBuilder.lua"))()

local Window = WindUI:CreateWindow({
    Title = "PhiPhai v3 | Anime Life",
    Folder = "PPv3Save",
    Size = UDim2.fromOffset(580, 420),
})

-- UIBuilder tự động hiện/ẩn Tab theo PlaceId!
UIBuilder.Build(Window)

-- [Viết thêm code logic đặc thù riêng cho Anime Life ở đây nếu cần]

