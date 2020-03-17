
func void ZS_Guard_Passage()
{
	var C_Npc matteoGuard;
	matteoGuard = Hlp_GetNpc(Mil_325_Miliz);
	Perception_Set_Normal();
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(matteoGuard))
	{
		self.senses = self.senses | SENSE_SMELL;
	};
	B_ResetAll(self);
	Npc_SetPercTime(self,0.1);
	AI_Standup(self);
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	if(Npc_GetDistToNpc(self,hero) > PERC_DIST_DIALOG)
	{
		AI_AlignToWP(self);
	};
};

func int ZS_Guard_Passage_Loop()
{
	if(Npc_GetStateTime(self) >= 3)
	{
		if(Npc_GetDistToNpc(self,hero) > PERC_DIST_DIALOG)
		{
			AI_AlignToWP(self);
			Npc_SetStateTime(self,0);
		};
	};
	return LOOP_CONTINUE;
};

func void ZS_Guard_Passage_End()
{
};

