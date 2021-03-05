
prototype Mst_Default_Dragon_Rock(C_Npc)
{
	name[0] = "Rock Dragon";
	guild = GIL_DRAGON;
	aivar[AIV_MM_REAL_ID] = ID_DRAGON_ROCK;
	level = 400;
	bodyStateInterruptableOverride = TRUE;
	attribute[ATR_STRENGTH] = 220;
	attribute[ATR_DEXTERITY] = 220;
	attribute[ATR_HITPOINTS_MAX] = 2550;
	attribute[ATR_HITPOINTS] = 2550;
	attribute[ATR_MANA_MAX] = 1000;
	attribute[ATR_MANA] = 1000;
	protection[PROT_BLUNT] = 145;
	protection[PROT_EDGE] = 210;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = 125;
	protection[PROT_FLY] = IMMUNE;
	protection[PROT_MAGIC] = 25;
	damagetype = DAM_FIRE | DAM_FLY;
	damage[DAM_INDEX_FIRE] = 149;
	damage[DAM_INDEX_FLY] = 1;
	fight_tactic = FAI_DRAGON;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_DRAGON_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MaxDistToWp] = 2000;
	aivar[AIV_OriginalFightTactic] = FAI_DRAGON;
	start_aistate = ZS_MM_Rtn_DragonRest;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void B_SetVisuals_Dragon_Rock()
{
	Mdl_SetVisual(self,"Dragon.mds");
	Mdl_SetVisualBody(self,"Dragon_Rock_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Dragon_Rock(Mst_Default_Dragon_Rock)
{
	name[0] = "Pedrakhan";
	flags = NPC_FLAG_IMMORTAL;
	B_SetVisuals_Dragon_Rock();
	Npc_SetToFistMode(self);
};

