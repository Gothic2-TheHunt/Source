
instance DIA_Draal_EXIT(C_Info)
{
	npc = STRF_1101_Draal;
	nr = 999;
	condition = DIA_Draal_EXIT_Condition;
	information = DIA_Draal_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Draal_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Draal_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Draal_DRAGON(C_Info)
{
	npc = STRF_1101_Draal;
	nr = 1;
	condition = DIA_Draal_DRAGON_Condition;
	information = DIA_Draal_DRAGON_Info;
	important = TRUE;
	permanent = TRUE;
};


func int DIA_Draal_DRAGON_Condition()
{
	if(Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_Draal_DRAGON_Info()
{
	AI_Output(self,other,"DIA_Draal_DRAGON_03_00");	//I was outside when the dragon attacked.
	AI_Output(self,other,"DIA_Draal_DRAGON_03_01");	//I saw it, big as 10 men - its fiery breath destroyed the huts in the blink of an eye!
	AI_Output(self,other,"DIA_Draal_DRAGON_03_02");	//A dragon! I'm staying here. Nothing is going to budge me. I'm not crazy!
};

instance DIA_Draal_PICKPOCKET(C_Info)
{
	npc = STRF_1101_Draal;
	nr = 900;
	condition = DIA_Draal_PICKPOCKET_Condition;
	information = DIA_Draal_PICKPOCKET_Info;
	permanent = TRUE;
	description = Pickpocket_40;
};


func int DIA_Draal_PICKPOCKET_Condition()
{
	return C_Beklauen(28,17);
};

func void DIA_Draal_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Draal_PICKPOCKET);
	Info_AddChoice(DIA_Draal_PICKPOCKET,Dialog_Back,DIA_Draal_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Draal_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Draal_PICKPOCKET_DoIt);
};

func void DIA_Draal_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Draal_PICKPOCKET);
};

func void DIA_Draal_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Draal_PICKPOCKET);
};
