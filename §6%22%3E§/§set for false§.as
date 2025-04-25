package §6">§
{
   import §9!D§.§3"Q§;
   import alternativa.tanks.display.Flash;
   import alternativa.tanks.display.SquareSectorIndicator;
   import controls.base.LabelBase;
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.utils.getTimer;
   import §while finally§.§for var do§;
   
   public class §set for false§ extends Sprite
   {
      private static const SIZE:int = 36;
      
      private static const §4"V§:uint = 16742221;
      
      private static const § ![§:uint = 4760319;
      
      private static const §do for const§:uint = 16777215;
      
      private static const § "<§:uint = 9249024;
      
      private static const §for set do§:uint = 16256;
      
      private var point:§for var do§;
      
      private var label:LabelBase;
      
      private var §9"U§:SquareSectorIndicator;
      
      private var §,!o§:§3"Q§ = §3"Q§.NEUTRAL;
      
      private var score:Number = 0;
      
      private const flash:Flash = Flash.getDefault();
      
      public function §set for false§(param1:§for var do§)
      {
         super();
         this.point = param1;
         this.§4-§();
         this.createLabel();
         this.update();
      }
      
      public static function §with const final§(param1:§3"Q§) : uint
      {
         switch(param1)
         {
            case §3"Q§.BLUE:
               return § ![§;
            case §3"Q§.RED:
               return §4"V§;
            default:
               return §do for const§;
         }
      }
      
      private function §4-§() : void
      {
         this.§9"U§ = new SquareSectorIndicator(SIZE,0,0,0);
         addChild(this.§9"U§);
      }
      
      private function createLabel() : void
      {
         this.label = new LabelBase();
         this.label.size = 18;
         this.label.bold = true;
         this.label.color = §with const final§(this.point.§&!v§());
         this.label.text = this.point.getName();
      }
      
      public function getLabel() : LabelBase
      {
         return this.label;
      }
      
      public function update() : void
      {
         this.§>!a§();
         this.updateScore();
      }
      
      private function §4f§(param1:uint) : void
      {
         var _loc2_:ColorTransform = this.§9"U§.transform.colorTransform;
         _loc2_.redOffset = param1;
         _loc2_.greenOffset = param1;
         _loc2_.blueOffset = param1;
         this.§9"U§.transform.colorTransform = _loc2_;
      }
      
      private function §>!a§() : void
      {
         if(this.§,!o§ != this.point.§&!v§())
         {
            this.§,!o§ = this.point.§&!v§();
            this.label.color = this.§"!]§();
            if(this.§,!o§ != §3"Q§.NEUTRAL)
            {
               this.flash.init();
            }
         }
         if(this.flash.isActive())
         {
            this.§4f§(this.flash.getColorOffset(getTimer()));
         }
      }
      
      private function §"!]§() : uint
      {
         switch(this.§,!o§)
         {
            case §3"Q§.BLUE:
               return § ![§;
            case §3"Q§.RED:
               return §4"V§;
            default:
               return §do for const§;
         }
      }
      
      private function updateScore() : void
      {
         if(this.score != this.point.§%O§())
         {
            this.score = this.point.§%O§();
            if(this.score < 0)
            {
               this.§9"U§.setColor(§ "<§,1);
            }
            else if(this.score > 0)
            {
               this.§9"U§.setColor(§for set do§,1);
            }
            else
            {
               this.§9"U§.setColor(0,0);
            }
            this.§9"U§.setProgress(Math.abs(this.score) / 100);
         }
      }
      
      [Obfuscation(rename="false")]
      override public function get width() : Number
      {
         return SIZE;
      }
      
      [Obfuscation(rename="false")]
      override public function get height() : Number
      {
         return SIZE;
      }
   }
}

