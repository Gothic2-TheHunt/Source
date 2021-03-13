
instance DIA_Cassia_EXIT(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 999;
	condition = DIA_Cassia_EXIT_Condition;
	information = DIA_Cassia_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Cassia_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Cassia_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Cassia_PICKME(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 900;
	condition = DIA_Cassia_PICKME_Condition;
	information = DIA_Cassia_PICKME_Info;
	permanent = TRUE;
	description = Pickpocket_140_Female;
};


func int DIA_Cassia_PICKME_Condition()
{
	return C_Beklauen(140,700);
};

func void DIA_Cassia_PICKME_Info()
{
	Info_ClearChoices(DIA_Cassia_PICKME);
	Info_AddChoice(DIA_Cassia_PICKME,Dialog_Back,DIA_Cassia_PICKME_BACK);
	Info_AddChoice(DIA_Cassia_PICKME,DIALOG_PICKPOCKET,DIA_Cassia_PICKME_DoIt);
};

func void DIA_Cassia_PICKME_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Cassia_PICKME);
};

func void DIA_Cassia_PICKME_BACK()
{
	Info_ClearChoices(DIA_Cassia_PICKME);
};


instance DIA_Cassia_Gilde(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 1;
	condition = DIA_Cassia_Gilde_Condition;
	information = DIA_Cassia_Gilde_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Cassia_Gilde_Condition()
{
	if((Cassia_Gildencheck == TRUE) && (Join_Thiefs == TRUE) && ((other.guild == GIL_MIL) || (other.guild == GIL_PAL) || (other.guild == GIL_KDF)))
	{
		return TRUE;
	};
};

func void DIA_Cassia_Gilde_Info()
{
	if((other.guild == GIL_MIL) || (other.guild == GIL_PAL))
	{
		AI_Output(self,other,"DIA_Cassia_Gilde_16_00");	//I see you've become a fighter for law and order.
		AI_Output(self,other,"DIA_Cassia_Gilde_16_01");	//It doesn't matter that you're in the service of Innos. You're one of us. And I hope that's the way you see it, too.
	};
	if(other.guild == GIL_KDF)
	{
		AI_Output(self,other,"DIA_Cassia_Gilde_16_02");	//So now you belong to the church of Innos. Fine, but you're still one of us - I hope you won't forget that.
	};
	AI_StopProcessInfos(self);
};


instance DIA_Cassia_Abgelaufen(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_Abgelaufen_Condition;
	information = DIA_Cassia_Abgelaufen_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Cassia_Abgelaufen_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (Cassia_Frist == TRUE) && (Cassia_Day < (B_GetDayPlus() - 2)))
	{
		return TRUE;
	};
};

func void DIA_Cassia_Abgelaufen_Info()
{
	AI_Output(self,other,"DIA_Cassia_Abgelaufen_16_00");	//Your deadline has passed. You shouldn't have come back.
	AI_StopProcessInfos(self);
	B_Attack(self,other,AR_KILL,0);
};


instance DIA_Cassia_News(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 1;
	condition = DIA_Cassia_News_Condition;
	information = DIA_Cassia_News_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Cassia_News_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (self.aivar[AIV_TalkedToPlayer] == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Cassia_News_Info()
{
	if(MIS_ThiefGuild_sucked == FALSE)
	{
		AI_Output(self,other,"DIA_Cassia_News_16_00");	//I see you received our gift. I am Cassia.
		AI_Output(other,self,"DIA_Cassia_News_15_01");	//All right, Cassia, so tell me why I'm here.
		AI_Output(self,other,"DIA_Cassia_News_16_02");	//You caught our attention by winning the trust of some of our friends.
		AI_Output(self,other,"DIA_Cassia_News_16_03");	//And we want to offer you a chance. You can join us.
	}
	else
	{
		AI_Output(self,other,"DIA_Cassia_News_16_04");	//Just look who found his way here. Attila underestimated you. I'm not going to make the same mistake.
		AI_Output(other,self,"DIA_Cassia_News_15_05");	//What's being played here?
		AI_Output(self,other,"DIA_Cassia_News_16_06");	//We wanted you to die for blowing the whistle on a friend. That's why we sent Attila.
		AI_Output(self,other,"DIA_Cassia_News_16_07");	//Your presence here, however, opens up a new option ...
		AI_Output(other,self,"DIA_Cassia_News_15_08");	//... what do you want to offer me?
		AI_Output(self,other,"DIA_Cassia_News_16_09");	//You can join us.
	};
	if((Npc_GetTrueGuild(other) == GIL_NONE) || (Npc_GetTrueGuild(other) == GIL_NOV))
	{
		Cassia_Gildencheck = TRUE;
	};
	DG_gefunden = TRUE;
};


instance DIA_Cassia_mehr(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_mehr_Condition;
	information = DIA_Cassia_mehr_Info;
	permanent = FALSE;
	description = "Tell me more about your organization.";
};


func int DIA_Cassia_mehr_Condition()
{
	return TRUE;
};

func void DIA_Cassia_mehr_Info()
{
	AI_Output(other,self,"DIA_Cassia_mehr_15_00");	//Tell me more about your organization.
	AI_Output(self,other,"DIA_Cassia_mehr_16_01");	//People in town are pretty nervous about us. But nobody knows our hideout.
	AI_Output(self,other,"DIA_Cassia_mehr_16_02");	//The handful of people who even know that the sewers exist believe that they are locked and not accessible to anyone.
	AI_Output(self,other,"DIA_Cassia_mehr_16_03");	//And as long as they don't find us, we can work in peace.
};


instance DIA_Cassia_MissingPeople(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_MissingPeople_Condition;
	information = DIA_Cassia_MissingPeople_Info;
	permanent = FALSE;
	description = "What do you know about the missing people?";
};


func int DIA_Cassia_MissingPeople_Condition()
{
	if((SC_HearedAboutMissingPeople == TRUE) && (MissingPeopleReturnedHome == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Cassia_MissingPeople_Info()
{
	AI_Output(other,self,"DIA_Addon_Cassia_Add_15_00");	//What do you know about the missing people?
	AI_Output(self,other,"DIA_Addon_Cassia_Add_16_01");	//Why would that interest you?
	AI_Output(other,self,"DIA_Addon_Cassia_Add_15_02");	//I want to find out what happened to them.
	AI_Output(self,other,"DIA_Addon_Cassia_Add_16_03");	//When you emerge from the sewers, swim down along the coast to the right for a while.
	AI_Output(self,other,"DIA_Addon_Cassia_Add_16_04");	//You're bound to find your answers there ...
};


instance DIA_Cassia_Vorteil(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 3;
	condition = DIA_Cassia_Vorteil_Condition;
	information = DIA_Cassia_Vorteil_Info;
	permanent = FALSE;
	description = "What's in it for me if I join you?";
};


func int DIA_Cassia_Vorteil_Condition()
{
	return TRUE;
};

func void DIA_Cassia_Vorteil_Info()
{
	AI_Output(other,self,"DIA_Cassia_Vorteil_15_00");	//What's in it for me if I join you?
	AI_Output(self,other,"DIA_Cassia_Vorteil_16_01");	//You can learn special abilities from us - abilities that will allow you to live in luxury.
	AI_Output(other,self,"DIA_Cassia_Vorteil_15_02");	//But I wouldn't have to hide out down here, would I?
	AI_Output(self,other,"DIA_Cassia_Vorteil_16_03");	//(laughs quietly) No. You only have to stick to our rules. That's all.
};


instance DIA_Cassia_Lernen(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 4;
	condition = DIA_Cassia_Lernen_Condition;
	information = DIA_Cassia_Lernen_Info;
	permanent = FALSE;
	description = "What can I learn from you?";
};


func int DIA_Cassia_Lernen_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Cassia_Vorteil))
	{
		return TRUE;
	};
};

func void DIA_Cassia_Lernen_Info()
{
	AI_Output(other,self,"DIA_Cassia_Lernen_15_00");	//What can I learn from you?
	AI_Output(self,other,"DIA_Cassia_Lernen_16_01");	//Jesper is the master of stealth. He will show you how to move without making a sound.
	AI_Output(self,other,"DIA_Cassia_Lernen_16_02");	//Ramirez is an exceptionally gifted burglar. No lock can withstand his picks.
	AI_Output(self,other,"DIA_Cassia_Lernen_16_03");	//And I can teach you how to be a pickpocket.
	AI_Output(self,other,"DIA_Cassia_Lernen_16_04");	//I'm also going to help you become more dexterous. For dexterity is the key to your abilities.
	Log_CreateTopic(TOPIC_CityTeacher,LOG_NOTE);
	B_LogEntry(TOPIC_CityTeacher,"Cassia can teach me pickpocketing and help me to become more dexterous.");
	B_LogEntry(TOPIC_CityTeacher,"Ramirez can teach me to pick locks.");
	B_LogEntry(TOPIC_CityTeacher,"Jesper can teach me to sneak.");
};


instance DIA_Cassia_Regeln(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 3;
	condition = DIA_Cassia_Regeln_Condition;
	information = DIA_Cassia_Regeln_Info;
	permanent = FALSE;
	description = "What are your rules?";
};


func int DIA_Cassia_Regeln_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Cassia_Vorteil))
	{
		return TRUE;
	};
};

