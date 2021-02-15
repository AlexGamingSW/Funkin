package;

import flixel.FlxSprite;
import Song.SwagSong;

class HealthIcon extends FlxSprite
{

	var customsprite:String = "";
	
	public function new(char:String = 'bf', isPlayer:Bool = false)
	{

		var daStage = PlayState.curStage;
		var daBf:String = '';
		switch (daStage)
		{
			case 'stageB':
				customsprite = 'b-side/';
				daBf = 'bf';
			case 'papyrus':
				customsprite = 'undertale/';
				daBf = 'bf';
			case 'spookyB':
				customsprite = 'b-side/';
				daBf = 'bf';
			case 'phillyB':
				customsprite = 'b-side/';
				daBf = 'bf';
			case 'roblox':
				customsprite = 'roblox/';
				daBf = 'bf';
			case 'limoB':
				customsprite = 'b-side/';
				daBf = 'bf';
			case 'limoC':
				customsprite = 'c-side/';
				daBf = 'bf';
			case 'schoolsans':
				customsprite = 'undertale/';
				daBf = 'bf';
			default:
				customsprite = '';
				daBf = 'bf';
		}

		super();
		loadGraphic('assets/images/' + customsprite + 'iconGrid.png', true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [17], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		animation.play(char);
		scrollFactor.set();
	}
}
