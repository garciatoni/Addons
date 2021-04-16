local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
--@@ONLYDEVSTART
ZGV.DevEnd()
--@@ONLYDEVEND

ZygorGuidesViewer.GuideMenuTier = "SHA"

