
prototype Mst_Default_Snapper(C_Npc)
{
	name[0] = "Snapper";
	guild = GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID] = ID_SNAPPER;
	level = 20;
	attribute[ATR_STRENGTH] = 95;
	attribute[ATR_DEXTERITY] = 95;
	attribute[ATR_HITPOINTS_MAX] = 190;
	attribute[ATR_HITPOINTS] = 190;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 60;
	protection[PROT_EDGE] = 80;
	protection[PROT_POINT] = 70;
	protection[PROT_FIRE] = 25;
	protection[PROT_FLY] = 50;
	protection[PROT_MAGIC] = 10;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_SNAPPER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MM_Packhunter] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void B_SetVisuals_Snapper()
{
	Mdl_SetVisual(self,"Snapper.mds");
	Mdl_SetVisualBody(self,"Sna_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Snapper(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

instance NewMine_Snapper1(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

instance NewMine_Snapper2(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

instance NewMine_Snapper3(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

instance NewMine_Snapper4(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

instance NewMine_Snapper5(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

instance NewMine_Snapper6(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

instance NewMine_Snapper7(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

instance NewMine_Snapper8(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

instance NewMine_LeadSnapper(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
	name[0] = "Pack Leader";
	attribute[ATR_STRENGTH] = 60;
	attribute[ATR_DEXTERITY] = 60;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 30;
	protection[PROT_EDGE] = 30;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 0;
	protection[PROT_FLY] = 30;
	protection[PROT_MAGIC] = 0;
	CreateInvItems(self,ItAt_ClawLeader,1);
};

instance Grimbald_Snapper1(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

instance Grimbald_Snapper2(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

instance Grimbald_Snapper3(Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
	Npc_SetToFistMode(self);
};

