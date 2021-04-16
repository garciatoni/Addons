--[[
Achievement Functions

	CanShowAchievementUI() - Returns if the AchievementUI can be displayed
	ClearAchievementComparisonUnit() - Remove the unit being compared.
	GetAchievementCategory(achievementID) - Return the category number the requested achievement belongs to.
	GetAchievementComparisonInfo(achievementID, comparisonNum) - Return the status of the achievement for the comparison player.
	GetAchievementCriteriaInfo(achievementID, criteriaNum) - Return information about the requested criteria.
	GetAchievementInfo((achievementID) or (category, offset) - Return information about the requested Achievement.
	GetAchievementInfoFromCriteria(id) - Return information about the requested Achievement.
	GetAchievementLink(achievementID) - Returns a link for the specified Achievement.
	GetAchievementNumCriteria(achievementID) - Return the number of criteria the requested Achievement has.
	GetCategoryInfo(category) - Return information about the requested category
	GetCategoryList() - Returns the list of Achievement categories.
	GetCategoryNumAchievements(category) - Return the number of Achievements, and number completed for the specific category.
	GetComparisonAchievementPoints() - Return the total number of achievement points the comparison unit has earned.
	GetComparisonStatistic(achievementID) - Return the value of the requested statistic for the comparison player.
	GetCriteriaComparisonInfo(achievementID, criteriaNum, comparisonIndex) - Return information about the requested criteria for the comparison unit.
	GetLatestCompletedAchievements() - Return the ID's of the last 5 completed Achievements.
	GetLatestUpdatedStats() - Return the ID's of the last 5 updated Statistics.
	GetNumCompletedAchievements() - Return the total number of Achievements, and number completed.
	GetPreviousAchievement(achievementID) - Return previous related achievements.
	GetStatistic(achievementID) - Return the value of the requested statistic.
	GetStatisticsCategoryList() - Returns the list of Statistic categories.
	GetTotalAchievementPoints() - Return the total number of achievement points earned.
	GetTrackedAchievement() - Return the AchievementID of the currently tracked achievement.
	SetTrackedAchievment(achievementId) - Set the Achievement to be tracked.
--]]

--
--NOTE:achievements.lua is the lua table of achievements.
--
dofile('achievements.lua');


-- CanShowAchievementUI() [FULL] --
function CanShowAchievementUI()
		return true;
end

-- ClearAchievementComparisonUnit() [DUD] --
function ClearAchievementComparisonUnit()
end

-- GetAchievementCategory(achievementID) [FULL] --
function GetAchievementCategory(achievementID)
	for a,_ in ipairs(achievements) do
		if achievements[a].id == achievementID then
			print("found")
			return achievements[a].category
		end
	end
	return "-1" --not a valid achievement
end

-- GetAchievementComparisonInfo(achievementID, comparisonNum) [DUD] --
function GetAchievementComparisonInfo(achievementID, comparisonNum)
end

-- GetAchievementCriteriaInfo(achievementID, criteriaNum) [DUD] --
function GetAchievementCriteriaInfo(achievementID, criteriaNum)
end

-- GetAchievementInfo(achievementID) [DUD] --
function GetAchievementInfo(achievementID)
end

-- GetAchievementInfo(category,offset) [DUD] --
function GetAchievementInfo(category,offset)
end

-- GetAchievementInfoFromCriteria(id) [DUD] --
function GetAchievementInfoFromCriteria(id)
end

-- GetAchievementLink(achievementID) [DUD] --
function GetAchievementLink(achievementID)
end

-- GetAchievementNumCriteria(achievementID) [DUD] --
function GetAchievementNumCriteria(achievementID)
end

-- GetCategoryInfo(category) [PART] --
function GetCategoryInfo(category)
	-- title, Parent CategoryID, ? = GetCategoryInfo(CatID)
	-- returns <string, int, int>
	local names = {"Quests","Dungeons & Raids","Player Vs. Player","General","Reputation","World Events","Professions","Exploration"}
	local list = GetCategoryList()
	for i in ipairs(list) do
		if list[i] == category then
			return names[i],nil,nil
		else return -1
		end
	end
end

-- GetCategoryList() [FULL] --
function GetCategoryList()
	local list = {"96","168","95","92","201","155","169","97"}
	return list
end

-- GetCategoryNumAchievements(category) [FULL] --
function GetCategoryNumAchievements(category)
	local num = 0
	for a,_ in ipairs(achievements) do
		if achievements[a].category == category then
			num = num + 1
		end
	end
	return num
end

-- GetComparisonAchievementPoints() [DUD] --
function GetComparisonAchievementPoints()
end

-- GetComparisonStatistic(achievementID) [DUD] --
function GetComparisonStatistic(achievementID)
end

-- GetCriteriaComparisonInfo(achievementID, criteriaNum, comparisonIndex) [DUD] --
function GetCriteriaComparisonInfo(achievementID, criteriaNum, comparisonIndex)
end

-- GetLatestCompletedAchievements() [DUD] --
function GetLatestCompletedAchievements()
end

-- GetLatestUpdatedStats() [DUD] --
function GetLatestUpdatedStats()
end

-- GetNumCompletedAchievements() [DUD] --
function GetNumCompletedAchievements()
end

-- GetPreviousAchievement(achievementID) [DUD] --
function GetPreviousAchievement(achievementID)
end

-- GetStatistic(achievementID) [DUD] --
function GetStatistic(achievementID)
end

-- GetStatisticsCategoryList() [DUD] --
function GetStatisticsCategoryList()
end

-- GetTotalAchievementPoints() [DUD] --
function GetTotalAchievementPoints()
end

-- GetTrackedAchievement() [DUD] --
function GetTrackedAchievement()
end

-- SetTrackedAchievment(achievementId) [DUD] --
function SetTrackedAchievment(achievementId)
end