
prototype Mst_Default_Keiler(C_Npc)
{
	name[0] = "Boar";
	guild = GIL_WOLF;
	aivar[AIV_MM_REAL_ID] = ID_Keiler;
	level = 12;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 70;
	attribute[ATR_HITPOINTS_MAX] = 125;
	attribute[ATR_HITPOINTS] = 125;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 75;
	protection[PROT_EDGE] = 60;
	protection[PROT_POINT] = 0;
	protection[PROT_FIRE] = 0;
	protection[PROT_FLY] = 50;
	protection[PROT_MAGIC] = 10;
	damagetype = DAM_BLUNT;
	fight_tactic = FAI_WOLF;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MM_Packhunter] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] = OnlyRoutine;
};

func void B_SetVisuals_Keiler()
{
	Mdl_SetVisual(self,"Keiler.mds");
	Mdl_SetVisualBody(self,"Keiler_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Keiler(Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItFoMuttonRaw,1);
};

instance YKeiler(Mst_Default_Keiler)
{
	level = 7;
	name[0] = "Young Boar";
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 25;
	attribute[ATR_HITPOINTS_MAX] = 70;
	attribute[ATR_HITPOINTS] = 70;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 20;
	protection[PROT_EDGE] = 15;
	protection[PROT_POINT] = 0;
	protection[PROT_FIRE] = 0;
	protection[PROT_FLY] = 15;
	protection[PROT_MAGIC] = 5;
	fight_tactic = FAI_MONSTER_COWARD;
	B_SetVisuals_Keiler();
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItFoMuttonRaw,1);
};

