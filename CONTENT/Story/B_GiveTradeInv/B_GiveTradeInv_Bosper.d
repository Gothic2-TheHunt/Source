
var int Bosper_ItemsGiven_Chapter_1;
var int Bosper_ItemsGiven_Chapter_2;
var int Bosper_ItemsGiven_Chapter_3;
var int Bosper_ItemsGiven_Chapter_4;
var int Bosper_ItemsGiven_Chapter_5;
var int Bosper_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Bosper(var C_Npc slf)
{
	if((Kapitel >= 1) && (Bosper_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,50);
		CreateInvItems(slf,ItRw_Arrow,100);
		CreateInvItems(slf,ItRw_Bolt,100);
		CreateInvItems(slf,ItRw_Bow_L_01,2);
		CreateInvItems(slf,ItRw_Bow_L_02,2);
		CreateInvItems(slf,ItRw_Sld_Bow,2);
		CreateInvItems(slf,ItRw_Bow_L_03,2);
		CreateInvItems(slf,ItRw_Bow_L_04,2);
		CreateInvItems(slf,ItRi_Dex_01,1);
		CreateInvItems(slf,ItBe_Addon_DEX_5,1);
		CreateInvItems(slf,ItBE_Addon_Leather_01,1);
		//CreateInvItems(slf,ITRW_BT_BOW_01,1);
		//CreateInvItems(slf,ITRW_BT_BOW_02,1);
		Bosper_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 1) && (Bosper_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItMi_Gold,50);
		CreateInvItems(slf,ItRw_Arrow,100);
		CreateInvItems(slf,ItRw_Bolt,100);
		CreateInvItems(slf,ItRw_Bow_M_01,2);
		CreateInvItems(slf,ItRi_Dex_02,1);
		//CreateInvItems(slf,ITRW_BT_BOW_01,1);
		//CreateInvItems(slf,ITRW_BT_BOW_02,1);
		Bosper_ItemsGiven_JoinGuild = TRUE;
	};
	if((Kapitel >= 2) && (Bosper_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItRw_Arrow,150);
		CreateInvItems(slf,ItRw_Bolt,150);
		CreateInvItems(slf,ItRw_Bow_M_02,2);
		CreateInvItems(slf,ItRw_Bow_M_03,2);
		CreateInvItems(slf,ItRw_Bow_M_04,2);
		CreateInvItems(slf,ItBe_Addon_DEX_10,1);
		//CreateInvItems(slf,ITRW_BT_BOW_03,1);
		//CreateInvItems(slf,ITRW_BT_BOW_04,1);
		Bosper_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Bosper_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItRw_Arrow,300);
		CreateInvItems(slf,ItRw_Bolt,300);
		CreateInvItems(slf,ItRw_Bow_H_01,2);
		CreateInvItems(slf,ItRw_Bow_H_02,2);
		CreateInvItems(slf,ItRw_Bow_H_03,2);
		//CreateInvItems(slf,ITRW_BT_BOW_05,1);
		Bosper_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Bosper_ItemsGiven_Chapter_4 == FALSE))
	{		
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItRw_Arrow,300);
		CreateInvItems(slf,ItRw_Bolt,300);
		CreateInvItems(slf,ItRw_Bow_H_04,2);
		//CreateInvItems(slf,ITRW_BT_BOW_06,1);
		Bosper_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Bosper_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItRw_Arrow,300);
		CreateInvItems(slf,ItRw_Bolt,300);
		Bosper_ItemsGiven_Chapter_5 = TRUE;
	};
};

