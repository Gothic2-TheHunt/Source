
prototype Mst_Default_Blattcrawler(C_Npc)
{
	name[0] = "Mantis";
	guild = GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID] = ID_BLATTCRAWLER;
	level = 15;
	attribute[ATR_STRENGTH] = 75;
	attribute[ATR_DEXTERITY] = 75;
	attribute[ATR_HITPOINTS_MAX] = 150;
	attribute[ATR_HITPOINTS] = 150;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 60;
	protection[PROT_EDGE] = 100;
	protection[PROT_POINT] = 85;
	protection[PROT_FIRE] = 5;
	protection[PROT_FLY] = 60;
	protection[PROT_MAGIC] = 5;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_MINECRAWLER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_WuselStart] = OnlyRoutine;
};

func void B_SetVisuals_Blattcrawler()
{
	Mdl_SetVisual(self,"Blattcrawler.mds");
	Mdl_SetVisualBody(self,"BlattCrawler_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Blattcrawler(Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
	Npc_SetToFistMode(self);
};

