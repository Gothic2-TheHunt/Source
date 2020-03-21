
var int Jora_ItemsGiven_Chapter_1;
var int Jora_ItemsGiven_Chapter_2;
var int Jora_ItemsGiven_Chapter_3;
var int Jora_ItemsGiven_Chapter_4;
var int Jora_ItemsGiven_Chapter_5;
var int Jora_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Jora(var C_Npc slf)
{
	if((Kapitel >= 1) && (Jora_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItSc_Light,1);
		CreateInvItems(slf,ItPl_Health_Herb_01,2);
		CreateInvItems(slf,ItPl_Mushroom_01,5);
		CreateInvItems(slf,ItFoMutton,8);
		CreateInvItems(slf,ItRw_Arrow,100);
		CreateInvItems(slf,ItRw_Bolt,100);
		CreateInvItems(slf,ItMw_ShortSword3,2);
		CreateInvItems(slf,ItMw_1h_Sld_Axe,2);
		CreateInvItems(slf,ItMw_Richtstab,2);
		CreateInvItems(slf,ItRw_Bow_L_02,2);
		CreateInvItems(slf,ItRw_Bow_L_03,2);
		CreateInvItems(slf,ItRw_Crossbow_L_01,2);
		CreateInvItems(slf,ItRw_Crossbow_L_02,2);
		Jora_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 1) && (Jora_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItSc_Light,1);
		CreateInvItems(slf,ItRw_Bow_M_01,2);
		CreateInvItems(slf,ItPl_Health_Herb_02,2);
		CreateInvItems(slf,ItPl_Mushroom_01,3);
		CreateInvItems(slf,ItPl_Mushroom_02,2);
		CreateInvItems(slf,ItAm_Prot_Point_01,1);
		CreateInvItems(slf,ItRw_Arrow,100);
		CreateInvItems(slf,ItRw_Bolt,100);
		Jora_ItemsGiven_JoinGuild = TRUE;
	};
	if((Kapitel >= 2) && (Jora_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItMiSwordraw,1);
		CreateInvItems(slf,ItRw_Bow_M_02,2);
		CreateInvItems(slf,ItRw_Bow_M_03,2);
		CreateInvItems(slf,ItRw_Bow_H_01,2);
		CreateInvItems(slf,ItPl_Health_Herb_01,3);
		CreateInvItems(slf,ItPl_Mushroom_01,4);
		CreateInvItems(slf,ItPl_Mushroom_02,2);
		CreateInvItems(slf,ItFo_FishSoup,3);
		CreateInvItems(slf,ItRw_Arrow,160);
		CreateInvItems(slf,ItRw_Bolt,160);
		Jora_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Jora_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFo_Wine,1);
		CreateInvItems(slf,ItRw_Bow_H_02,2);
		CreateInvItems(slf,ItRw_Bow_H_03,2);
		CreateInvItems(slf,ItRw_Crossbow_H_01,2);
		CreateInvItems(slf,ItPl_Mana_Herb_01,4);
		CreateInvItems(slf,ItPl_Health_Herb_02,3);
		CreateInvItems(slf,ItRw_Arrow,260);
		CreateInvItems(slf,ItRw_Bolt,260);
		Jora_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Jora_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItMi_Rockcrystal,1);
		CreateInvItems(slf,ItPl_Mana_Herb_02,4);
		CreateInvItems(slf,ItPl_Health_Herb_03,5);
		CreateInvItems(slf,ItRw_Arrow,60);
		CreateInvItems(slf,ItPl_Mushroom_01,4);
		CreateInvItems(slf,ItRw_Bolt,60);
		CreateInvItems(slf,ItBe_Addon_STR_10,1);
		Jora_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Jora_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItMi_Coal,3);
		CreateInvItems(slf,ItMi_Pitch,2);
		CreateInvItems(slf,ItPl_Health_Herb_03,5);
		CreateInvItems(slf,ItPl_Mana_Herb_03,5);
		CreateInvItems(slf,ItRw_Arrow,160);
		CreateInvItems(slf,ItRw_Bolt,160);
		Jora_ItemsGiven_Chapter_5 = TRUE;
	};
};

