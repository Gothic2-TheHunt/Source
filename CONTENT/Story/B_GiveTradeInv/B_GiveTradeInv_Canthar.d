
var int Canthar_ItemsGiven_Chapter_1;
var int Canthar_ItemsGiven_Chapter_2;
var int Canthar_ItemsGiven_Chapter_3;
var int Canthar_ItemsGiven_Chapter_4;
var int Canthar_ItemsGiven_Chapter_5;
var int Canthar_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Canthar(var C_Npc slf)
{
	if((Kapitel >= 0) && (Canthar_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItPl_Beet,10);
		CreateInvItems(slf,ItFo_Wine,5);
		CreateInvItems(slf,ItMi_Pan,1);
		CreateInvItems(slf,ItMi_Flask,5);
		CreateInvItems(slf,ItMi_Saw,1);
		CreateInvItems(slf,ItRw_Bolt,50);
		CreateInvItems(slf,ItMw_ShortSword4,2);
		CreateInvItems(slf,ItMw_ShortSword5,2);
		CreateInvItems(slf,ItMw_1h_Vlk_Sword,2);
		CreateInvItems(slf,ItMw_Nagelkeule,2);
		CreateInvItems(slf,ItMw_Kriegshammer1,2);
		CreateInvItems(slf,ItMw_Hellebarde,2);
		Canthar_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 0) && (Canthar_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItFo_Wine,2);
		CreateInvItems(slf,ItMi_Flask,10);
		CreateInvItems(slf,ItAm_Prot_Mage_01,1);
		Canthar_ItemsGiven_JoinGuild = TRUE;
	};
	if((Kapitel >= 2) && (Canthar_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItRw_Bolt,100);
		CreateInvItems(slf,ItMw_Piratensaebel,2);
		CreateInvItems(slf,ItMw_Nagelkeule2,2);
		CreateInvItems(slf,ItMW_Addon_Hacker_2h_02,2);
		CreateInvItems(slf,ItMw_Addon_PIR2hAxe,2);
		CreateInvItems(slf,ItMw_Schwert,2);
		CreateInvItems(slf,ItMW_Addon_Hacker_1h_01,2);
		Canthar_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Canthar_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItRw_Bolt,150);
		CreateInvItems(slf,ItMw_Streitkolben,2);
		CreateInvItems(slf,ItMw_Zweihaender3,2);
		CreateInvItems(slf,ItMw_Krummschwert,2);
		Canthar_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Canthar_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItRw_Bolt,100);
		Canthar_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Canthar_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		Canthar_ItemsGiven_Chapter_5 = TRUE;
	};
};

