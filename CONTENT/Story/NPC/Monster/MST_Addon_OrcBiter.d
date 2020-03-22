
prototype Mst_Default_OrcBiter(C_Npc)
{
	name[0] = "Chomper";
	guild = GIL_SCAVENGER;
	aivar[AIV_MM_REAL_ID] = ID_OrcBiter;
	level = 14;
	attribute[ATR_STRENGTH] = 80;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_HITPOINTS_MAX] = 140;
	attribute[ATR_HITPOINTS] = 140;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 50;
	protection[PROT_EDGE] = 55;
	protection[PROT_POINT] = 40;
	protection[PROT_FIRE] = 5;
	protection[PROT_FLY] = 50;
	protection[PROT_MAGIC] = 10;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_SCAVENGER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void Set_OrcBiter_Visuals()
{
	Mdl_SetVisual(self,"Scavenger.mds");
	Mdl_ApplyOverlayMds(self,"Orcbiter.mds");
	Mdl_SetVisualBody(self,"Sc2_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance OrcBiter(Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItFoMuttonRaw,2);
};

instance OrcBiter_Strong(Mst_Default_OrcBiter)
{
	name[0] = "Orc Biter";
	level = 22;
	attribute[ATR_STRENGTH] = 110;
	attribute[ATR_DEXTERITY] = 110;
	attribute[ATR_HITPOINTS_MAX] = 205;
	attribute[ATR_HITPOINTS] = 205;
	protection[PROT_BLUNT] = 85;
	protection[PROT_EDGE] = 90;
	protection[PROT_POINT] = 75;
	protection[PROT_FIRE] = 10;
	protection[PROT_FLY] = 60;
	protection[PROT_MAGIC] = 20;
	Set_OrcBiter_Visuals();
	Mdl_SetModelScale(self,1.2,1.2,1.2);
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItFoMuttonRaw,2);
};

