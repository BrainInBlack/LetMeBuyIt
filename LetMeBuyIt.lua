local f=CreateFrame("Frame")
local ticker
f:SetScript("OnEvent", function(self, event)
	ticker = C_Timer.NewTicker(0, function()
		local frameVisible = MerchantFrame:IsVisible()
		if frameVisible then
			MerchantFrame_SetFilter(MerchantFrame, 1)
			ticker:Cancel()
		end
	end)
end)
f:RegisterEvent("MERCHANT_SHOW")