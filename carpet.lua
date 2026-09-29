-- Rainbow Magic Carpet Loader (ID: 225921000)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- جلب الـ Gear من خلال الـ ID الخاص به وإعطائه للالاعب
pcall(function()
    local gearId = 225921000
    local content = game:GetService("InsertService"):LoadAsset(gearId)
    for _, item in ipairs(content:GetChildren()) do
        item.Parent = player.Backpack
    end
    print("تم إعطاء السجادة السحرية بنجاح!")
end)
