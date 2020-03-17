
var int Cronos_NW_ItemsGiven_Chapter_1;
var int Cronos_NW_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Addon_Cronos_NW(var C_Npc slf)
{
	if((Kapitel >= 1) && (Cronos_NW_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Flask,15);
		CreateInvItems(slf,ItMi_Sulfur,2);
		CreateInvItems(slf,ItPo_Mana_01,5);
		CreateInvItems(slf,ItPo_Health_01,6);
		CreateInvItems(slf,ItMi_Pitch,1);
		CreateInvItems(slf,ItSc_Light,5);
		CreateInvItems(slf,ItSc_Firebolt,5);
		CreateInvItems(slf,ItSc_Zap,5);
		CreateInvItems(slf,ItSc_InstantFireball,2);
		CreateInvItems(slf,ItSc_LightHeal,5);
		CreateInvItems(slf,ItSc_SumGobSkel,3);
		CreateInvItems(slf,ItSc_Icelance,3);
		CreateInvItems(slf,ItSc_Whirlwind,1);
		Cronos_NW_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 1) && (Cronos_NW_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItMi_Flask,10);
		CreateInvItems(slf,ItPo_Mana_02,4);
		CreateInvItems(slf,ItPo_Health_02,4);
		CreateInvItems(slf,ItSc_Light,2);
		CreateInvItems(slf,ItSc_Firebolt,5);
		CreateInvItems(slf,ItSc_InstantFireball,3);
		CreateInvItems(slf,ItSc_Zap,5);
		CreateInvItems(slf,ItSc_SumGobSkel,4);
		CreateInvItems(slf,ItSc_Icelance,4);
		Cronos_NW_ItemsGiven_JoinGuild = TRUE;
	};
};

