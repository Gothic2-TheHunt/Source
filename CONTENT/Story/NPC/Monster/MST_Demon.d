
prototype Mst_Default_Demon(C_Npc)
{
	name[0] = "Demon";
	guild = GIL_DEMON;
	aivar[AIV_MM_REAL_ID] = ID_DEMON;
	level = 50;
	attribute[ATR_STRENGTH] = 250;
	attribute[ATR_DEXTERITY] = 250;
	attribute[ATR_HITPOINTS_MAX] = 500;
	attribute[ATR_HITPOINTS] = 500;
	attribute[ATR_MANA_MAX] = 200;
	attribute[ATR_MANA] = 200;
	protection[PROT_BLUNT] = 170;
	protection[PROT_EDGE] = 175;
	protection[PROT_POINT] = 175;
	protection[PROT_FIRE] = 175;
	protection[PROT_FLY] = 100;
	protection[PROT_MAGIC] = 125;
	damagetype = DAM_BLUNT;
	fight_tactic = FAI_DEMON;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MM_Packhunter] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void B_SetVisuals_Demon()
{
	Mdl_SetVisual(self,"Demon.mds");
	Mdl_SetVisualBody(self,"Dem_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Demon(Mst_Default_Demon)
{
	B_SetVisuals_Demon();
	Npc_SetToFistMode(self);
};

instance Summoned_Demon(Mst_Default_Demon)
{
	name[0] = "Summoned Demon";
	guild = gil_summoned_demon;
	aivar[AIV_MM_REAL_ID] = id_summoned_demon;
	aivar[AIV_SummonPoints] = 7;
	level = 0;
	attribute[ATR_STRENGTH] = 220;
	attribute[ATR_HITPOINTS_MAX] = 530;
	attribute[ATR_HITPOINTS] = 530;
	protection[PROT_BLUNT] = 135;
	protection[PROT_EDGE] = 135;
	protection[PROT_POINT] = 135;
	protection[PROT_FIRE] = 80;
	protection[PROT_FLY] = 100;
	protection[PROT_MAGIC] = 75;
	noFocus = FALSE;
	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude(self,ATT_FRIENDLY);
	start_aistate = ZS_MM_Rtn_Summoned;
	B_SetVisuals_Demon();
	Npc_SetToFistMode(self);
};

instance Xardas_DT_Demon1(Mst_Default_Demon)
{
	B_SetVisuals_Demon();
	Npc_SetToFistMode(self);
};

instance Xardas_DT_Demon2(Mst_Default_Demon)
{
	B_SetVisuals_Demon();
	Npc_SetToFistMode(self);
};

instance Xardas_DT_Demon3(Mst_Default_Demon)
{
	B_SetVisuals_Demon();
	Npc_SetToFistMode(self);
};

instance Xardas_DT_Demon4(Mst_Default_Demon)
{
	B_SetVisuals_Demon();
	Npc_SetToFistMode(self);
};

instance Xardas_DT_Demon5(Mst_Default_Demon)
{
	B_SetVisuals_Demon();
	Npc_SetToFistMode(self);
};

