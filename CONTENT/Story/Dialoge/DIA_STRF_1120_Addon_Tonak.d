
instance DIA_Addon_Tonak_EXIT(C_Info)
{
	npc = STRF_1120_Addon_Tonak;
	nr = 999;
	condition = DIA_Addon_Tonak_EXIT_Condition;
	information = DIA_Addon_Tonak_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Addon_Tonak_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Tonak_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Addon_Tonak_Hi(C_Info)
{
	npc = STRF_1120_Addon_Tonak;
	nr = 2;
	condition = DIA_Addon_Tonak_Hi_Condition;
	information = DIA_Addon_Tonak_Hi_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_Addon_Tonak_Hi_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (Sklaven_Flucht == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Addon_Tonak_Hi_Info()
{
	AI_Output(self,other,"DIA_Addon_Tonak_Hi_03_00");	//What do you want? I'm just an imprisoned worker. I haven't done a thing.
	//AI_StopProcessInfos(self);
};

instance DIA_Addon_Tonak_PICKPOCKET(C_Info)
{
	npc = STRF_1120_Addon_Tonak;
	nr = 900;
	condition = DIA_Addon_Tonak_PICKPOCKET_Condition;
	information = DIA_Addon_Tonak_PICKPOCKET_Info;
	permanent = TRUE;
	description = Pickpocket_20;
};


func int DIA_Addon_Tonak_PICKPOCKET_Condition()
{
	return C_Beklauen(12,8);
};

func void DIA_Addon_Tonak_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Addon_Tonak_PICKPOCKET);
	Info_AddChoice(DIA_Addon_Tonak_PICKPOCKET,Dialog_Back,DIA_Addon_Tonak_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Addon_Tonak_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Addon_Tonak_PICKPOCKET_DoIt);
};

func void DIA_Addon_Tonak_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Addon_Tonak_PICKPOCKET);
};

func void DIA_Addon_Tonak_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Addon_Tonak_PICKPOCKET);
};