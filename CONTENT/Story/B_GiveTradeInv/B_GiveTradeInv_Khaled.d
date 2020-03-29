
var int Khaled_ItemsGiven_Chapter_1;
var int Khaled_ItemsGiven_Chapter_2;
var int Khaled_ItemsGiven_Chapter_3;
var int Khaled_ItemsGiven_Chapter_4;
var int Khaled_ItemsGiven_Chapter_5;
var int Khaled_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Khaled(var C_Npc slf)
{
	if((Kapitel >= 1) && (Khaled_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItMw_2h_Bau_Axe,2);
		CreateInvItems(slf,ItMw_2H_Sword_M_01,2);
		CreateInvItems(slf,ItMw_2h_Sld_Sword,2);
		CreateInvItems(slf,ItMw_Kriegskeule,2);
		CreateInvItems(slf,ItMW_Addon_Hacker_1h_02,2);
		CreateInvItems(slf,ItRw_Bow_L_01,2);
		CreateInvItems(slf,ItRw_Crossbow_L_02,2);
		CreateInvItems(slf,ItRw_Arrow,65);
		CreateInvItems(slf,ItRw_Bolt,75);
		CreateInvItems(slf,ItBe_Addon_Prot_Point,1);
		CreateInvItems(slf,ItBE_Addon_Leather_01,2);
		Khaled_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 1) && (Khaled_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItMw_Hellebarde,2);
		CreateInvItems(slf,ItMW_Addon_Hacker_2h_02,2);
		CreateInvItems(slf,ItRw_Bow_L_03,2);
		CreateInvItems(slf,ItRw_Arrow,65);
		CreateInvItems(slf,ItRw_Bolt,75);
		Khaled_ItemsGiven_JoinGuild = TRUE;
	};
	if((Kapitel >= 2) && (Khaled_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,250);
		CreateInvItems(slf,ItRw_Arrow,70);
		CreateInvItems(slf,ItRw_Bolt,130);
		CreateInvItems(slf,ItMw_Zweihaender1,2);
		CreateInvItems(slf,ItMw_Streitaxt1,2);
		CreateInvItems(slf,ItMw_Steinbrecher,2);
		CreateInvItems(slf,ItMw_Zweihaender2,2);
		CreateInvItems(slf,ItMw_Addon_PIR2hSword,2);
		CreateInvItems(slf,ItRw_Bow_M_01,2);
		CreateInvItems(slf,ItMi_Nugget,1);
		CreateInvItems(slf,ItRw_Crossbow_M_02,2);
		CreateInvItems(slf,ItBe_Addon_Prot_EDGE,1);
		CreateInvItems(slf,ItBe_Addon_Prot_EdgPoi,1);
		CreateInvItems(slf,ItRw_Bow_M_03,2);
		Khaled_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Khaled_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,450);
		CreateInvItems(slf,ItMw_Streitaxt2,2);
		CreateInvItems(slf,ItMw_Zweihaender4,2);
		//CreateInvItems(slf,ItMw_Barbarenstreitaxt,2);
		CreateInvItems(slf,ItMw_Streitkolben,2);
		CreateInvItems(slf,ItRw_Arrow,70);
		CreateInvItems(slf,ItMw_Stinger,2);
		CreateInvItems(slf,ItRw_Bow_H_02,2);
		CreateInvItems(slf,ItRw_Bow_H_03,2);
		CreateInvItems(slf,ItRw_Bow_H_04,2);
		CreateInvItems(slf,ItRw_Crossbow_H_02,2);
		CreateInvItems(slf,ItRw_Bolt,100);
		CreateInvItems(slf,ItMi_Nugget,1);
		Khaled_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Khaled_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,700);
		CreateInvItems(slf,ItMiSwordraw,1);
		CreateInvItems(slf,ItMw_Berserkeraxt,2);
		CreateInvItems(slf,ItRw_Arrow,180);
		CreateInvItems(slf,ItRw_Bolt,160);
		CreateInvItems(slf,ItMi_Nugget,2);
		Khaled_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Khaled_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,1100);
		CreateInvItems(slf,ItRw_Arrow,100);
		CreateInvItems(slf,ItRw_Bolt,170);
		Khaled_ItemsGiven_Chapter_5 = TRUE;
	};
};

