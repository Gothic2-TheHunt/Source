
instance DIA_Addon_Nefarius_EXIT(C_Info)
{
	npc = KDW_1402_Addon_Nefarius_NW;
	nr = 999;
	condition = DIA_Addon_Nefarius_EXIT_Condition;
	information = DIA_Addon_Nefarius_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Addon_Nefarius_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Nefarius_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Addon_Nefarius_Hallo(C_Info)
{
	npc = KDW_1402_Addon_Nefarius_NW;
	nr = 5;
	condition = DIA_Addon_Nefarius_Hallo_Condition;
	information = DIA_Addon_Nefarius_Hallo_Info;
	description = "How's it going?";
};


func int DIA_Addon_Nefarius_Hallo_Condition()
{
	return TRUE;
};

func void DIA_Addon_Nefarius_Hallo_Info()
{
	AI_Output(other,self,"DIA_Addon_Nefarius_Hallo_15_00");	//How's it going?
	AI_Output(self,other,"DIA_Addon_Nefarius_Hallo_05_01");	//What are YOU doing here? This is certainly a surprise.
	AI_Output(self,other,"DIA_Addon_Nefarius_Hallo_05_02");	//I thought you had been killed.
	AI_Output(other,self,"DIA_Addon_Nefarius_Hallo_15_03");	//Almost.
	AI_Output(self,other,"DIA_Addon_Nefarius_Hallo_05_04");	//There was quite a fuss about you, you know that? I hardly recognized Saturas, he was so beside himself about that business back then.
};


instance DIA_Addon_Nefarius_keineahnung(C_Info)
{
	npc = KDW_1402_Addon_Nefarius_NW;
	nr = 5;
	condition = DIA_Addon_Nefarius_keineahnung_Condition;
	information = DIA_Addon_Nefarius_keineahnung_Info;
	description = "What sort of portal is that?";
};


func int DIA_Addon_Nefarius_keineahnung_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Addon_Nefarius_Hallo))
	{
		return TRUE;
	};
};

func void DIA_Addon_Nefarius_keineahnung_Info()
{
	AI_Output(other,self,"DIA_Addon_Nefarius_keineahnung_15_00");	//What sort of portal is that?
	AI_Output(self,other,"DIA_Addon_Nefarius_keineahnung_05_01");	//We suspect that it leads to the lost valley where the ancient culture must have had their city.
	AI_Output(self,other,"DIA_Addon_Nefarius_keineahnung_05_02");	//But the stone behind the portal is made of massive rock, yards thick.
	AI_Output(self,other,"DIA_Addon_Nefarius_keineahnung_05_03");	//Also, there are no signs of teleportation magic. Very mysterious...
};


instance DIA_Addon_Nefarius_WieMechanik(C_Info)
{
	npc = KDW_1402_Addon_Nefarius_NW;
	nr = 5;
	condition = DIA_Addon_Nefarius_WieMechanik_Condition;
	information = DIA_Addon_Nefarius_WieMechanik_Info;
	description = "Do you know how to activate it?";
};


func int DIA_Addon_Nefarius_WieMechanik_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Addon_Nefarius_keineahnung))
	{
		return TRUE;
	};
};

func void DIA_Addon_Nefarius_WieMechanik_Info()
{
	AI_Output(other,self,"DIA_Addon_Nefarius_WieMechanik_15_00");	//Do you know how to activate it?
	AI_Output(self,other,"DIA_Addon_Nefarius_WieMechanik_05_01");	//One of the missing ornaments seems to be a sort of magical KEY.
	AI_Output(self,other,"DIA_Addon_Nefarius_WieMechanik_05_03");	//We'll need it to get any farther.
	AI_Output(self,other,"DIA_Addon_Nefarius_WieMechanik_05_02");	//It has to fit exactly into the ring-shaped hollow next to the portal.
};


