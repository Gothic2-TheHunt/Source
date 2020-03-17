
var int Zuris_ItemsGiven_Chapter_1;
var int Zuris_ItemsGiven_Chapter_2;
var int Zuris_ItemsGiven_Chapter_3;
var int Zuris_ItemsGiven_Chapter_4;
var int Zuris_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Zuris(var C_Npc slf)
{
	if((Kapitel >= 1) && (Zuris_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItMi_Flask,27);
		CreateInvItems(slf,ItPo_Mana_01,10);
		CreateInvItems(slf,ItPo_Health_01,10);
		CreateInvItems(slf,ItPo_Health_Addon_04,2);
		CreateInvItems(slf,ItPo_Perm_DEX,1);
		CreateInvItems(slf,ItPo_Mana_Addon_04,2);
		CreateInvItems(slf,ItPo_Speed,2);
		CreateInvItems(slf,ItMi_ApfelTabak,2);
		CreateInvItems(slf,ItWr_Astronomy_Mis,1);
		CreateInvItems(slf,ItFo_Addon_Pfeffer_01,1);
		CreateInvItems(slf,ItSc_Light,6);
		CreateInvItems(slf,ItSc_Sleep,3);
		CreateInvItems(slf,ItSc_Firebolt,20);
		CreateInvItems(slf,ItSc_Icelance,5);
		CreateInvItems(slf,ItSc_Icebolt,10);
		CreateInvItems(slf,ItSc_InstantFireball,10);
		CreateInvItems(slf,ItSc_HarmUndead,2);
		CreateInvItems(slf,ItSc_Firestorm,3);
		CreateInvItems(slf,ItSc_Zap,20);
		CreateInvItems(slf,ItSc_Whirlwind,2);
		CreateInvItems(slf,ItSc_IceCube,1);
		CreateInvItems(slf,ItSc_Windfist,3);
		CreateInvItems(slf,ItSc_SumGobSkel,7);
		CreateInvItems(slf,ItSc_SumWolf,5);
		CreateInvItems(slf,ItBe_Addon_Prot_MAGIC,1);
		CreateInvItems(slf,ItAm_Hp_Mana_01,1);
		Zuris_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (Zuris_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,60);
		CreateInvItems(slf,ItMi_Flask,29);
		CreateInvItems(slf,ItSc_SumGobSkel,10);
		CreateInvItems(slf,ItPo_Health_Addon_04,2);
		CreateInvItems(slf,ItPo_Mana_Addon_04,2);
		CreateInvItems(slf,ItPo_Mana_01,15);
		CreateInvItems(slf,ItSc_Sleep,2);
		CreateInvItems(slf,ItSc_Firestorm,8);
		CreateInvItems(slf,ItSc_Icelance,7);
		CreateInvItems(slf,ItPo_Mana_02,1);
		CreateInvItems(slf,ItPo_Health_01,15);
		CreateInvItems(slf,ItSc_SumSkel,1);
		CreateInvItems(slf,ItSc_SumWolf,2);
		CreateInvItems(slf,ItPo_Health_02,2);
		CreateInvItems(slf,ItPo_Perm_Health,1);
		CreateInvItems(slf,ItSc_IceCube,3);
		CreateInvItems(slf,ItMi_ApfelTabak,5);
		CreateInvItems(slf,ItSc_Whirlwind,3);
		CreateInvItems(slf,ItSc_Thunderstorm,1);
		CreateInvItems(slf,ItSc_LightningFlash,5);
		CreateInvItems(slf,ItSc_HarmUndead,2);
		Zuris_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Zuris_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,120);
		CreateInvItems(slf,ItMi_Flask,33);
		CreateInvItems(slf,ItPo_Perm_STR,1);
		CreateInvItems(slf,ItPo_Health_Addon_04,2);
		CreateInvItems(slf,ItPo_Mana_Addon_04,2);
		CreateInvItems(slf,ItPo_Mana_01,25);
		CreateInvItems(slf,ItPo_Mana_02,3);
		CreateInvItems(slf,ItSc_SumGol,1);
		CreateInvItems(slf,ItPo_Health_01,25);
		CreateInvItems(slf,ItPo_Health_02,15);
		CreateInvItems(slf,ItPo_Speed,1);
		CreateInvItems(slf,ItSc_Pyrokinesis,3);
		CreateInvItems(slf,ItSc_Shrink,1);
		Zuris_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Zuris_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,220);
		CreateInvItems(slf,ItMi_Flask,24);
		CreateInvItems(slf,ItPo_Health_Addon_04,3);
		CreateInvItems(slf,ItPo_Mana_Addon_04,3);
		CreateInvItems(slf,ItPo_Mana_01,35);
		CreateInvItems(slf,ItSc_IceWave,1);
		CreateInvItems(slf,ItPo_Mana_02,15);
		CreateInvItems(slf,ItPo_Health_01,35);
		CreateInvItems(slf,ItPo_Health_02,20);
		CreateInvItems(slf,ItPo_Health_03,10);
		Zuris_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Zuris_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,321);
		CreateInvItems(slf,ItPo_Health_Addon_04,5);
		CreateInvItems(slf,ItPo_Mana_Addon_04,5);
		CreateInvItems(slf,ItSc_SumDemon,1);
		CreateInvItems(slf,ItPo_Mana_01,55);
		CreateInvItems(slf,ItPo_Mana_02,35);
		CreateInvItems(slf,ItPo_Mana_03,15);
		CreateInvItems(slf,ItPo_Health_01,55);
		CreateInvItems(slf,ItPo_Health_02,30);
		CreateInvItems(slf,ItPo_Health_03,20);
		CreateInvItems(slf,ItPo_Speed,1);
		Zuris_ItemsGiven_Chapter_5 = TRUE;
	};
};

