local f=CreateFrame("Frame")
local ticker
f:SetScript("OnEvent", function(self, event)
	ticker = C_Timer.NewTicker(0, function()
		if MerchantFrame:IsVisible() then
			SetMerchantFilter(LE_LOOT_FILTER_ALL)
			MerchantFrame.page = 1;
			MerchantFrame_Update()
			ticker:Cancel()
		end
	end)
end)
f:RegisterEvent("MERCHANT_SHOW")