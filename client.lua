Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(Config.DiscordAppId)

        SetRichPresence(Config.Text)

        SetDiscordRichPresenceAsset(Config.LogoName)
        SetDiscordRichPresenceAssetText(Config.LargeLogoText)
        SetDiscordRichPresenceAssetSmall(Config.SmallLogo)
        SetDiscordRichPresenceAssetSmallText(Config.SmallLogoText)

        if (Config.EnabledButton1 == true ) then
            SetDiscordRichPresenceAction(0, Config.FirstButton, Config.FirstButtonLink)
        elseif (Config.EnabledButton1 == false) then
            return
        end

        if (Config.EnabledButton2 == true) then
            SetDiscordRichPresenceAction(1, Config.SecondButton, Config.SecondButtonLink)
        elseif (Config.EnabledButton2 == false) then
            return
        end

		Citizen.Wait(60000)
	end
end)