instance DIA_Addon_Nefarius_SCbringOrnaments(C_Info)
{
	npc = KDW_1402_Addon_Nefarius_NW;
	nr = 5;
	condition = DIA_Addon_Nefarius_SCbringOrnaments_Condition;
	information = DIA_Addon_Nefarius_SCbringOrnaments_Info;
	description = "I brought a part of the ornament.";
};


func int DIA_Addon_Nefarius_SCbringOrnaments_Condition()
{
	if(MIS_Addon_Lares_Ornament2Saturas == LOG_SUCCESS)
	{
		return TRUE;
	};
};

func void DIA_Addon_Nefarius_SCbringOrnaments_Info()
{
	AI_Output(other,self,"DIA_Addon_Nefarius_SCbringOrnaments_15_00");	//I brought a part of the ornament.
	AI_Output(self,other,"DIA_Addon_Nefarius_SCbringOrnaments_05_01");	//(excited) Really? That's terrific.
	AI_Output(other,self,"DIA_Addon_Nefarius_SCbringOrnaments_15_02");	//Do you have any idea where the other parts are?
	AI_Output(self,other,"DIA_Addon_Nefarius_SCbringOrnaments_05_03");	//According to the ancient inscriptions, it was broken into four pieces.
	AI_Output(self,other,"DIA_Addon_Nefarius_SCbringOrnaments_05_04");	//And it looks as though the parts are still to be found on the island...
	AI_Output(self,other,"DIA_Addon_Nefarius_SCbringOrnaments_05_05");	//With Merdarion's help, I have translated some of the inscriptions.
	AI_Output(self,other,"DIA_Addon_Nefarius_SCbringOrnaments_05_06");	//There are hints as to where the remaining pieces are.
	AI_Output(self,other,"DIA_Addon_Nefarius_SCbringOrnaments_05_07");	//Here. I've marked some of the places on this map.
	CreateInvItems(self,ItWr_Map_NewWorld_Ornaments_Addon,1);
	B_GiveInvItems(self,other,ItWr_Map_NewWorld_Ornaments_Addon,1);
	MIS_Addon_Nefarius_BringMissingOrnaments = LOG_Running;
	Log_CreateTopic(TOPIC_Addon_Ornament,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_Ornament,LOG_Running);
	B_LogEntry(TOPIC_Addon_Ornament,"The Water Mages have found a portal that is supposed to lead to an unexplored part of Khorinis.");
	B_LogEntry(TOPIC_Addon_Ornament,"Nefarius wants to activate the portal mechanism using an ornamental ring. He is still missing three fragments of the ring. I am supposed to get them for him. He gave me a map with the places where I should look for the fragments marked.");
	B_StartOtherRoutine(BAU_4300_Addon_Cavalorn,"OrnamentSteinring");
	AI_Output(self,other,"DIA_Addon_Nefarius_SCbringOrnaments_05_08");	//Look around there.
	AI_Output(self,other,"DIA_Addon_Nefarius_SCbringOrnaments_05_09");	//You should pay attention to old structures. They might be somewhat deteriorated and no longer clearly recognizable.
	AI_Output(self,other,"DIA_Addon_Nefarius_SCbringOrnaments_05_10");	//It could be almost anything. A large rock, a stone circle, a mausoleum or something similar.
	AI_Output(self,other,"DIA_Addon_Nefarius_SCbringOrnaments_05_11");	//But, what am I saying? You'll find it. Good luck.
};


instance DIA_Addon_Nefarius_WhyPortalClosed(C_Info)
{
	npc = KDW_1402_Addon_Nefarius_NW;
	nr = 5;
	condition = DIA_Addon_Nefarius_WhyPortalClosed_Condition;
	information = DIA_Addon_Nefarius_WhyPortalClosed_Info;
	description = "Why was the ornament broken?";
};


func int DIA_Addon_Nefarius_WhyPortalClosed_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Addon_Nefarius_SCbringOrnaments))
	{
		return TRUE;
	};
};

