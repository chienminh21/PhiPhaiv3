-- File: Games/Universal.lua
local baseUrl = "https://raw.githubusercontent.com/chienminh21/PhiPhaiv3/main/"

local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()
local UIBuilder = loadstring(game:HttpGet(baseUrl .. "Core/UIBuilder.lua"))()

local Window = WindUI:CreateWindow({
    Title = "PhiPhai v3 | Universal",
    Folder = "PPv3Save",
    Size = UDim2.fromOffset(580, 420),
})

UIBuilder.Build(Window)

