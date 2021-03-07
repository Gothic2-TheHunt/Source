const int SHRUNK_FLEE_TIME_SEC = 5;

func void B_StopMagicShrinkFlee()
{
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_ClearAIQueue(self);
	AI_Standup(self);
	if(self.guild < GIL_SEPERATOR_HUM)
	{
		B_AssessDamage();
		AI_ContinueRoutine(self);
	}
	else
	{
		Npc_SetTarget(self,other);
		B_ClearPerceptions(self);
		AI_StartState(self,ZS_MM_Attack,0,"");
		// Npc_SetTempAttitude(self,ATT_HOSTILE);
		// AI_ContinueRoutine(self);
	};
};

func int ZS_MagicShrink()
{
	if(!Npc_HasBodyFlag(self,BS_FLAG_INTERRUPTABLE))
	{
		AI_Standup(self);
	}
	else
	{
		AI_StandupQuick(self);
	};
	self.aivar[AIV_MM_ShrinkState] = 0;
};

func int ZS_MagicShrink_Loop()
{
	if(self.aivar[AIV_MM_ShrinkState] == 0)
	{
		Mdl_SetModelScale(self,0.97,0.97,0.97);
		self.aivar[AIV_MM_ShrinkState] = 1;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 1)
	{
		Mdl_SetModelScale(self,0.94,0.94,0.94);
		self.aivar[AIV_MM_ShrinkState] = 2;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 2)
	{
		Mdl_SetModelScale(self,0.91,0.91,0.91);
		self.aivar[AIV_MM_ShrinkState] = 3;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 3)
	{
		Mdl_SetModelScale(self,0.87,0.87,0.87);
		self.aivar[AIV_MM_ShrinkState] = 4;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 4)
	{
		Mdl_SetModelScale(self,0.84,0.84,0.84);
		self.aivar[AIV_MM_ShrinkState] = 5;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 5)
	{
		Mdl_SetModelScale(self,0.81,0.81,0.81);
		self.aivar[AIV_MM_ShrinkState] = 6;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 6)
	{
		Mdl_SetModelScale(self,0.77,0.77,0.77);
		self.aivar[AIV_MM_ShrinkState] = 7;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 7)
	{
		Mdl_SetModelScale(self,0.74,0.74,0.74);
		self.aivar[AIV_MM_ShrinkState] = 8;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 8)
	{
		Mdl_SetModelScale(self,0.71,0.71,0.71);
		self.aivar[AIV_MM_ShrinkState] = 9;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 9)
	{
		Mdl_SetModelScale(self,0.68,0.68,0.68);
		self.aivar[AIV_MM_ShrinkState] = 10;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 10)
	{
		Mdl_SetModelScale(self,0.65,0.65,0.65);
		self.aivar[AIV_MM_ShrinkState] = 11;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 11)
	{
		Mdl_SetModelScale(self,0.62,0.62,0.62);
		self.aivar[AIV_MM_ShrinkState] = 12;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 12)
	{
		Mdl_SetModelScale(self,0.6,0.6,0.6);
		self.aivar[AIV_MM_ShrinkState] = 13;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 13)
	{
		Npc_ChangeAttribute(self,ATR_HITPOINTS,-((self.attribute * 7) / 10));
		Npc_ChangeAttribute(self,ATR_HITPOINTS_MAX,-((self.attribute[ATR_HITPOINTS_MAX] * 7) / 10));
		Npc_ChangeAttribute(self,ATR_STRENGTH,-((self.attribute[ATR_STRENGTH] * 7) / 10));
		
		if(self.protection[PROT_BLUNT] == IMMUNE)
		{
			self.protection[PROT_BLUNT] = 75;
		}
		else
		{
			self.protection[PROT_BLUNT] = (self.protection[PROT_BLUNT] * 4) / 10;
		};	
		
		if(self.protection[PROT_EDGE] == IMMUNE)
		{
			self.protection[PROT_EDGE] = 75;
		}
		else
		{
			self.protection[PROT_EDGE] = (self.protection[PROT_EDGE] * 4) / 10;
		};	
		
		if(self.protection[PROT_FIRE] == IMMUNE)
		{
			self.protection[PROT_FIRE] = 75;
		}
		else
		{
			self.protection[PROT_FIRE] = (self.protection[PROT_FIRE] * 3) / 10;
		};

		self.protection[PROT_FLY] = 0;
		self.protection[PROT_MAGIC] = (self.protection[PROT_MAGIC] * 3) / 10;
		
		if(self.protection[PROT_POINT] == IMMUNE)
		{
			self.protection[PROT_POINT] = 75;
		}
		else
		{
			self.protection[PROT_POINT] = (self.protection[PROT_POINT] * 4) / 10;
		};
		
		self.aivar[AIV_MM_ShrinkState] = 14;
	}
	else if(self.aivar[AIV_MM_ShrinkState] == 14)
	{
		Npc_ClearAIQueue(self);
		self.start_aistate = ZS_MagicShrunk;
		AI_StartState(self,ZS_MagicShrunk,1,"");
		return LOOP_END;
	};
	AI_Wait(self,0.38);
	return LOOP_CONTINUE;
};

func void ZS_MagicShrink_End()
{
};

func void ZS_MagicShrunk()
{
	Npc_SetTarget(self,hero);
};

func int ZS_MagicShrunk_Loop()
{
	// if(Npc_GetStateTime(self) > SHRUNK_FLEE_TIME_SEC)
	// {
		// B_StopMagicShrinkFlee();
	// }
	// else
	// {
		// AI_Flee(self);
	// };
	B_StopMagicShrinkFlee();
	return LOOP_CONTINUE;
};

func void ZS_MagicShrunk_End()
{
	// Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	// Npc_ClearAIQueue(self);
	// AI_Standup(self);
	// Npc_SetTarget(self,other);
	// B_ClearPerceptions(self);
	// AI_StartState(self,ZS_MM_Attack,0,"");
};

