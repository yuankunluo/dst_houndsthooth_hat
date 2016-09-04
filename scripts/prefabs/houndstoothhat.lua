local assets =
{
	Asset("ANIM", "anim/houndstoothhat.zip"),
--	Asset("ANIM", "anim/hat_rock_swap.zip"),

	Asset("ATLAS", "images/inventoryimages/houndstoothhat.xml"),
	Asset("IMAGE", "images/inventoryimages/houndstoothhat.tex"),
}


local function fn()
  local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_hat", "houndstoothhat", "swap_hat")
    owner.AnimState:Show("HAT")
    owner.AnimState:Show("HAT_HAIR")
    owner.AnimState:Hide("HAIR_NOHAT")
    owner.AnimState:Hide("HAIR")

    if owner:HasTag("player") then
			owner.AnimState:Hide("HEAD")
			owner.AnimState:Show("HEAD_HAT")
		end
  end -- END onequip(inst, owner)

  local function onunequip(inst, owner)
		owner.AnimState:Hide("HAT")
		owner.AnimState:Hide("HAT_HAIR")
		owner.AnimState:Show("HAIR_NOHAT")
		owner.AnimState:Show("HAIR")

		if owner:HasTag("player") then
			owner.AnimState:Show("HEAD")
			owner.AnimState:Hide("HEAD_HAT")
		end
	end -- END onunequip

  local inst = CreateEntity()
  inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()

  MakeInventoryPhysics(inst)
  inst.AnimState:SetBank("houndstoothhat")
  inst.AnimState:SetBuild("houndstoothhat")
	inst.AnimState:PlayAnimation("idle")

  inst:AddTag("hat")
  inst.entity:SetPristine()

  if not TheWorld.ismastersim then
		return inst
	end

  inst:AddComponent("inspectable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/houndstoothhat.xml"
	inst.components.inventoryitem.imagename = "houndstoothhat"

	inst:AddComponent("tradable")

	inst:AddComponent("armor")
	inst.components.armor:InitCondition(TUNING.ARMOR_FOOTBALLHAT, TUNING.ARMOR_FOOTBALLHAT_ABSORPTION)

    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

	inst:AddComponent("waterproofer")
    inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_SMALL*2)

    inst:AddComponent("fuel")
    inst.components.fuel.fuelvalue = TUNING.MED_LARGE_FUEL

	MakeHauntableLaunch(inst)

    return inst

end