func void DIA_Addon_Nefarius_WhyPortalClosed_Info()
{
	AI_Output(other,self,"DIA_Addon_Nefarius_WhyPortalClosed_15_00");	//Why was the ornament broken?
	AI_Output(self,other,"DIA_Addon_Nefarius_WhyPortalClosed_05_01");	//Whoever did it wanted to prevent the portal from ever being opened again.
	AI_Output(self,other,"DIA_Addon_Nefarius_WhyPortalClosed_05_02");	//The longer I stare at the inscriptions, the more I realize that the priests of the ancient culture really were no fools.
	AI_Output(self,other,"DIA_Addon_Nefarius_WhyPortalClosed_05_03");	//There was a good reason that they made the region back there inaccessible.
	AI_Output(self,other,"DIA_Addon_Nefarius_WhyPortalClosed_05_04");	//We don't know what awaits us there. But it certainly isn't anything good...
};


instance DIA_Addon_Nefarius_MissingOrnaments(C_Info)
{
	npc = KDW_1402_Addon_Nefarius_NW;
	nr = 5;
	condition = DIA_Addon_Nefarius_MissingOrnaments_Condition;
	information = DIA_Addon_Nefarius_MissingOrnaments_Info;
	permanent = TRUE;
	description = "About the missing ornaments...";
};


func int DIA_Addon_Nefarius_MissingOrnaments_Condition()
{
	if(MIS_Addon_Nefarius_BringMissingOrnaments == LOG_Running)
	{
		return TRUE;
	};
};


var int MissingOrnamentsCounter;
const int Addon_NefariussMissingOrnamentsOffer = 100;

