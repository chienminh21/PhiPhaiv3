local baseUrl = "https://raw.githubusercontent.com/chienminh21/PhiPhaiv3/refs/heads/main/"

-- Tải WindUI
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

-- Tải UIBuilder an toàn
local uiBuilderRaw = game:HttpGet(baseUrl .. "Core/UIBuilder.lua")
local uiBuilderFunc, err = loadstring(uiBuilderRaw)

if not uiBuilderFunc then
    warn("[PhiPhai v3] Lỗi nạp Core/UIBuilder.lua:", err)
    return
end

local UIBuilder = uiBuilderFunc()

local Window = WindUI:CreateWindow({
    Title = "PhiPhai v3",
    Folder = "PPv3Save",
    Size = UDim2.fromOffset(580, 420),
})

UIBuilder.Build(Window)
