
func void EVT_MATTEO_GUARD_FUNC()
{
	var C_Npc matteoGuard;
	matteoGuard = Hlp_GetNpc(Mil_325_Miliz);
	matteoGuard.senses = matteoGuard.senses | SENSE_SMELL;
};
