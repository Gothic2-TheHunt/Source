
var int Sengrath_ItemsGiven_Chapter_1;
var int Sengrath_ItemsGiven_Chapter_2;
var int Sengrath_ItemsGiven_Chapter_3;
var int Sengrath_ItemsGiven_Chapter_4;
var int Sengrath_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Sengrath(var C_Npc slf)
{
	if((Kapitel >= 1) && (Sengrath_ItemsGiven_Chapter_1 == FALSE))
	{
		Sengrath_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (Sengrath_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItPo_Mana_01,10);
		CreateInvItems(slf,ItPo_Mana_02,5);
		CreateInvItems(slf,ItPo_Mana_03,3);
		CreateInvItems(slf,ItPo_Health_01,7);
		CreateInvItems(slf,ItPo_Health_02,5);
		CreateInvItems(slf,ItSc_InstantFireball,10);
		CreateInvItems(slf,ItSc_Firestorm,3);
		CreateInvItems(slf,ItSc_ThunderBall,4);
		CreateInvItems(slf,ItSc_Icelance,6);
		CreateInvItems(slf,ItSc_ChargeFireBall,1);
		CreateInvItems(slf,ItSc_Geyser,2);
		CreateInvItems(slf,ItSc_Waterfist,1);
		CreateInvItems(slf,ItSc_SumGobSkel,10);
		CreateInvItems(slf,ItSc_SumWolf,2);
		CreateInvItems(slf,ItSc_Sleep,2);
		CreateInvItems(slf,ItSc_IceCube,2);
		CreateInvItems(slf,ItSc_Windfist,3);
		CreateInvItems(slf,ItSc_MediumHeal,5);
		CreateInvItems(slf,ItSc_LightningFlash,2);
		CreateInvItems(slf,ItPo_Perm_Health,1);
		CreateInvItems(slf,ItRi_Prot_Fire_02,1);
		CreateInvItems(slf,ItBe_Addon_STR_10,1);
		CreateInvItems(slf,ItBe_Addon_Prot_FIRE,1);
		Sengrath_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Sengrath_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItPo_Mana_02,7);
		CreateInvItems(slf,ItPo_Mana_03,5);
		CreateInvItems(slf,ItPo_Health_02,10);
		CreateInvItems(slf,ItPo_Health_03,5);
		CreateInvItems(slf,ItPo_Mana_Addon_04,2);
		CreateInvItems(slf,ItPo_Health_Addon_04,2);
		CreateInvItems(slf,ItWr_StrStonePlate2_Addon,1);
		CreateInvItems(slf,ItSc_Geyser,4);
		CreateInvItems(slf,ItSc_ChargeFireBall,4);
		CreateInvItems(slf,ItSc_Waterfist,4);
		CreateInvItems(slf,ItSc_BreathOfDeath,1);
		CreateInvItems(slf,ItPo_Mana_02,5);
		Sengrath_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Sengrath_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItWr_DexStonePlate3_Addon,1);
		CreateInvItems(slf,ItPo_Mana_02,10);
		CreateInvItems(slf,ItSc_Shrink,1);
		CreateInvItems(slf,ItSc_SumDemon,1);
		CreateInvItems(slf,ItPo_Mana_03,5);
		CreateInvItems(slf,ItPo_Mana_Addon_04,5);
		CreateInvItems(slf,ItPo_Health_Addon_04,5);
		CreateInvItems(slf,ItSc_ArmyOfDarkness,1);
		Sengrath_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Sengrath_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItPo_Mana_Addon_04,5);
		CreateInvItems(slf,ItPo_Health_Addon_04,5);
		CreateInvItems(slf,ItPo_Mana_02,5);
		CreateInvItems(slf,ItPo_Mana_03,5);
		Sengrath_ItemsGiven_Chapter_5 = TRUE;
	};
};

