
func void EVT_TROLL_GRAVE_01()
{
	Wld_PlayEffect("spellFX_INCOVATION_VIOLET",hero,hero,0,0,0,FALSE);
	Wld_InsertNpc(Skeleton_Lord,"NW_TROLLAREA_TROLLROCKCAVE_07");
	Wld_InsertNpc(SkeletonMage,"NW_TROLLAREA_TROLLROCKCAVE_08");
	Wld_InsertNpc(SkeletonMage,"NW_TROLLAREA_TROLLROCKCAVE_09");
	Wld_InsertNpc(Skeleton_Lord,"NW_TROLLAREA_TROLLROCKCAVE_10");
	Snd_Play("THRILLJINGLE_02");
	Log_CreateTopic(TOPIC_Challenger,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Challenger,LOG_Running);
	B_LogEntry(TOPIC_Challenger,"I have found a strange enchanted skull in a burial cave near the ancient Stone Circle. The burial chamber was a trap, guarded by skeleton mages and undead paladins, I wonder what the purpose of the skull is.");
};

