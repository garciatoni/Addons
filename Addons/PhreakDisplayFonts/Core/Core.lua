local LSM3 = LibStub("LibSharedMedia-3.0", true)
local LSM2 = LibStub("LibSharedMedia-2.0", true)
local SML = LibStub("SharedMedia-1.0", true)

PhreakDisplayFonts = {}
PhreakDisplayFonts.revision = tonumber(string.sub("$Revision$", 12, -3)) or 1

PhreakDisplayFonts.registry = { ["font"] = {} }

function PhreakDisplayFonts:Register(mediatype, key, data, langmask)
	if LSM3 then
		LSM3:Register(mediatype, key, data, langmask)
	end
	if LSM2 then
		LSM2:Register(mediatype, key, data)
	end
	if SML then
		SML:Register(mediatype, key, data)
	end
	if not PhreakDisplayFonts.registry[mediatype] then
		PhreakDisplayFonts.registry[mediatype] = {}
	end
	table.insert(PhreakDisplayFonts.registry[mediatype], { key, data, langmask })
end

function PhreakDisplayFonts.OnEvent(this, event, ...)
	if not LSM3 then
		LSM3 = LibStub("LibSharedMedia-3.0", true)
		if LSM3 then
			for m, t in pairs(PhreakDisplayFonts.registry) do
				for _, v in ipairs(t) do
					LSM3:Register(m, v[1], v[2], v[3])
				end
			end
		end
	end
	if not LSM2 then
		LSM2 = LibStub("LibSharedMedia-2.0", true)
		if LSM2 then
			for m, t in pairs(PhreakDisplayFonts.registry) do
				for _, v in ipairs(t) do
					LSM2:Register(m, v[1], v[2])
				end
			end
		end
	end
	if not SML then
		SML = LibStub("SharedMedia-1.0", true)
		if SML then
			for m, t in pairs(PhreakDisplayFonts.registry) do
				for _, v in ipairs(t) do
					SML:Register(m, v[1], v[2])
				end
			end
		end
	end
end

PhreakDisplayFonts.frame = CreateFrame("Frame")
PhreakDisplayFonts.frame:SetScript("OnEvent", PhreakDisplayFonts.OnEvent)
PhreakDisplayFonts.frame:RegisterEvent("ADDON_LOADED")
