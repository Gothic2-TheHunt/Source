
instance ITRW_BT_BOW_01(C_Item)
{
	name = "Eagle Bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_EAGLEBOW;
	damageTotal = DAMAGE_EAGLEBOW;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	on_equip = equip_bow_04;
	on_unequip = unequip_bow_04;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_EAGLEBOW;
	visual = "ItRw_Bow_L_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_NEW_BONUS_BOW;
	count[4] = Waffenbonus_04;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITRW_BT_BOW_02(C_Item)
{
	name = "Marksman's Bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_MARKSMANBOW;
	damageTotal = DAMAGE_MARKSMANBOW;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	on_equip = equip_bow_05;
	on_unequip = unequip_bow_05;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_MARKSMANBOW;
	visual = "ItRw_Bow_M_03.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_NEW_BONUS_BOW;
	count[4] = Waffenbonus_05;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITRW_BT_BOW_03(C_Item)
{
	name = "Assassin's Bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_KILLBOW;
	damageTotal = DAMAGE_KILLBOW;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	on_equip = equip_bow_06;
	on_unequip = unequip_bow_06;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_KILLBOW;
	visual = "ItRw_Bow_M_04.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_NEW_BONUS_BOW;
	count[4] = Waffenbonus_06;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITRW_BT_BOW_04(C_Item)
{
	name = "Deadly Seeker";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_DEADLYSEEKER;
	damageTotal = DAMAGE_DEADLYSEEKER;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	on_equip = equip_bow_07;
	on_unequip = unequip_bow_07;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_DEADLYSEEKER;
	visual = "ItRw_Bow_H_01.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_NEW_BONUS_BOW;
	count[4] = Waffenbonus_07;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITRW_BT_BOW_05(C_Item)
{
	name = "Ranger's Bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_RANGERBOW;
	damageTotal = DAMAGE_RANGERBOW;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	on_equip = equip_bow_08;
	on_unequip = unequip_bow_08;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_RANGERBOW;
	visual = "ItRw_Bow_H_03.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_NEW_BONUS_BOW;
	count[4] = Waffenbonus_08;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITRW_BT_BOW_06(C_Item)
{
	name = "Partha";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_PARTHA;
	damageTotal = DAMAGE_PARTHA;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	on_equip = equip_bow_10;
	on_unequip = unequip_bow_10;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_PARTHA;
	visual = "ItRw_Bow_H_04.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_NEW_BONUS_BOW;
	count[4] = Waffenbonus_10;
	text[5] = NAME_Value;
	count[5] = value;
};

