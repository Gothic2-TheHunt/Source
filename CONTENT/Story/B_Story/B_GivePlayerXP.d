
func void B_GivePlayerXP(var int add_xp)
{
	var string concatText;
	if(hero.level == 0)
	{
		hero.exp_next = 500;
	};
	hero.exp = hero.exp + add_xp;
	concatText = PRINT_XPGained;
	concatText = ConcatStrings(concatText,IntToString(add_xp));
	PrintScreen(concatText,-1,YPOS_XPGained,FONT_ScreenSmall,2);
	if(hero.exp >= hero.exp_next)
	{
		hero.level = hero.level + 1;
		if(hero.level >= 65)
		{
			hero.exp_next = hero.exp_next + (16525 + ((hero.level + 1 - 65) * 30));
		}
		else if(hero.level >= 50)
		{
			hero.exp_next = hero.exp_next + (15625 + ((hero.level + 1 - 50) * 60));
		}
		else if(hero.level >= 35)
		{
			hero.exp_next = hero.exp_next + (13750 + ((hero.level + 1 - 35) * 125));
		}
		else if(hero.level >= 20)
		{
			hero.exp_next = hero.exp_next + (10000 + ((hero.level + 1 - 20) * 250));
		}
		else
		{
			hero.exp_next = hero.exp_next + ((hero.level + 1) * 500);
		};
		
		hero.attribute[ATR_HITPOINTS_MAX] = hero.attribute[ATR_HITPOINTS_MAX] + ((HP_PER_LEVEL / 12) * 5);
		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS] + ((HP_PER_LEVEL / 12) * 5);
		hero.lp = hero.lp + LP_PER_LEVEL;
		PrintScreen(PRINT_LevelUp,-1,YPOS_LevelUp,FONT_Screen,2);
		Snd_Play("LevelUp");
	};
	B_CheckLog();
};