func void DIA_Addon_Nefarius_MissingOrnaments_Info()
{
	var int MissingOrnamentsCount;
	var int XP_Addon_BringMissingOrnaments;
	var int MissingOrnamentsGeld;
	var string concatText;
	AI_Output(other,self,"DIA_Addon_Nefarius_MissingOrnaments_15_00");	//About the missing ornaments...
	AI_Output(self,other,"DIA_Addon_Nefarius_MissingOrnaments_05_01");	//(expectant) Yes?
	if(Npc_HasItems(other,ItMi_Ornament_Addon) >= 1)
	{
		MissingOrnamentsCount = Npc_HasItems(other,ItMi_Ornament_Addon);
		if(MissingOrnamentsCount == 1)
		{
			AI_Output(other,self,"DIA_Addon_Nefarius_MissingOrnaments_15_02");	//Here. I have another.
			B_GivePlayerXP(XP_Addon_BringMissingOrnament);
			Npc_RemoveInvItems(other,ItMi_Ornament_Addon,1);
			AI_PrintScreen(PRINT_ItemGegeben,-1,YPOS_ItemGiven,FONT_ScreenSmall,2);
			MissingOrnamentsCounter = MissingOrnamentsCounter + 1;
		}
		else
		{
			AI_Output(other,self,"DIA_Addon_Nefarius_MissingOrnaments_15_03");	//I found them.
			Npc_RemoveInvItems(other,ItMi_Ornament_Addon,MissingOrnamentsCount);
			concatText = ConcatStrings(IntToString(MissingOrnamentsCount),PRINT_ItemsGegeben);
			AI_PrintScreen(concatText,-1,YPOS_ItemGiven,FONT_ScreenSmall,2);
			XP_Addon_BringMissingOrnaments = MissingOrnamentsCount * XP_Addon_BringMissingOrnament;
			MissingOrnamentsCounter = MissingOrnamentsCounter + MissingOrnamentsCount;
			B_GivePlayerXP(XP_Addon_BringMissingOrnaments);
		};
		AI_Output(self,other,"DIA_Addon_Nefarius_MissingOrnaments_05_04");	//That's terrific.
		if(MissingOrnamentsCounter == 1)
		{
			AI_Output(self,other,"DIA_Addon_Nefarius_MissingOrnaments_05_05");	//Now only two more are missing. Maybe you can find them, too.
		}
		else if(MissingOrnamentsCounter == 2)
		{
			AI_Output(self,other,"DIA_Addon_Nefarius_MissingOrnaments_05_06");	//Now only one is missing, then we'll have them all together.
		}
		else
		{
			AI_Output(self,other,"DIA_Addon_Nefarius_MissingOrnaments_05_07");	//Now I have them all. Now all we have to do is put them together.
			AI_Output(self,other,"DIA_Addon_Nefarius_MissingOrnaments_05_08");	//We will have to use our combined powers to fit the ornament back into a ring.
			MIS_Addon_Nefarius_BringMissingOrnaments = LOG_SUCCESS;
		};
		AI_Output(self,other,"DIA_Addon_Nefarius_MissingOrnaments_05_09");	//Here. I can give you some gold coins for your trouble.
		MissingOrnamentsGeld = MissingOrnamentsCount * Addon_NefariussMissingOrnamentsOffer;
		CreateInvItems(self,ItMi_Gold,MissingOrnamentsGeld);
		B_GiveInvItems(self,other,ItMi_Gold,MissingOrnamentsGeld);
		if(MIS_Addon_Nefarius_BringMissingOrnaments == LOG_SUCCESS)
		{
			AI_Output(self,other,"DIA_Addon_Nefarius_MissingOrnaments_05_10");	//Follow me!
			AI_StopProcessInfos(self);
			Npc_ExchangeRoutine(self,"PreRingritual");
			B_StartOtherRoutine(KDW_1400_Addon_Saturas_NW,"PreRingritual");
			B_StartOtherRoutine(KDW_1401_Addon_Cronos_NW,"PreRingritual");
			B_StartOtherRoutine(KDW_1403_Addon_Myxir_NW,"PreRingritual");
			B_StartOtherRoutine(KDW_1404_Addon_Riordian_NW,"PreRingritual");
			B_StartOtherRoutine(KDW_1405_Addon_Merdarion_NW,"PreRingritual");
		};
	}
	else
	{
		AI_Output(other,self,"DIA_Addon_Nefarius_MissingOrnaments_15_11");	//How many were there again?
		AI_Output(self,other,"DIA_Addon_Nefarius_MissingOrnaments_05_12");	//There are four in all...
		AI_Output(self,other,"DIA_Addon_Nefarius_MissingOrnaments_05_13");	//You should find the others where I have marked the map.
	};
};


instance DIA_Addon_Nefarius_Ringritual(C_Info)
{
	npc = KDW_1402_Addon_Nefarius_NW;
	nr = 5;
	condition = DIA_Addon_Nefarius_Ringritual_Condition;
	information = DIA_Addon_Nefarius_Ringritual_Info;
	important = TRUE;
};


func int DIA_Addon_Nefarius_Ringritual_Condition()
{
	if((MIS_Addon_Nefarius_BringMissingOrnaments == LOG_SUCCESS) && (Npc_GetDistToWP(self,"NW_TROLLAREA_PORTALTEMPEL_42") < 1000))
	{
		return TRUE;
	};
};

func void DIA_Addon_Nefarius_Ringritual_Info()
{
	AI_Output(self,other,"DIA_Addon_Nefarius_Ringritual_05_00");	//There. And now step aside.
	Npc_SetRefuseTalk(self,60);
	RitualRingRuns = LOG_Running;
	B_LogEntry(TOPIC_Addon_Ornament,"I have brought all the fragments of the ornamental ring to Nefarius. The Water Mages now want to weld the ring back together.");
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"Ringritual");
	B_StartOtherRoutine(KDW_1400_Addon_Saturas_NW,"Ringritual");
	B_StartOtherRoutine(KDW_1401_Addon_Cronos_NW,"Ringritual");
	B_StartOtherRoutine(KDW_1403_Addon_Myxir_NW,"Ringritual");
	B_StartOtherRoutine(KDW_1404_Addon_Riordian_NW,"Ringritual");
	B_StartOtherRoutine(KDW_1405_Addon_Merdarion_NW,"Ringritual");
};


