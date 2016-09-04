local STRINGS = GLOBAL.STRINGS
local RECIPETABS = GLOBAL.RECIPETABS
local Ingredient = GLOBAL.Ingredient
local TECH = GLOBAL.TECH
local TUNING = GLOBAL.TUNING

PrefabFiles = {
	"houndstoothhat",
}

local houndstoothhat = AddRecipe("houndstoothhat",
	{ Ingredient("log",5), Ingredient("houndstooth",5),Ingredient("rope",3)},
	GLOBAL.RECIPETABS.WAR,
	GLOBAL.TECH.SCIENCE_TWO,
	"houndstoothhat_placer",
	nil,
	nil,
	nil,
	nil,
	"images/inventoryimages/houndstoothhat.xml",
	"houndstoothhat.tex"
)

if GetModConfigData("HAT DUARBILITY") == 1 then
	TUNING.houndstoothhat = TUNING.ARMORDRAGONFLY
else
	TUNING.houndstoothhat = TUNING.ARMORMARBLE
end


if GetModConfigData("HAT ABOSORBATION") == 1 then
	TUNING.houndstoothhat_ABSORPTION = TUNING.ARMORDRAGONFLY_ABSORPTION
else
	TUNING.houndstoothhat_ABSORPTION = TUNING.ARMORMARBLE_ABSORPTION
end
