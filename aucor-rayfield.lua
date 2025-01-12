local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/Aucor-Limited/Scriptes/refs/heads/main/aucor-hub2.lua"))()

local Window = Rayfield:CreateWindow({
   Name = "Aucor Rayfield",
   LoadingTitle = "Aucor Rayfield - новый дизайн",
   LoadingSubtitle = "by Aucor Limited",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "Aucor Rayfield", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Aucor Rayfield",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/Aucor_Limited)",
      FileName = "AucorKey",
      SaveKey = true,
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "Rayfield"
   }
})

local Tab = Window:CreateTab("Меню", 4483362458)

local Section = Tab:CreateSection("Слайдеры силы",true) -- The 2nd argument is to tell if its only a Title and doesnt contain elements

local Slider = Tab:CreateSlider({
   Name = "Слайдер скорости",
   Info = "слайдер силы скорости.", -- Speaks for itself, Remove if none.
   Range = {0, 1000},
   Increment = 1,
   Suffix = "скорость",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Слайдер прыжка",
   Info = "слайдер силы прыжка.", -- Speaks for itself, Remove if none.
   Range = {0, 1000},
   Increment = 1,
   Suffix = "сила прыжка",
   CurrentValue = 50,
   Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Слайдер гравитации",
   Info = "слайдер силы гравитации.", -- Speaks for itself, Remove if none.
   Range = {0, 1000},
   Increment = 1,
   Suffix = "сила гравитации",
   CurrentValue = 146,
   Flag = "Slider3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       game.Workspace.Gravity = Value
   end,
})

local Section = Tab:CreateSection("Кнопки",true) -- The 2nd argument is to tell if its only a Title and doesnt contain elements

local Button = Tab:CreateButton({
   Name = "Сбросить силы",
   Callback = function()
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
      game.Workspace.Gravity = 196,2
   end,
})

local Button = Tab:CreateButton({
   Name = "Закрыть Aucor Rayfield",
   Callback = function()
      Rayfield:Destroy()
   end,
})

local Tab = Window:CreateTab("Скрипты", 4483362458)

local Section = Tab:CreateSection("Все скрипты",true) -- The 2nd argument is to tell if its only a Title and doesnt contain elements

local Button = Tab:CreateButton({
   Name = "Получить консоль админа",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Скрипт на невидимость",
   Callback = function()
      loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Скрипт на полёт",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
   end,
})



local Button = Tab:CreateButton({
   Name = "Скрипт на Murder Mystery 2",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))("")
   end,
})

local Button = Tab:CreateButton({
   Name = "Скрипт на Doors",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Скрипт на 3008",
   Callback = function()
      loadstring(game:HttpGet"https://raw.githubusercontent.com/Yumiara/Python/refs/heads/main/SCP3008.py")()
   end,
})