instance DIA_Addon_Nefarius_RingRitualEnds(C_Info)
{
	npc = KDW_1402_Addon_Nefarius_NW;
	nr = 5;
	condition = DIA_Addon_Nefarius_RingRitualEnds_Condition;
	information = DIA_Addon_Nefarius_RingRitualEnds_Info;
	important = TRUE;
};


func int DIA_Addon_Nefarius_RingRitualEnds_Condition()
{
	if((Npc_RefuseTalk(self) == FALSE) && (RitualRingRuns == LOG_Running))
	{
		return TRUE;
	};
};

func void DIA_Addon_Nefarius_RingRitualEnds_Info()
{
	AI_Output(self,other,"DIA_Addon_Nefarius_RingRitualEnds_05_00");	//The ornament has been put back together.
	AI_Output(self,other,"DIA_Addon_Nefarius_RingRitualEnds_05_01");	//Since you brought us the necessary fragments, you should also set them into the portal.
	AI_Output(self,other,"DIA_Addon_Nefarius_RingRitualEnds_05_02");	//Go to Saturas and let him give you the reassembled ring.
	AI_Output(self,other,"DIA_Addon_Nefarius_RingRitualEnds_05_03");	//Hopefully, the portal will then open.
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"Start");
	B_StartOtherRoutine(KDW_1400_Addon_Saturas_NW,"Start");
	B_StartOtherRoutine(KDW_1401_Addon_Cronos_NW,"Start");
	B_StartOtherRoutine(KDW_1403_Addon_Myxir_NW,"Start");
	B_StartOtherRoutine(KDW_1404_Addon_Riordian_NW,"Start");
	B_StartOtherRoutine(KDW_1405_Addon_Merdarion_NW,"Start");
	RitualRingRuns = LOG_SUCCESS;
	B_LogEntry(TOPIC_Addon_Ornament,"The ornamental ring has been put back together. I am to get it from Saturas.");
};


instance DIA_Addon_Nefarius_OpenedPortal(C_Info)
{
	npc = KDW_1402_Addon_Nefarius_NW;
	nr = 5;
	condition = DIA_Addon_Nefarius_OpenedPortal_Condition;
	information = DIA_Addon_Nefarius_OpenedPortal_Info;
	description = "What now?";
};


func int DIA_Addon_Nefarius_OpenedPortal_Condition()
{
	if(RitualRingRuns == LOG_SUCCESS)
	{
		return TRUE;
	};
};

func void DIA_Addon_Nefarius_OpenedPortal_Info()
{
	AI_Output(other,self,"DIA_Addon_Nefarius_OpenedPortal_15_00");	//What now?
	AI_Output(self,other,"DIA_Addon_Nefarius_OpenedPortal_05_01");	//What are you waiting for? Go and get out of our way.
};

instance DIA_Addon_Nefarius_PICKPOCKET(C_Info)
{
	npc = KDW_1402_Addon_Nefarius_NW;
	nr = 900;
	condition = DIA_Addon_Nefarius_PICKPOCKET_Condition;
	information = DIA_Addon_Nefarius_PICKPOCKET_Info;
	permanent = TRUE;
	description = Pickpocket_20;
};


func int DIA_Addon_Nefarius_PICKPOCKET_Condition()
{
	return C_Beklauen(21,40);
};

func void DIA_Addon_Nefarius_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Addon_Nefarius_PICKPOCKET);
	Info_AddChoice(DIA_Addon_Nefarius_PICKPOCKET,Dialog_Back,DIA_Addon_Nefarius_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Addon_Nefarius_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Addon_Nefarius_PICKPOCKET_DoIt);
};

func void DIA_Addon_Nefarius_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Addon_Nefarius_PICKPOCKET);
};

func void DIA_Addon_Nefarius_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Addon_Nefarius_PICKPOCKET);
};