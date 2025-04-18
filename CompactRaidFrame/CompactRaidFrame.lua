local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function()
    if CompactRaidFrameContainer then
        CompactRaidFrameContainer:SetScale(0.7)
    else
        -- Wait a bit in case it hasn't loaded yet
        C_Timer.After(2, function()
            if CompactRaidFrameContainer then
                CompactRaidFrameContainer:SetScale(0.7)
            end
        end)
    end
end)
