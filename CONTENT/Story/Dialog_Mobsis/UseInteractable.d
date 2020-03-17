
func void EVT_SMOKE_PIPE_FUNC()
{
	if(Npc_IsPlayer(self))
	{
		if(pipe_permanent == FALSE)
		{
			skills_Tried = skills_Tried + 1;
			B_GivePlayerXP(XP_Skill * (skills_Tried));
			pipe_permanent = TRUE;
		};

	};
};

func void EVT_STOMP_WEED_FUNC()
{
	if(Npc_IsPlayer(self))
	{
		if(weed_permanent == FALSE)
		{
			skills_Tried = skills_Tried + 1;
			B_GivePlayerXP(XP_Skill * (skills_Tried));
			weed_permanent = TRUE;
		};

	};
};

func void EVT_STIR_CAULDRON_FUNC()
{
	if(Npc_IsPlayer(self))
	{
		if(cauldron_permanent == FALSE)
		{
			skills_Tried = skills_Tried + 1;
			B_GivePlayerXP(XP_Skill * (skills_Tried));
			cauldron_permanent = TRUE;
		};

	};
};

func void EVT_ROLL_BARBEQUE_FUNC()
{
	if(Npc_IsPlayer(self))
	{
		if(barbeque_permanent == FALSE)
		{
			skills_Tried = skills_Tried + 1;
			B_GivePlayerXP(XP_Skill * (skills_Tried));
			barbeque_permanent = TRUE;
		};
	};
};

func void EVT_SAW_TREE_FUNC()
{
	if(Npc_IsPlayer(self))
	{
		if(saw_permanent == FALSE)
		{
			skills_Tried = skills_Tried + 1;
			B_GivePlayerXP(XP_Skill * (skills_Tried));
			saw_permanent = TRUE;
		};

	};
};



