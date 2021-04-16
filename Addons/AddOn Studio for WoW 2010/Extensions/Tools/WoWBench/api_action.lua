--[[
  Action Functions

These functions are those which operate with the action buttons (General player actions are likely in the Activity Functions section below).
	ActionHasRange(slot)   - Determine if the specified action is a range restriction (1 if yes, nil if no)
	PROTECTED CameraOrSelectOrMoveStart()   - Begin "Left click" in the 3D world. (1.10 - Protected)
	PROTECTED CameraOrSelectOrMoveStop([stickyFlag])   - End "Left click" in the 3D world. (1.10 - Protected)
	ChangeActionBarPage()   - Changes the current action bar page.
	GetActionBarPage()   - Return the current action bar page. CURRENT_ACTIONBAR_PAGE is obsolete.
	GetActionBarToggles()   - Return the toggles for each action bar.
	GetActionCooldown(slot)   - This returns the cooldown values of the specified action..
	GetActionCount(slot)   - Get the count (bandage/potion/etc) for an action, returns 0 if none or not applicable.
	GetActionInfo(slot)   - Returns type, id, subtype.
	GetActionText(slot)   - Get the text label (macros, etc) for an action, returns nil if none.
	GetActionTexture(slot)   - Gets the texture path for the specified action.
	GetBonusBarOffset()   - Determine which page of bonus actions to show.
	GetMouseButtonClicked()   -Returns the name of the button that triggered a mouse down/up/click/doubleclick event. (NEW 2.0.3)
	GetPossessInfo(index)   - Returns texture, name, enabled.
	HasAction(slot)   - Returns 1 if the player has an action in the specified slot, nil otherwise.
	IsActionInRange(slot,[unit])   - Test if an action is in range (1=yes, 0=no, nil=not applicable).
	IsAttackAction(slot)   - Return 1 if an action is an 'attack' action (flashes during combat), nil otherwise.
	IsAutoRepeatAction(slot)   - Return 1 if an action is auto-repeating, nil otherwise.
	IsCurrentAction(slot)   - Return 1 if an action is the one currently underway, nil otherwise.
	IsConsumableAction(slot)   - Return 1 if an action is consumable (i.e. has a count), nil otherwise.
	IsEquippedAction(slot)   - Return 1 if an action is equipped (i.e. connected to an item that must be equipped), nil otherwise.
	IsUsableAction(slot)   - Return 1 if an action can be used at present, nil otherwise.
	PetHasActionBar()   - Determine if player has a pet with an action bar.
	PickupAction(slot)   - Drags an action out of the specified quickbar slot and holds it on the cursor.
	PickupPetAction(slot)   - Drags an action from the specified pet action bar slot into the cursor.
	PlaceAction(slot)   - Drops an action from the cursor into the specified quickbar slot.
	SetActionBarToggles(show1,show2,show3,show4[, alwaysShow])   - Set show toggle for each action bar   - 'alwaysShow' added in 1.12
	StopAttack() - Turns off auto-attack, if currently active. Has no effect is the player does not currently have auto-attack active.
	PROTECTED TurnOrActionStart()   - Begin "Right Click" in the 3D world. (1.10 - Protected)
	PROTECTED TurnOrActionStop()   - End "Right Click" in the 3D world. (1.10 - Protected)
	PROTECTED UseAction(PARAMS EXCLUDED HERE DUE TO CAUSING COMMENT ISSUES -.-) - This instructs the interface to use the action associated with the specified ID, optionally on the player (regardless of target)(2.0 - Protected).
--]]

-- ActionHasRange(slot) [DUD] --
function ActionHasRange(slot)
end

-- CameraOrSelectOrMoveStart() [DUD] --
function CameraOrSelectOrMoveStart()
end

-- CameraOrSelectOrMoveStop(stickyFlag) [DUD] --
function CameraOrSelectOrMoveStop(...)
end

-- ChangeActionBarPage(page) [FULL] --
function ChangeActionBarPage(page)
	CURRENT_ACTIONBAR_PAGE = page
end

-- GetActionBarPage() [FULL] --
function GetActionBarPage()
	return CURRENT_ACTIONBAR_PAGE
end

-- GetActionBarToggles() [DUD] --
function GetActionBarToggles()
end

-- GetActionCooldown(slot) [DUD] --
function GetActionCooldown(slot)
end

-- GetActionCount(actionSlot) [DUD] --
function GetActionCount(actionSlot)
	return 0;
end

-- GetActionInfo(slot) [DUD] --
function GetActionInfo(slot)
end

-- GetActionText(nSlot) [DUD] --
function GetActionText(nSlot)
	return "";
end
-- GetActionTexture(nSlot) [DUD] --
function GetActionTexture(nSlot)
end

-- GetBonusBarOffset() [DUD] --
function GetBonusBarOffset()
	return 0;
end

-- GetMouseButtonClicked() [DUD] --
function GetMouseButtonClicked()
end

-- GetPossessInfo(i) [DUD] --
function GetPossessInfo(i)
		return nil;
end

-- HasAction(nSlot) [DUD] --
function HasAction(nSlot)
	return nil;
end

-- IsActionInRange(slot) [FULL] --
function IsActionInRange(slot)
	IsActionInRange(slot,nil)
end

-- IsActionInRange(slot,unit) [DUD] --
function IsActionInRange(slot,unit)
end

-- IsAttackAction(actionSlot) [DUD] --
function IsAttackAction(actionSlot)
	return nil;
end
-- IsAutoRepeatAction(actionSlot) [DUD] --
function IsAutoRepeatAction(actionSlot)
	return nil;
end

-- IsCurrentAction(actionSlot) [DUD] --
function IsCurrentAction(actionSlot)
	return nil;
end

-- IsConsumableAction(nSlot) [DUD] --
function IsConsumableAction(nSlot)
	return nil;
end

-- IsEquippedAction(nSlot) [DUD] --
function IsEquippedAction(nSlot)
	return nil;
end

-- IsUsableAction(slot) [DUD] --
function IsUsableAction(slot)
end

-- PetHasActionBar() [DUD] --
function PetHasActionBar()
	return false;
end

-- PickupAction(slot) [DUD] --
function PickupAction(slot)
end

-- PickupPetAction(slot) [DUD] --
function PickupPetAction(slot)
end

-- PlaceAction(slot) [DUD] --
function PlaceAction(slot)
end

-- SetActionBarToggles(show1,show2,show3,show4, alwaysShow) [DUD] --
function SetActionBarToggles(...)
end

-- StopAttack() [DUD] --
function StopAttack()
end

-- TurnOrActionStart() [DUD] --
function TurnOrActionStart()
end

-- TurnOrActionStop() [DUD] --
function TurnOrActionStop()
end

-- UseAction(slot[, checkCursor[, onSelf]]) [DUD] --
function UseAction(slot, ...)
end