package;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxSpriteGroup;
import flixel.math.FlxMath;

class MenuItem extends FlxSpriteGroup
{
	public var targetY:Float = 0;
	public var week:FlxSprite;
	public var weekB:FlxSprite;
	public var weekC:FlxSprite;
	public var weekM:FlxSprite;

	public function new(x:Float, y:Float, weekNum:Int = 0)
	{
		super(x, y);

		var tex = FlxAtlasFrames.fromSparrow('assets/images/campaign_menu_UI_assets.png', 'assets/images/campaign_menu_UI_assets.xml');
		var texB = FlxAtlasFrames.fromSparrow('assets/images/b-side/campaign_menu_UI_assets.png', 'assets/images/b-side/campaign_menu_UI_assets.xml');
		var texC = FlxAtlasFrames.fromSparrow('assets/images/c-side/campaign_menu_UI_assets.png', 'assets/images/c-side/campaign_menu_UI_assets.xml');
		var texM = FlxAtlasFrames.fromSparrow('assets/images/marathon/marathon.png', 'assets/images/marathon/marathon.xml');

		week = new FlxSprite();
		weekB = new FlxSprite();
		weekC = new FlxSprite();
		weekM = new FlxSprite();
		week.frames = tex;
		weekB.frames = texB;
		weekC.frames = texC;
		weekM.frames = texM;

		// TUTORIAL IS WEEK 0
		week.animation.addByPrefix('week0', 'tutorial selected', 24);
		weekB.animation.addByPrefix('week1', 'tutorial selected', 24);
		week.animation.addByPrefix('week2', "WEEK1 select", 24);
		weekB.animation.addByPrefix('week3', "WEEK1 select", 24);
		week.animation.addByPrefix('week4', "week2 select", 24);
		weekB.animation.addByPrefix('week5', "week2 select", 24);
		week.animation.addByPrefix('week6', "Week 3 press", 24);
		weekB.animation.addByPrefix('week7', "Week 3 press", 24);
		week.animation.addByPrefix('week8', "Week 4 press", 24);
		weekB.animation.addByPrefix('week9', "Week 4 press", 24);
		weekC.animation.addByPrefix('week10', "Week 4 press", 24);
		week.animation.addByPrefix('week11', "week 5", 24);
		week.animation.addByPrefix('week12', "Week 6", 24);
		weekM.animation.addByPrefix('week13', "Week 6", 24);
		add(week);
		add(weekB);
		add(weekC);
		add(weekM);

		week.animation.play('week' + weekNum);
		week.animation.pause();
		week.updateHitbox();

		weekB.animation.play('week' + weekNum);
		weekB.animation.pause();
		weekB.updateHitbox();

		weekC.animation.play('week' + weekNum);
		weekC.animation.pause();
		weekC.updateHitbox();

		weekM.animation.play('week' + weekNum);
		weekM.animation.pause();
		weekM.updateHitbox();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);
		y = FlxMath.lerp(y, (targetY * 120) + 480, 0.17);
	}
}