func void DIA_Cassia_Regeln_Info()
{
	AI_Output(other,self,"DIA_Cassia_Regeln_15_00");	//What are your rules?
	AI_Output(self,other,"DIA_Cassia_Regeln_16_02");	//The first rule is: You don't breathe a word about us. To anyone. Ever.
	AI_Output(self,other,"DIA_Cassia_Regeln_16_03");	//Second: Don't get caught.
	AI_Output(self,other,"DIA_Cassia_Regeln_16_04");	//Third: If you draw your weapon down here to attack someone, we'll kill you.
	AI_Output(self,other,"DIA_Cassia_Regeln_16_05");	//And the fourth, and last rule is: those who want to join us have to prove themselves.
};


instance DIA_Cassia_Erwischen(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_Erwischen_Condition;
	information = DIA_Cassia_Erwischen_Info;
	permanent = FALSE;
	description = "What happens if I get caught?";
};


func int DIA_Cassia_Erwischen_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Cassia_Regeln))
	{
		return TRUE;
	};
};

func void DIA_Cassia_Erwischen_Info()
{
	AI_Output(other,self,"DIA_Cassia_Erwischen_15_00");	//What happens if I get caught?
	AI_Output(self,other,"DIA_Cassia_Erwischen_16_01");	//Just don't get caught, OK?
};


instance DIA_Cassia_beweisen(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_beweisen_Condition;
	information = DIA_Cassia_beweisen_Info;
	permanent = TRUE;
	description = "How am I supposed to prove myself?";
};


var int DIA_Cassia_beweisen_permanent;

