
prototype Mst_Default_Minecrawler(C_Npc)
{
	name[0] = "Minecrawler";
	guild = GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID] = ID_MINECRAWLER;
	level = 16;
	attribute[ATR_STRENGTH] = 80;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_HITPOINTS_MAX] = 165;
	attribute[ATR_HITPOINTS] = 165;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 50;
	protection[PROT_EDGE] = 80;
	protection[PROT_POINT] = 85;
	protection[PROT_FIRE] = 15;
	protection[PROT_FLY] = 75;
	protection[PROT_MAGIC] = 10;
	damagetype = DAM_BLUNT;
	fight_tactic = FAI_MINECRAWLER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_WuselStart] = OnlyRoutine;
};

func void B_SetVisuals_Minecrawler()
{
	Mdl_SetVisual(self,"Crawler.mds");
	Mdl_SetVisualBody(self,"Crw_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Minecrawler(Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
	Npc_SetToFistMode(self);
};

instance Minecrawler_Priest(Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
	Npc_SetToFistMode(self);
};

instance GoldMinecrawler(Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
	Npc_SetToFistMode(self);
};

