
prototype Mst_Default_Harpie(C_Npc)
{
	name[0] = "Harpy";
	guild = GIL_HARPY;
	aivar[AIV_MM_REAL_ID] = ID_HARPY;
	level = 20;
	attribute[ATR_STRENGTH] = 95;
	attribute[ATR_DEXTERITY] = 95;
	attribute[ATR_HITPOINTS_MAX] = 210;
	attribute[ATR_HITPOINTS] = 210;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	protection[PROT_BLUNT] = 105;
	protection[PROT_EDGE] = 85;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 0;
	protection[PROT_FLY] = 10;
	protection[PROT_MAGIC] = 35;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_HARPY;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void B_SetVisuals_Harpie()
{
	Mdl_SetVisual(self,"Harpie.mds");
	Mdl_SetVisualBody(self,"Har_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Harpie(Mst_Default_Harpie)
{
	B_SetVisuals_Harpie();
	Npc_SetToFistMode(self);
};

