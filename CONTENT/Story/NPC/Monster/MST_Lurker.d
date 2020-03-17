
prototype Mst_Default_Lurker(C_Npc)
{
	name[0] = "Lurker";
	guild = GIL_LURKER;
	aivar[AIV_MM_REAL_ID] = ID_LURKER;
	level = 16;
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_DEXTERITY] = 65;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 60;
	protection[PROT_EDGE] = 70;
	protection[PROT_POINT] = 75;
	protection[PROT_FIRE] = 15;
	protection[PROT_FLY] = 70;
	protection[PROT_MAGIC] = 15;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_LURKER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] = OnlyRoutine;
};

func void B_SetVisuals_Lurker()
{
	Mdl_SetVisual(self,"Lurker.mds");
	Mdl_SetVisualBody(self,"Lur_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Lurker(Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	Npc_SetToFistMode(self);
};

instance Kervo_Lurker1(Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	Npc_SetToFistMode(self);
	aivar[AIV_MaxDistToWp] = 500;
	aivar[AIV_OriginalFightTactic] = FAI_LURKER;
};

instance Kervo_Lurker2(Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	Npc_SetToFistMode(self);
	aivar[AIV_MaxDistToWp] = 500;
	aivar[AIV_OriginalFightTactic] = FAI_LURKER;
};

instance Kervo_Lurker3(Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	Npc_SetToFistMode(self);
	aivar[AIV_MaxDistToWp] = 500;
	aivar[AIV_OriginalFightTactic] = FAI_LURKER;
};

instance Kervo_Lurker4(Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	Npc_SetToFistMode(self);
	aivar[AIV_MaxDistToWp] = 500;
	aivar[AIV_OriginalFightTactic] = FAI_LURKER;
};

instance Kervo_Lurker5(Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	Npc_SetToFistMode(self);
	aivar[AIV_MaxDistToWp] = 500;
	aivar[AIV_OriginalFightTactic] = FAI_LURKER;
};

instance Kervo_Lurker6(Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	Npc_SetToFistMode(self);
	aivar[AIV_MaxDistToWp] = 500;
	aivar[AIV_OriginalFightTactic] = FAI_LURKER;
};

instance BeachLurker1(Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	Npc_SetToFistMode(self);
};

instance BeachLurker2(Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	Npc_SetToFistMode(self);
};

instance BeachLurker3(Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	Npc_SetToFistMode(self);
};

instance Water_Beast(Mst_Default_Lurker)
{
	name[0] = "Water Beast";
	level = 24;
	attribute[ATR_STRENGTH] = 105;
	attribute[ATR_DEXTERITY] = 85;
	attribute[ATR_HITPOINTS_MAX] = 300;
	attribute[ATR_HITPOINTS] = 300;
	protection[PROT_BLUNT] = 80;
	protection[PROT_EDGE] = 90;
	protection[PROT_POINT] = 90;
	protection[PROT_FIRE] = 20;
	protection[PROT_FLY] = 70;
	protection[PROT_MAGIC] = 20;
	B_SetVisuals_Lurker();
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItAt_LurkerClaw,2);
};

