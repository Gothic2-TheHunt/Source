
prototype Mst_Default_Razor(C_Npc)
{
	name[0] = "Razor";
	guild = GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID] = ID_Razor;
	level = 25;
	attribute[ATR_STRENGTH] = 125;
	attribute[ATR_DEXTERITY] = 125;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 100;
	protection[PROT_EDGE] = 105;
	protection[PROT_POINT] = 100;
	protection[PROT_FIRE] = 65;
	protection[PROT_FLY] = 75;
	protection[PROT_MAGIC] = 35;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_SNAPPER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_Packhunter] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void Set_Razor_Visuals()
{
	Mdl_SetVisual(self,"Razor.mds");
	Mdl_SetVisualBody(self,"Raz_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Razor(Mst_Default_Razor)
{
	Set_Razor_Visuals();
	Npc_SetToFistMode(self);
};

instance CanyonRazor01(Mst_Default_Razor)
{
	Set_Razor_Visuals();
	Npc_SetToFistMode(self);
};

instance CanyonRazor02(Mst_Default_Razor)
{
	Set_Razor_Visuals();
	Npc_SetToFistMode(self);
};

instance CanyonRazor03(Mst_Default_Razor)
{
	Set_Razor_Visuals();
	Npc_SetToFistMode(self);
};

instance CanyonRazor04(Mst_Default_Razor)
{
	Set_Razor_Visuals();
	Npc_SetToFistMode(self);
};

instance CanyonRazor05(Mst_Default_Razor)
{
	Set_Razor_Visuals();
	Npc_SetToFistMode(self);
};

instance CanyonRazor06(Mst_Default_Razor)
{
	Set_Razor_Visuals();
	Npc_SetToFistMode(self);
};

instance CanyonRazor07(Mst_Default_Razor)
{
	Set_Razor_Visuals();
	Npc_SetToFistMode(self);
};

instance CanyonRazor08(Mst_Default_Razor)
{
	Set_Razor_Visuals();
	Npc_SetToFistMode(self);
};

instance CanyonRazor09(Mst_Default_Razor)
{
	Set_Razor_Visuals();
	Npc_SetToFistMode(self);
};

instance CanyonRazor10(Mst_Default_Razor)
{
	Set_Razor_Visuals();
	Npc_SetToFistMode(self);
};

