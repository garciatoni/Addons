-- Default locale
local ADDON_NAME, PRIVATE_TABLE = ...
local L = {}
-- Strings for fade options
L["FadeBuffTitle"] = "Fade Out"
L["FadeBuffDesc"] = "Fade out buffs that weren't cast by you."
L["FadeDebuffTitle"] = "Fade Out"
L["FadeDebuffDesc"] = "Fade out debuffs that weren't cast by you."
L["FadeOpacBuffTitle"] = "Fade Opacity"
L["FadeOpacBuffDesc"] = "How faded the buffs will appear."
L["FadeOpacDebuffTitle"] = "Fade Opacity"
L["FadeOpacDebuffDesc"] = "How faded the debuffs will appear."
-- Strings for darkening options
L["DarkBuffTitle"] = "Darken"
L["DarkBuffDesc"] = "Darken buffs that weren't cast by you."
L["DarkDebuffTitle"] = "Darken"
L["DarkDebuffDesc"] = "Darken debuffs that weren't cast by you."
L["DarkAmountBuffTitle"] = "Darken Amount"
L["DarkAmountBuffDesc"] = "How dark the buffs will appear."
L["DarkAmountDebuffTitle"] = "Darken Amount"
L["DarkAmountDebuffDesc"] = "How dark the debuffs will appear."
-- Strings for desaturation options
L["DesatBuffTitle"] = "Desaturate"
L["DesatBuffDesc"] = "Desaturate buffs that weren't cast by you."
L["DesatDebuffTitle"] = "Desaturate"
L["DesatDebuffDesc"] = "Desaturate debuffs that weren't cast by you."
-- Strings for ignore options
L["IgnoreBossBuffTitle"] = "Ignore Boss Buffs"
L["IgnoreBossBuffDesc"] = "Don't apply these effects to buffs cast by a boss."
L["IgnoreBossDebuffTitle"] = "Ignore Boss Debuffs"
L["IgnoreBossDebuffDesc"] = "Don't apply these effects to debuffs cast by a boss."
L["IgnoreRemBuffTitle"] = "Ignore Removable Buffs"
L["IgnoreRemBuffDesc"] = "Don't apply these effects to buffs that are removable."
L["IgnoreRemDebuffTitle"] = "Ignore Curable Debuffs"
L["IgnoreRemDebuffDesc"] = "Don't apply these effects to debuffs that are curable."

PRIVATE_TABLE.L = L
