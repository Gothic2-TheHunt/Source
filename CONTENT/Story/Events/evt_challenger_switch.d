
func void EVT_CHALLENGER_SWITCH_01_FUNC()
{
	if(challenger_activated == FALSE)
	{
		Wld_InsertNpc(The_Challenger,"FP_CHALLENGER");
		//Wld_InsertItem(ItMi_OrnamentEffekt_FOREST_Addon,"FP_CHALLENGER");
		Wld_PlayEffect("FX_EarthQuake",hero,hero,0,0,0,FALSE);
		Wld_PlayEffect("spellFX_INCOVATION_VIOLET",The_Challenger,The_Challenger,0,0,0,FALSE);
		Snd_Play("Ravens_Earthquake4");
		Snd_Play("Ravens_Earthquake2");
		Snd_Play("THRILLJINGLE_02");
		//Wld_PlayEffect("spellFX_LIGHTSTAR_RingRitual",ItMi_OrnamentEffekt_FOREST_Addon,ItMi_OrnamentEffekt_FOREST_Addon,0,0,0,FALSE);
		Wld_PlayEffect("spellFX_LIGHTSTAR_RingRitual",The_Challenger,The_Challenger,0,0,0,FALSE);
		Log_CreateTopic(TOPIC_Challenger,LOG_MISSION);
		B_LogEntry(TOPIC_Challenger,"I activated the mechanism using the enchanted skulls and managed to summon The Challenger.");
		Log_SetTopicStatus(TOPIC_Challenger,LOG_SUCCESS);
		B_GivePlayerXP(XP_SummonedTheChallenger);
		challenger_activated = TRUE;
	};
};

//func void EVT_CHALLENGER_SKULL_01_FUNC()
//{	
//	if((Npc_IsDead(Crypt_Skeleton_Lord) == TRUE) && (EVT_CRYPT_FINAL_OneTime == TRUE) && Npc_HasItems(hero,ItMi_EnchantedSkull_02) && inubis_dead == FALSE)
//	{
//		Log_CreateTopic(TOPIC_Challenger,LOG_MISSION);
//		Log_SetTopicStatus(TOPIC_Challenger,LOG_Running);
//		B_LogEntry(TOPIC_Challenger,"I have killed a powerfull ancient undead warlord - Inubis and found a strange enchanted skull on him. Anything guarded by such a powerfull undead being, must be important, so I should probably hold on to it.");
//		inubis_dead = TRUE;
//	};
//};

func void EVT_CHALLENGER_SKULL_02_FUNC()
{
	Log_CreateTopic(TOPIC_Challenger,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Challenger,LOG_Running);
	B_LogEntry(TOPIC_Challenger,"I have found a strange enchanted skull in one of the abandoned mines near Onar's farm. It must be important, since it was guarded by an undead paladin.");
};

