
instance ITRW_CT_CROSSBOW_01(C_Item)
{
	name = "Militiaman's Crossbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = VALUE_MILICROSSBOW;
	damageTotal = DAMAGE_MILICROSSBOW;
	damagetype = DAM_POINT;
	munition = ItRw_Bolt;
	on_equip = equip_crossbow_04;
	on_unequip = unequip_crossbow_04;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_MILICROSSBOW;
	visual = "ItRw_Mil_Crossbow.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_NEW_BONUS_CROSSBOW;
	count[4] = Waffenbonus_04;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITRW_CT_CROSSBOW_02(C_Item)
{
	name = "Sharp Crossbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = VALUE_SHARPCROSSBOW;
	damageTotal = DAMAGE_SHARPCROSSBOW;
	damagetype = DAM_POINT;
	munition = ItRw_Bolt;
	on_equip = equip_crossbow_05;
	on_unequip = unequip_crossbow_05;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_SHARPCROSSBOW;
	visual = "ItRw_Crossbow_M_01.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_NEW_BONUS_CROSSBOW;
	count[4] = Waffenbonus_05;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITRW_CT_CROSSBOW_03(C_Item)
{
	name = "Orc Crossbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = VALUE_ORCCROSSBOW;
	damageTotal = DAMAGE_ORCCROSSBOW;
	damagetype = DAM_POINT;
	munition = ItRw_Bolt;
	on_equip = equip_crossbow_06;
	on_unequip = unequip_crossbow_06;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_ORCCROSSBOW;
	visual = "ItRw_Crossbow_H_01.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_NEW_BONUS_CROSSBOW;
	count[4] = Waffenbonus_06;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITRW_CT_CROSSBOW_04(C_Item)
{
	name = "Master Crossbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = VALUE_MASTERCROSSBOW;
	damageTotal = DAMAGE_MASTERCROSSBOW;
	damagetype = DAM_POINT;
	munition = ItRw_Bolt;
	on_equip = equip_crossbow_08;
	on_unequip = unequip_crossbow_08;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_MASTERCROSSBOW;
	visual = "ItRw_Crossbow_M_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_NEW_BONUS_CROSSBOW;
	count[4] = Waffenbonus_08;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITRW_CT_CROSSBOW_05(C_Item)
{
	name = "The Heartseeker";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = VALUE_HEARTSEEKER;
	damageTotal = DAMAGE_HEARTSEEKER;
	damagetype = DAM_POINT;
	munition = ItRw_Bolt;
	on_equip = equip_crossbow_10;
	on_unequip = unequip_crossbow_10;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_HEARTSEEKER;
	visual = "ItRw_Crossbow_H_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_NEW_BONUS_CROSSBOW;
	count[4] = Waffenbonus_10;
	text[5] = NAME_Value;
	count[5] = value;
};