func int DIA_Cassia_beweisen_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Cassia_Regeln) && (DIA_Cassia_beweisen_permanent == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Cassia_beweisen_Info()
{
	AI_Output(other,self,"DIA_Cassia_beweisen_15_00");	//How am I supposed to prove myself?
	if(Join_Thiefs == FALSE)
	{
		AI_Output(self,other,"DIA_Cassia_beweisen_16_01");	//Now will you join us or not?
	}
	else
	{
		AI_Output(self,other,"DIA_Cassia_beweisen_16_02");	//That stubborn old alchemist - Constantino - has a beautiful ring.
		AI_Output(self,other,"DIA_Cassia_beweisen_16_03");	//But he doesn't really need it. I want to see it adorn my hand.
		MIS_CassiaRing = LOG_Running;
		DIA_Cassia_beweisen_permanent = TRUE;
		Log_CreateTopic(Topic_CassiaRing,LOG_MISSION);
		Log_SetTopicStatus(Topic_CassiaRing,LOG_Running);
		B_LogEntry(Topic_CassiaRing,"Cassia wants me to bring her Constantino's ring.");
	};
};


instance DIA_Cassia_Beitreten(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 10;
	condition = DIA_Cassia_Beitreten_Condition;
	information = DIA_Cassia_Beitreten_Info;
	permanent = FALSE;
	description = "OK, I'm in.";
};


func int DIA_Cassia_Beitreten_Condition()
{
	if((Join_Thiefs == FALSE) && Npc_KnowsInfo(other,DIA_Cassia_Regeln))
	{
		return TRUE;
	};
};

func void DIA_Cassia_Beitreten_Info()
{
	AI_Output(other,self,"DIA_Cassia_Beitreten_15_00");	//OK, I'm in.
	AI_Output(self,other,"DIA_Cassia_Beitreten_16_01");	//Great. You'll be given an opportunity to prove yourself. And if you want to learn from us, you're welcome.
	Join_Thiefs = TRUE;
};


instance DIA_Cassia_Ablehnen(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 9;
	condition = DIA_Cassia_Ablehnen_Condition;
	information = DIA_Cassia_Ablehnen_Info;
	permanent = FALSE;
	description = "And what if I don't want to join you ... ?";
};


func int DIA_Cassia_Ablehnen_Condition()
{
	if((Join_Thiefs == FALSE) && Npc_KnowsInfo(other,DIA_Cassia_Regeln))
	{
		return TRUE;
	};
};

func void DIA_Cassia_Ablehnen_Info()
{
	AI_Output(other,self,"DIA_Cassia_Ablehnen_15_00");	//And what if I don't want to join you ... ?
	if(MIS_ThiefGuild_sucked == FALSE)
	{
		AI_Output(self,other,"DIA_Cassia_Ablehnen_16_01");	//You're missing a one-time chance, but you can go.
		AI_Output(self,other,"DIA_Cassia_Ablehnen_16_02");	//(serious) And don't even think about betraying us. You would bitterly regret that.
		Info_ClearChoices(DIA_Cassia_Ablehnen);
		Info_AddChoice(DIA_Cassia_Ablehnen,"OK, I'm in.",DIA_Cassia_Ablehnen_Okay);
		Info_AddChoice(DIA_Cassia_Ablehnen,"I need to think about this.",DIA_Cassia_Ablehnen_Frist);
	}
	else
	{
		AI_Output(self,other,"DIA_Cassia_Ablehnen_16_03");	//In that case, I shall kill you.
		Info_ClearChoices(DIA_Cassia_Ablehnen);
		Info_AddChoice(DIA_Cassia_Ablehnen,"OK, I'm in.",DIA_Cassia_Ablehnen_Okay);
		Info_AddChoice(DIA_Cassia_Ablehnen,"Try to kill me, then.",DIA_Cassia_Ablehnen_Kill);
	};
};

func void DIA_Cassia_Ablehnen_Okay()
{
	AI_Output(other,self,"DIA_Cassia_Ablehnen_Okay_15_00");	//OK, I'm in.
	AI_Output(self,other,"DIA_Cassia_Ablehnen_Okay_16_01");	//(smiles) You've made a wise decision. If you succeed in proving yourself, you may join our ranks.
	AI_Output(self,other,"DIA_Cassia_Ablehnen_Okay_16_02");	//If you would like to learn the thieves' abilities first, feel free - you're going to need them.
	Join_Thiefs = TRUE;
	Info_ClearChoices(DIA_Cassia_Ablehnen);
};

func void DIA_Cassia_Ablehnen_Kill()
{
	AI_Output(other,self,"DIA_Cassia_Ablehnen_Kill_15_00");	//Try to kill me, then.
	AI_Output(self,other,"DIA_Cassia_Ablehnen_Kill_16_01");	//Too bad. I thought you were smarter than that.
	AI_StopProcessInfos(self);
	B_Attack(self,other,AR_NONE,1);
};

func void DIA_Cassia_Ablehnen_Frist()
{
	AI_Output(other,self,"DIA_Cassia_Ablehnen_Frist_15_00");	//I need to think about this.
	AI_Output(self,other,"DIA_Cassia_Ablehnen_Frist_16_01");	//Do that. I'll give you two days to come to a decision. After that, you will no longer be welcome here.
	Cassia_Day = B_GetDayPlus();
	Cassia_Frist = TRUE;
	Info_ClearChoices(DIA_Cassia_Ablehnen);
};


instance DIA_Cassia_BevorLernen(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 5;
	condition = DIA_Cassia_BevorLernen_Condition;
	information = DIA_Cassia_BevorLernen_Info;
	permanent = TRUE;
	description = "Can you teach me?";
};


func int DIA_Cassia_BevorLernen_Condition()
{
	if((Join_Thiefs == TRUE) && Npc_KnowsInfo(other,DIA_Cassia_Lernen) && ((Cassia_TeachPickpocket == FALSE) || (Cassia_TeachDEX == FALSE)))
	{
		return TRUE;
	};
};

func void DIA_Cassia_BevorLernen_Info()
{
	AI_Output(other,self,"DIA_Cassia_BevorLernen_15_00");	//Can you teach me?
	if(MIS_ThiefGuild_sucked == FALSE)
	{
		AI_Output(self,other,"DIA_Cassia_BevorLernen_16_01");	//Sure, no problem. Just let me know when you're ready.
		Cassia_TeachPickpocket = TRUE;
		Cassia_TeachDEX = TRUE;
	}
	else
	{
		AI_Output(self,other,"DIA_Cassia_BevorLernen_16_02");	//Sure. Pickpocketing and dexterity will cost you 100 gold pieces each.
		Info_ClearChoices(DIA_Cassia_BevorLernen);
		Info_AddChoice(DIA_Cassia_BevorLernen,"Maybe later ...(BACK)",DIA_Cassia_BevorLernen_Spaeter);
		if(Cassia_TeachPickpocket == FALSE)
		{
			Info_AddChoice(DIA_Cassia_BevorLernen,"I want to learn about picking pockets (pay 100 gold).",DIA_Cassia_BevorLernen_Pickpocket);
		};
		if(Cassia_TeachDEX == FALSE)
		{
			Info_AddChoice(DIA_Cassia_BevorLernen,"I want to become more dexterous (pay 100 gold).",DIA_Cassia_BevorLernen_DEX);
		};
	};
};

func void DIA_Cassia_BevorLernen_Spaeter()
{
	Info_ClearChoices(DIA_Cassia_BevorLernen);
};

func void DIA_Cassia_BevorLernen_DEX()
{
	if(B_GiveInvItems(other,self,ItMi_Gold,100))
	{
		AI_Output(other,self,"DIA_Cassia_BevorLernen_DEX_15_00");	//I want to become more dexterous. Here's the gold.
		AI_Output(self,other,"DIA_Cassia_BevorLernen_DEX_16_01");	//We can start whenever you're ready.
		Cassia_TeachDEX = TRUE;
		Info_ClearChoices(DIA_Cassia_BevorLernen);
	}
	else
	{
		AI_Output(self,other,"DIA_Cassia_DIA_Cassia_BevorLernen_DEX_16_02");	//Come back when you've got the gold.
		Info_ClearChoices(DIA_Cassia_BevorLernen);
	};
};

func void DIA_Cassia_BevorLernen_Pickpocket()
{
	if(B_GiveInvItems(other,self,ItMi_Gold,100))
	{
		AI_Output(other,self,"DIA_Cassia_BevorLernen_Pickpocket_15_00");	//I want to learn about picking pockets. Here's the gold.
		AI_Output(self,other,"DIA_Cassia_BevorLernen_Pickpocket_16_01");	//We can start whenever you're ready.
		Cassia_TeachPickpocket = TRUE;
		Info_ClearChoices(DIA_Cassia_BevorLernen);
	}
	else
	{
		AI_Output(self,other,"DIA_Cassia_BevorLernen_Pickpocket_16_02");	//Come back when you've got the gold.
		Info_ClearChoices(DIA_Cassia_BevorLernen);
	};
};


instance DIA_Cassia_TEACH(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 12;
	condition = DIA_Cassia_TEACH_Condition;
	information = DIA_Cassia_TEACH_Info;
	permanent = TRUE;
	description = "I want to become more dexterous.";
};


func int DIA_Cassia_TEACH_Condition()
{
	if(Cassia_TeachDEX == TRUE)
	{
		return TRUE;
	};
};

func void DIA_Cassia_TEACH_Info()
{
	AI_Output(other,self,"DIA_Cassia_TEACH_15_00");	//I want to become more dexterous.
	Info_ClearChoices(DIA_Cassia_TEACH);
	Info_AddChoice(DIA_Cassia_TEACH,Dialog_Back,DIA_Cassia_TEACH_BACK);
	Info_AddChoice(DIA_Cassia_TEACH,B_BuildLearnString(PRINT_LearnDEX1,B_GetLearnCostAttribute(other,ATR_DEXTERITY)),DIA_Cassia_TEACH_1);
	Info_AddChoice(DIA_Cassia_TEACH,B_BuildLearnString(PRINT_LearnDEX5,B_GetLearnCostAttribute(other,ATR_DEXTERITY) * 5),DIA_Cassia_TEACH_5);
};

func void DIA_Cassia_TEACH_BACK()
{
	Info_ClearChoices(DIA_Cassia_TEACH);
};

func void DIA_Cassia_TEACH_1()
{
	B_TeachAttributePoints(self,other,ATR_DEXTERITY,1,T_MEGA);
	Info_ClearChoices(DIA_Cassia_TEACH);
	Info_AddChoice(DIA_Cassia_TEACH,Dialog_Back,DIA_Cassia_TEACH_BACK);
	Info_AddChoice(DIA_Cassia_TEACH,B_BuildLearnString(PRINT_LearnDEX1,B_GetLearnCostAttribute(other,ATR_DEXTERITY)),DIA_Cassia_TEACH_1);
	Info_AddChoice(DIA_Cassia_TEACH,B_BuildLearnString(PRINT_LearnDEX5,B_GetLearnCostAttribute(other,ATR_DEXTERITY) * 5),DIA_Cassia_TEACH_5);
};

func void DIA_Cassia_TEACH_5()
{
	B_TeachAttributePoints(self,other,ATR_DEXTERITY,5,T_MEGA);
	Info_ClearChoices(DIA_Cassia_TEACH);
	Info_AddChoice(DIA_Cassia_TEACH,Dialog_Back,DIA_Cassia_TEACH_BACK);
	Info_AddChoice(DIA_Cassia_TEACH,B_BuildLearnString(PRINT_LearnDEX1,B_GetLearnCostAttribute(other,ATR_DEXTERITY)),DIA_Cassia_TEACH_1);
	Info_AddChoice(DIA_Cassia_TEACH,B_BuildLearnString(PRINT_LearnDEX5,B_GetLearnCostAttribute(other,ATR_DEXTERITY) * 5),DIA_Cassia_TEACH_5);
};


instance DIA_Cassia_Pickpocket(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 10;
	condition = DIA_Cassia_Pickpocket_Condition;
	information = DIA_Cassia_Pickpocket_Info;
	permanent = TRUE;
	description = "Show me how to pick pockets. (10 LP)";
};


func int DIA_Cassia_Pickpocket_Condition()
{
	if((Cassia_TeachPickpocket == TRUE) && (Npc_GetTalentSkill(other,NPC_TALENT_PICKPOCKET) == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Cassia_Pickpocket_Info()
{
	AI_Output(other,self,"DIA_Cassia_Pickpocket_15_00");	//Show me how to pick pockets.
	if(B_TeachThiefTalent(self,other,NPC_TALENT_PICKPOCKET))
	{
		AI_Output(self,other,"DIA_Cassia_Pickpocket_16_01");	//If you want to empty somebody's pockets, distract him. Just start talking to him, have a chat.
		AI_Output(self,other,"DIA_Cassia_Pickpocket_16_02");	//While you're talking to him, size him up. Look out for bulging pockets, jewelry, or leather straps around the neck. And, most of all, note how keen the fellow seems.
		AI_Output(self,other,"DIA_Cassia_Pickpocket_16_03");	//Robbing a drunk day-laborer is not the same as stealing from a watchful merchant, mind you.
		AI_Output(self,other,"DIA_Cassia_Pickpocket_16_04");	//If you're too clumsy, of course, he'll smell a rat. So, above all: keep your cool.
	};
};


instance DIA_Cassia_Aufnahme(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_Aufnahme_Condition;
	information = DIA_Cassia_Aufnahme_Info;
	permanent = FALSE;
	description = "I've got Constantino's ring.";
};


func int DIA_Cassia_Aufnahme_Condition()
{
	if((MIS_CassiaRing == LOG_Running) && (Npc_HasItems(other,ItRi_Prot_Point_01_MIS) >= 1))
	{
		return TRUE;
	};
};

func void DIA_Cassia_Aufnahme_Info()
{
	AI_Output(other,self,"DIA_Cassia_Aufnahme_15_00");	//I've got Constantino's ring.
	B_GiveInvItems(other,self,ItRi_Prot_Point_01_MIS,1);
	AI_Output(self,other,"DIA_Cassia_Aufnahme_16_01");	//Congratulations. You passed your initiation test. Now you're truly one of us.
	AI_Output(self,other,"DIA_Cassia_Aufnahme_16_02");	//Take this key. It opens the door to the hotel. (smiles) Then you won't have to swim every time.
	B_GiveInvItems(self,other,ItKe_ThiefGuildKey_Hotel_MIS,1);
	AI_Output(self,other,"DIA_Cassia_Aufnahme_16_03");	//Furthermore, you should know that we have a secret sign. A particular nod.
	AI_PlayAni(other,"T_YES");
	AI_Output(self,other,"DIA_Cassia_Aufnahme_16_04");	//Exactly. When you talk to the right people and make this sign, they'll know you are one of us.
	MIS_CassiaRing = LOG_SUCCESS;
	B_GivePlayerXP(XP_CassiaRing);
	Knows_SecretSign = TRUE;
	Log_CreateTopic(Topic_Diebesgilde,LOG_NOTE);
	B_LogEntry(Topic_Diebesgilde,"I have been accepted into the thieves' guild.");
	B_LogEntry(Topic_Diebesgilde,"I know the thieves' sign. If I demonstrate it to the right people, they'll know I'm one of them.");
};


instance DIA_Cassia_Versteck(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_Versteck_Condition;
	information = DIA_Cassia_Versteck_Info;
	permanent = FALSE;
	description = "So where are you hiding your loot?";
};


func int DIA_Cassia_Versteck_Condition()
{
	if((MIS_CassiaRing == LOG_SUCCESS) && Npc_KnowsInfo(other,DIA_Ramirez_Beute))
	{
		return TRUE;
	};
};

func void DIA_Cassia_Versteck_Info()
{
	AI_Output(other,self,"DIA_Cassia_Versteck_15_00");	//So where are you hiding your loot?
	AI_Output(self,other,"DIA_Cassia_Versteck_16_01");	//Come on, you didn't really think I would tell you that?
	AI_Output(self,other,"DIA_Cassia_Versteck_16_02");	//You'll have enough opportunity to get your hands on some loot of your own. Remember - those who are too greedy end up with nothing.
};


instance DIA_Cassia_Blutkelche(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_Blutkelche_Condition;
	information = DIA_Cassia_Blutkelche_Info;
	permanent = FALSE;
	description = "Have you got a job for me?";
};


func int DIA_Cassia_Blutkelche_Condition()
{
	if((MIS_CassiaRing == LOG_SUCCESS) && (MIS_CassiaKelche != LOG_Running))
	{
		return TRUE;
	};
};

func void DIA_Cassia_Blutkelche_Info()
{
	AI_Output(other,self,"DIA_Cassia_Blutkelche_15_00");	//Have you got a job for me?
	if(PETZCOUNTER_City_Theft > 0)
	{
		AI_Output(self,other,"DIA_Cassia_Blutkelche_16_01");	//Not as long as you're wanted in town as a thief.
		AI_Output(self,other,"DIA_Cassia_Blutkelche_16_02");	//Clear that up - pay your penalty or get rid of the witnesses, I don't care, just as long as you clear it up.
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"DIA_Cassia_Blutkelche_16_03");	//Yes. There is a matching set of chalices. Six of them.
		AI_Output(self,other,"DIA_Cassia_Blutkelche_16_04");	//King Rhobar once captured them during a campaign - but he sacrificed many men so he could get them. That's why they're called the Blood Chalices.
		AI_Output(self,other,"DIA_Cassia_Blutkelche_16_05");	//Each of the chalices by itself is not all that valuable - but the six of them all together are worth a tidy sum.
		AI_Output(other,self,"DIA_Cassia_Blutkelche_15_06");	//Where are these chalices?
		AI_Output(self,other,"DIA_Cassia_Blutkelche_16_07");	//They're here, in town - they belong to the rich merchants in the upper quarter.
		AI_Output(self,other,"DIA_Cassia_Blutkelche_16_08");	//Bring them to me. In the meantime, I'll try to find a buyer for them.
		AI_Output(other,self,"DIA_Cassia_Blutkelche_15_09");	//What's in it for me?
		AI_Output(self,other,"DIA_Cassia_Blutkelche_16_10");	//Either half of the profit, or you get to pick a special item from my booty.
		MIS_CassiaKelche = LOG_Running;
		Log_CreateTopic(Topic_CassiaKelche,LOG_MISSION);
		Log_SetTopicStatus(Topic_CassiaKelche,LOG_Running);
		B_LogEntry(Topic_CassiaKelche,"Cassia wants me to bring her the six Blood Chalices. Apparently, they're all in the city.");
	};
};


instance DIA_Cassia_abgeben(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_abgeben_Condition;
	information = DIA_Cassia_abgeben_Info;
	permanent = TRUE;
	description = "About the Blood Chalices ...";
};


func int DIA_Cassia_abgeben_Condition()
{
	if(MIS_CassiaKelche == LOG_Running)
	{
		return TRUE;
	};
};

func void DIA_Cassia_abgeben_Info()
{
	AI_Output(other,self,"DIA_Cassia_abgeben_15_00");	//About the Blood Chalices ...
	if(B_GiveInvItems(other,self,ItMi_BloodCup_MIS,6))
	{
		AI_Output(other,self,"DIA_Cassia_abgeben_15_01");	//I've got all six chalices now.
		AI_Output(self,other,"DIA_Cassia_abgeben_16_02");	//Good work. I've found a buyer in the meantime.
		AI_Output(self,other,"DIA_Cassia_abgeben_16_03");	//You can have your reward now. Thanks for doing that for me.
		AI_Output(self,other,"DIA_Cassia_abgeben_16_04");	//There's nothing else I have to do for you - but you can learn from me at any time. Moreover, there's enough on this island just waiting for a taker. (smiles)
		MIS_CassiaKelche = LOG_SUCCESS;
		B_GivePlayerXP(XP_CassiaBlutkelche);
	}
	else
	{
		AI_Output(self,other,"DIA_Cassia_abgeben_16_05");	//I can only sell these chalices as a set. Bring me all six.
	};
};


instance DIA_Cassia_Belohnung(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_Belohnung_Condition;
	information = DIA_Cassia_Belohnung_Info;
	permanent = FALSE;
	description = "I've come to pick up my reward.";
};


func int DIA_Cassia_Belohnung_Condition()
{
	if(MIS_CassiaKelche == LOG_SUCCESS)
	{
		return TRUE;
	};
};

func void DIA_Cassia_Belohnung_Info()
{
	AI_Output(other,self,"DIA_Cassia_Belohnung_15_00");	//I've come to pick up my reward.
	AI_Output(self,other,"DIA_Cassia_Belohnung_16_01");	//What's your choice?
	Info_ClearChoices(DIA_Cassia_Belohnung);
	Info_AddChoice(DIA_Cassia_Belohnung,"400 pieces of gold.",DIA_Cassia_Belohnung_Gold);
	Info_AddChoice(DIA_Cassia_Belohnung,"4 elixirs of healing",DIA_Cassia_Belohnung_Trank);
	Info_AddChoice(DIA_Cassia_Belohnung,"Ring of Inconquerability",DIA_Cassia_Belohnung_Ring);
};

func void DIA_Cassia_Belohnung_Gold()
{
	AI_Output(other,self,"DIA_Cassia_Belohnung_15_02");	//Give me the gold.
	B_GiveInvItems(self,other,ItMi_Gold,400);
	Info_ClearChoices(DIA_Cassia_Belohnung);
};

func void DIA_Cassia_Belohnung_Trank()
{
	AI_Output(other,self,"DIA_Cassia_Belohnung_15_03");	//Give me the potions.
	B_GiveInvItems(self,other,ItPo_Health_03,4);
	Info_ClearChoices(DIA_Cassia_Belohnung);
};

func void DIA_Cassia_Belohnung_Ring()
{
	AI_Output(other,self,"DIA_Cassia_Belohnung_15_04");	//Give me the ring.
	B_GiveInvItems(self,other,ItRi_Prot_Total_01,1);
	Info_ClearChoices(DIA_Cassia_Belohnung);
};

instance DIA_Cassia_Notices(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 3;
	condition = DIA_Cassia_Notices_Condition;
	information = DIA_Cassia_Notices_Info;
	permanent = TRUE;
	description = "Have you got a job for me?";
};

var int DIA_Cassia_Notices_Permanent;

func int DIA_Cassia_Notices_Condition()
{
	if((DIA_Cassia_Notices_Permanent == FALSE) && ((MIS_CassiaKelche == LOG_Running) || (MIS_CassiaKelche == LOG_SUCCESS)))
	{
		return TRUE;
	};
};


func void DIA_Cassia_Notices_Info()
{
	AI_Output(other,self,"DIA_Cassia_Blutkelche_15_00");	//Have you got a job for me?
	if(PETZCOUNTER_City_Theft > 0)
	{
		AI_Output(self,other,"DIA_Cassia_Blutkelche_16_01");	//Not as long as you're wanted in town as a thief.
		AI_Output(self,other,"DIA_Cassia_Blutkelche_16_02");	//Clear that up - pay your penalty or get rid of the witnesses, I don't care, just as long as you clear it up.
		AI_StopProcessInfos(self);
	}
	else
	{
		Info_ClearChoices(DIA_Cassia_Notices);
		Info_AddChoice(DIA_Cassia_Notices,"Maybe later ...(BACK)",DIA_Cassia_Notices_BACK);
		if(MIS_CassiaGold == 0) 
		{
			Info_AddChoice(DIA_Cassia_Notices,"Find Gold Doubloons (Take Note)",DIA_Cassia_Notices_Gold);
		};
		if((MIS_CassiaGold == LOG_SUCCESS) && (MIS_CassiaSilver == 0)) 
		{
			Info_AddChoice(DIA_Cassia_Notices,"Find Larius's Silverware (Take Note)",DIA_Cassia_Notices_Silver);
		};
		if(MIS_CassiaPearls == 0) 
		{
			Info_AddChoice(DIA_Cassia_Notices,"Find giant pearls (Take Note)",DIA_Cassia_Notices_Pearls);
		};
		if((MIS_CassiaPearls == LOG_SUCCESS) && (MIS_CassiaWater == 0) && (EnterADW_Kapitel2 == TRUE)) 
		{
			Info_AddChoice(DIA_Cassia_Notices,"Find water necklaces (Take Note)",DIA_Cassia_Notices_Water);
		};
		
		if((MIS_CassiaGold == LOG_SUCCESS) && (MIS_CassiaSilver == LOG_SUCCESS) && (MIS_CassiaPearls == LOG_SUCCESS) && (MIS_CassiaWater == LOG_SUCCESS))
		{
			DIA_Cassia_Notices_Permanent = TRUE;
			AI_Output(self,other,"DIA_Cassia_abgeben_16_04");	//There's nothing else I have to do for you - but you can learn from me at any time. Moreover, there's enough on this island just waiting for a taker. (smiles)
			Info_ClearChoices(DIA_Cassia_Notices);
		}
		else 
		{
			AI_Output(self,other,"DIA_Cassia_Belohnung_16_01");	//What's your choice?
		};
	};
};

func void DIA_Cassia_Notices_BACK()
{
	Info_ClearChoices(DIA_Cassia_Notices);
};

func void DIA_Cassia_Notices_Gold()
{
	B_GiveInvItems(self,other,ItWr_Cassia_Gold_MIS,1);
	AI_Output(self,other,"DIA_Cassia_Blutkelche_16_08");	//Bring them to me. In the meantime, I'll try to find a buyer for them.
	Info_ClearChoices(DIA_Cassia_Notices);
	MIS_CassiaGold = LOG_Running;
	Log_CreateTopic(Topic_CassiaGold,LOG_MISSION);
	Log_SetTopicStatus(Topic_CassiaGold,LOG_Running);
	B_LogEntry(Topic_CassiaGold,"Cassia wants me to find 5 gold doubloons from the Pirate ship that sunk nearby. Apparently, they've started appearing in the Harbor district.");
};

instance DIA_Cassia_GoldReward(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_GoldReward_Condition;
	information = DIA_Cassia_GoldReward_Info;
	permanent = FALSE;
	description = "(Give gold doubloons)";
};


func int DIA_Cassia_GoldReward_Condition()
{
	if((MIS_CassiaGold == LOG_Running) && (Npc_HasItems(other,ItMi_GoldDoubloon) >= 5))
	{
		return TRUE;
	};
};

func void DIA_Cassia_GoldReward_Info()
{
	B_GiveInvItems(other,self,ItMi_GoldDoubloon,5);
	//AI_Output(other,self,"DIA_Cassia_Belohnung_15_00");	//I've come to pick up my reward.
	AI_Output(self,other,"DIA_Cassia_abgeben_16_02");	//Good work. I've found a buyer in the meantime.
	AI_Output(self,other,"DIA_Cassia_abgeben_16_03");	//You can have your reward now. Thanks for doing that for me.
	B_GiveInvItems(self,other,ItMi_Gold,125);
	MIS_CassiaGold = LOG_SUCCESS;
	B_GivePlayerXP(XP_CassiaGold);
	Info_ClearChoices(DIA_Cassia_GoldReward);
};

func void DIA_Cassia_Notices_Silver()
{
	B_GiveInvItems(self,other,ItWr_Cassia_Silver_MIS,1);
	AI_Output(self,other,"DIA_Cassia_Blutkelche_16_08");	//Bring them to me. In the meantime, I'll try to find a buyer for them.
	Info_ClearChoices(DIA_Cassia_Notices);
	MIS_CassiaSilver = LOG_Running;
	Log_CreateTopic(Topic_CassiaSilver,LOG_MISSION);
	Log_SetTopicStatus(Topic_CassiaSilver,LOG_Running);
	B_LogEntry(Topic_CassiaSilver,"Cassia wants me to find Larius's Silverware. There is a good chance the thief would have sold it off somewhere outside the city walls. It probably won't be that hard to find, not many people have use for fancy cutlery these days. The set consists of a: plate, dish, chalice and a candle holder.");
};

instance DIA_Cassia_SilverReward(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_SilverReward_Condition;
	information = DIA_Cassia_SilverReward_Info;
	permanent = FALSE;
	description = "(Give Larius's Silverware)";
};


func int DIA_Cassia_SilverReward_Condition()
{
	if((MIS_CassiaSilver == LOG_Running) && (Npc_HasItems(other,ItMi_LariusSilverCup) >= 1) && (Npc_HasItems(other,ItMi_LariusSilverPlate) >= 1) && (Npc_HasItems(other,ItMi_LariusSilverChalice) >= 1) && (Npc_HasItems(other,ItMi_LariusSilverCandleHolder) >= 1))
	{
		return TRUE;
	};
};

func void DIA_Cassia_SilverReward_Info()
{
	B_GiveInvItems(other,self,ItMi_LariusSilverCup,1);
	B_GiveInvItems(other,self,ItMi_LariusSilverPlate,1);
	B_GiveInvItems(other,self,ItMi_LariusSilverChalice,1);
	B_GiveInvItems(other,self,ItMi_LariusSilverCandleHolder,1);
	MIS_CassiaSilver = LOG_SUCCESS;
	B_GivePlayerXP(XP_CassiaSilver);
	//AI_Output(other,self,"DIA_Cassia_Belohnung_15_00");	//I've come to pick up my reward.
	AI_Output(self,other,"DIA_Cassia_abgeben_16_02");	//Good work. I've found a buyer in the meantime.
	AI_Output(self,other,"DIA_Cassia_abgeben_16_03");	//You can have your reward now. Thanks for doing that for me.
	Info_ClearChoices(DIA_Cassia_SilverReward);
	Info_AddChoice(DIA_Cassia_SilverReward,"250 pieces of gold.",DIA_Cassia_SilverReward_Gold);
	Info_AddChoice(DIA_Cassia_SilverReward,"1 Essence of Life, 1 Essence of Healing",DIA_Cassia_SilverReward_Potion);
	Info_AddChoice(DIA_Cassia_SilverReward,"1 Scroll of Ice Block, 1 Scroll of Transform into Lurker",DIA_Cassia_SilverReward_Scroll);
	//B_GiveInvItems(self,other,ItMi_Gold,300);
};

func void DIA_Cassia_SilverReward_Gold()
{
	AI_Output(other,self,"DIA_Cassia_Belohnung_15_02");	//Give me the gold.
	B_GiveInvItems(self,other,ItMi_Gold,250);
	Info_ClearChoices(DIA_Cassia_SilverReward);
};

func void DIA_Cassia_SilverReward_Potion()
{
	AI_Output(other,self,"DIA_Cassia_Belohnung_15_03");	//Give me the potions.
	B_GiveInvItems(self,other,ItPo_Perm_LittleHealth,1);
	B_GiveInvItems(self,other,ItPo_Health_01,1);
	Info_ClearChoices(DIA_Cassia_SilverReward);
};

func void DIA_Cassia_SilverReward_Scroll()
{
	//AI_Output(other,self,"DIA_Cassia_Belohnung_15_04");	//Give me the ring.
	//AI_Output(other,self,"DIA_Dyrian_Scroll_Yes_15_00");    //All right, give me the spell scroll.
	AI_Output(other,self,"DIA_Orlan_Wein_Okay_15_00");	//All right, sounds fair enough. Give me those spell scrolls.
	B_GiveInvItems(self,other,ItSc_TrfLurker,1);
	B_GiveInvItems(self,other,ItSc_IceCube,1);
	Info_ClearChoices(DIA_Cassia_SilverReward);
};

func void DIA_Cassia_Notices_Pearls()
{
	B_GiveInvItems(self,other,ItWr_Cassia_Pearls_MIS,1);
	AI_Output(self,other,"DIA_Cassia_Blutkelche_16_08");	//Bring them to me. In the meantime, I'll try to find a buyer for them.
	Info_ClearChoices(DIA_Cassia_Notices);
	MIS_CassiaPearls = LOG_Running;
	Log_CreateTopic(Topic_CassiaPearls,LOG_MISSION);
	Log_SetTopicStatus(Topic_CassiaPearls,LOG_Running);
	B_LogEntry(Topic_CassiaPearls,"Cassia wants me to find 3 giant pearls. According to the information they've been passed down in the farmer families of Khorinis. I should be very thorough in my search, as they'll probably be very well hidden.");
};

instance DIA_Cassia_PearlsReward(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_PearlsReward_Condition;
	information = DIA_Cassia_PearlsReward_Info;
	permanent = FALSE;
	description = "(Give giant pearls)";
};


func int DIA_Cassia_PearlsReward_Condition()
{
	if((MIS_CassiaPearls == LOG_Running) && (Npc_HasItems(other,ItMi_GiantPearl) >= 3))
	{
		return TRUE;
	};
};

func void DIA_Cassia_PearlsReward_Info()
{
	B_GiveInvItems(other,self,ItMi_GiantPearl,3);
	MIS_CassiaPearls = LOG_SUCCESS;
	B_GivePlayerXP(XP_CassiaPearls);
	//AI_Output(other,self,"DIA_Cassia_Belohnung_15_00");	//I've come to pick up my reward.
	//AI_Output(self,other,"DIA_Cassia_Belohnung_16_01");	//What's your choice?
	AI_Output(self,other,"DIA_Cassia_abgeben_16_02");	//Good work. I've found a buyer in the meantime.
	AI_Output(self,other,"DIA_Cassia_abgeben_16_03");	//You can have your reward now. Thanks for doing that for me.
	Info_ClearChoices(DIA_Cassia_PearlsReward);
	Info_AddChoice(DIA_Cassia_PearlsReward,"300 pieces of gold.",DIA_Cassia_PearlsReward_Gold);
	Info_AddChoice(DIA_Cassia_PearlsReward,"1 Essence of Life, 2 Speed Potions",DIA_Cassia_PearlsReward_Potion);
	Info_AddChoice(DIA_Cassia_PearlsReward,"2 Scroll of Summon Skeleton",DIA_Cassia_PearlsReward_Scroll);
};

func void DIA_Cassia_PearlsReward_Gold()
{
	AI_Output(other,self,"DIA_Cassia_Belohnung_15_02");	//Give me the gold.
	B_GiveInvItems(self,other,ItMi_Gold,300);
	Info_ClearChoices(DIA_Cassia_PearlsReward);
};

func void DIA_Cassia_PearlsReward_Potion()
{
	AI_Output(other,self,"DIA_Cassia_Belohnung_15_03");	//Give me the potions.
	B_GiveInvItems(self,other,ItPo_Perm_LittleHealth,1);
	B_GiveInvItems(self,other,ItPo_Speed,2);
	Info_ClearChoices(DIA_Cassia_PearlsReward);
};

func void DIA_Cassia_PearlsReward_Scroll()
{
	//AI_Output(other,self,"DIA_Cassia_Belohnung_15_04");	//Give me the ring.
	//AI_Output(other,self,"DIA_Dyrian_Scroll_Yes_15_00");    //All right, give me the spell scroll.
	AI_Output(other,self,"DIA_Orlan_Wein_Okay_15_00");	//All right, sounds fair enough. Give me those spell scrolls.
	B_GiveInvItems(self,other,ItSc_SumSkel,2);
	Info_ClearChoices(DIA_Cassia_PearlsReward);
};

func void DIA_Cassia_Notices_Water()
{
	B_GiveInvItems(self,other,ItWr_Cassia_Water_MIS,1);
	AI_Output(self,other,"DIA_Cassia_Blutkelche_16_08");	//Bring them to me. In the meantime, I'll try to find a buyer for them.
	Info_ClearChoices(DIA_Cassia_Notices);
	MIS_CassiaWater = LOG_Running;
	Log_CreateTopic(Topic_CassiaWater,LOG_MISSION);
	Log_SetTopicStatus(Topic_CassiaWater,LOG_Running);
	B_LogEntry(Topic_CassiaWater,"Cassia wants me to find 3 Necklaces of Water, they should be in possesion of the Water mages. However the mages are too watchful to pickpocket the necklaces off them, I'll need to come up with a way to distract each one, before I can grab their necklace.");
};

instance DIA_Cassia_WaterReward(C_Info)
{
	npc = VLK_447_Cassia;
	nr = 2;
	condition = DIA_Cassia_WaterReward_Condition;
	information = DIA_Cassia_WaterReward_Info;
	permanent = FALSE;
	description = "(Give necklaces of water)";
};


func int DIA_Cassia_WaterReward_Condition()
{
	if((MIS_CassiaWater == LOG_Running) && (Npc_HasItems(other,ItAm_Water_MIS) >= 3))
	{
		return TRUE;
	};
};

func void DIA_Cassia_WaterReward_Info()
{
	B_GiveInvItems(other,self,ItAm_Water_MIS,3);
	MIS_CassiaWater = LOG_SUCCESS;
	B_GivePlayerXP(XP_CassiaWater);
	//AI_Output(other,self,"DIA_Cassia_Belohnung_15_00");	//I've come to pick up my reward.
	//AI_Output(self,other,"DIA_Cassia_Belohnung_16_01");	//What's your choice?
	AI_Output(self,other,"DIA_Cassia_abgeben_16_02");	//Good work. I've found a buyer in the meantime.
	AI_Output(self,other,"DIA_Cassia_abgeben_16_03");	//You can have your reward now. Thanks for doing that for me.
	Info_ClearChoices(DIA_Cassia_WaterReward);
	Info_AddChoice(DIA_Cassia_WaterReward,"450 pieces of gold.",DIA_Cassia_WaterReward_Gold);
	Info_AddChoice(DIA_Cassia_WaterReward,"1 Elixir of Life, 1 Elixir of Healing",DIA_Cassia_WaterReward_Potion);
	Info_AddChoice(DIA_Cassia_WaterReward,"1 Scroll of Shrink",DIA_Cassia_WaterReward_Scroll);
};

func void DIA_Cassia_WaterReward_Gold()
{
	AI_Output(other,self,"DIA_Cassia_Belohnung_15_02");	//Give me the gold.
	B_GiveInvItems(self,other,ItMi_Gold,450);
	Info_ClearChoices(DIA_Cassia_WaterReward);
};

func void DIA_Cassia_WaterReward_Potion()
{
	AI_Output(other,self,"DIA_Cassia_Belohnung_15_03");	//Give me the potions.
	B_GiveInvItems(self,other,ItPo_Perm_Health,1);
	B_GiveInvItems(self,other,ItPo_Health_03,1);
	Info_ClearChoices(DIA_Cassia_WaterReward);
};

func void DIA_Cassia_WaterReward_Scroll()
{
	//AI_Output(other,self,"DIA_Cassia_Belohnung_15_04");	//Give me the ring.
	AI_Output(other,self,"DIA_Dyrian_Scroll_Yes_15_00");    //All right, give me the spell scroll.
	B_GiveInvItems(self,other,ItSc_Shrink,1);
	Info_ClearChoices(DIA_Cassia_WaterReward);
};






