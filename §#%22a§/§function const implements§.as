package §#"a§
{
   import §@"A§.§else var try§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.effects.BlinkEffect;
   import controls.TankWindowInner;
   import controls.labels.MouseDisabledLabel;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §function const implements§ extends Sprite
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      private static const leftProgressResource:Class = §const const extends§;
      
      private static const centerProgressResource:Class = §native set if§;
      
      private static const §;'§:int = 570;
      
      public static const HEIGHT:int = 50;
      
      private static const §?"5§:int = 7;
      
      private static const SPACE:int = 5;
      
      private static const §try var while§:int = 5;
      
      private static const §^]§:int = 44;
      
      private var leftProgressPart:Bitmap = new Bitmap(new leftProgressResource().bitmapData);
      
      private var centerProgressPart:Bitmap = new Bitmap(new centerProgressResource().bitmapData);
      
      private var §5c§:TankWindowInner;
      
      private var §-!u§:Bitmap = new Bitmap();
      
      private var §0!K§:Bitmap = new Bitmap();
      
      private var §function set break§:MouseDisabledLabel = new MouseDisabledLabel();
      
      private var currentQuestStreak:int;
      
      private var §^f§:Boolean;
      
      private var questImage:Bitmap = new Bitmap();
      
      private var rewardImage:Bitmap = new Bitmap();
      
      private var blinkEffect:BlinkEffect = new BlinkEffect(0.3,0.6);
      
      private var §const package§:int;
      
      public function §function const implements§()
      {
         super();
      }
      
      public function init(param1:§else var try§) : void
      {
         this.currentQuestStreak = param1.currentQuestStreak;
         this.§^f§ = param1.doneForToday;
         this.§get var case§(param1);
      }
      
      private function §get var case§(param1:§else var try§) : void
      {
         this.questImage.bitmapData = param1.questImage.data;
         this.questImage.x = 0;
         this.questImage.y = SPACE + 4;
         addChild(this.questImage);
         this.rewardImage.bitmapData = param1.rewardImage.data;
         this.rewardImage.x = this.§const package§ - SPACE;
         this.rewardImage.y = 2 * SPACE + 4;
         addChild(this.rewardImage);
      }
      
      public function redraw(param1:int) : void
      {
         this.§const package§ = param1 - 2 * §^]§ - 2 * §try var while§;
         this.§do var continue§();
      }
      
      public function §1!d§(param1:int) : void
      {
         if(!this.§^f§)
         {
            ++this.currentQuestStreak;
            this.§^f§ = true;
         }
         this.redraw(param1);
      }
      
      private function §do var continue§() : void
      {
         this.§&!x§();
         this.§finally var final§();
         this.§?!L§();
         this.§3!o§();
      }
      
      private function §3!o§() : void
      {
         this.§function set break§.visible = this.§const package§ > §;'§;
      }
      
      private function §&!x§() : void
      {
         this.rewardImage.x = this.§const package§ + §^]§ + 2 * §try var while§;
      }
      
      private function §finally var final§() : void
      {
         if(this.§5c§ == null)
         {
            this.§5c§ = new TankWindowInner(this.§const package§,HEIGHT,TankWindowInner.GREEN);
            this.§5c§.x = §^]§ + §try var while§;
            this.§5c§.y = SPACE;
            addChild(this.§5c§);
            this.§-!u§.x = §^]§ + §try var while§ + 1;
            this.§-!u§.y = SPACE + 1;
            this.§-!u§.blendMode = BlendMode.OVERLAY;
            addChild(this.§-!u§);
            this.§0!K§.y = SPACE + 1;
            this.§0!K§.blendMode = BlendMode.OVERLAY;
            addChild(this.§0!K§);
            this.§function set break§.x = §^]§ + §try var while§ + SPACE;
            this.§function set break§.y = 4 * SPACE;
            this.§function set break§.text = localeService.getText(TanksLocale.TEXT_WEEKLY_QUEST_HINT);
            addChild(this.§function set break§);
         }
         this.§5c§.width = this.§const package§;
      }
      
      private function §?!L§() : void
      {
         var _loc1_:Shape = null;
         var _loc2_:Graphics = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Shape = null;
         var _loc6_:Graphics = null;
         this.blinkEffect.stop();
         var _loc7_:Number = this.§const package§ * 1 / §?"5§;
         var _loc8_:int = _loc7_ * this.currentQuestStreak;
         if(this.currentQuestStreak != 0)
         {
            this.§-!u§.bitmapData = new BitmapData(_loc8_,this.leftProgressPart.height,true,0);
            this.§-!u§.bitmapData.draw(this.leftProgressPart);
            if(_loc8_ > this.leftProgressPart.width)
            {
               this.centerProgressPart.width = Math.min(_loc8_ - this.leftProgressPart.width,this.§const package§ - this.leftProgressPart.width * 2) - 2;
               _loc1_ = new Shape();
               _loc2_ = _loc1_.graphics;
               _loc2_.beginBitmapFill(this.centerProgressPart.bitmapData);
               _loc2_.drawRect(this.leftProgressPart.width,0,this.centerProgressPart.width,this.centerProgressPart.height);
               _loc2_.endFill();
               this.§-!u§.bitmapData.draw(_loc1_);
            }
            if(this.currentQuestStreak == §?"5§)
            {
               this.§-!u§.bitmapData.draw(this.leftProgressPart,new Matrix(-1,0,0,1,this.§const package§ - 2,0));
            }
         }
         if(!this.§^f§)
         {
            _loc3_ = _loc7_;
            _loc4_ = 0;
            this.§0!K§.bitmapData = new BitmapData(this.§const package§ - _loc8_,this.leftProgressPart.height,true,0);
            if(this.currentQuestStreak == 0)
            {
               this.§0!K§.bitmapData.draw(this.leftProgressPart);
               _loc3_ = _loc7_ - this.leftProgressPart.width;
               _loc4_ = this.leftProgressPart.width;
            }
            if(this.currentQuestStreak == 6)
            {
               this.§0!K§.bitmapData.draw(this.leftProgressPart,new Matrix(-1,0,0,1,this.§const package§ - _loc8_,0));
               _loc3_ = this.§const package§ - _loc8_ - this.leftProgressPart.width;
            }
            this.centerProgressPart.width = _loc3_;
            _loc5_ = new Shape();
            _loc6_ = _loc5_.graphics;
            _loc6_.beginBitmapFill(this.centerProgressPart.bitmapData);
            _loc6_.drawRect(_loc4_,0,this.centerProgressPart.width,this.centerProgressPart.height);
            _loc6_.endFill();
            this.§0!K§.bitmapData.draw(_loc5_);
            this.§0!K§.x = this.§-!u§.x + this.§-!u§.width - (this.currentQuestStreak == 0 ? 0 : 2);
            this.blinkEffect.start(this.§0!K§);
         }
         else
         {
            this.§0!K§.visible = false;
         }
      }
   }
}

