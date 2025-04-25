package alternativa.tanks.models.battle.gui.gui.statistics.field.score.ctf
{
   import §7"G§.§native set var§;
   import §],§.§while var const§;
   import §case var else§.§`#§;
   import controls.Label;
   import controls.resultassets.WhiteFrame;
   import flash.display.Bitmap;
   import flash.display.GradientType;
   import flash.display.Graphics;
   import flash.display.SpreadMethod;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.text.TextFieldAutoSize;
   import flash.utils.getTimer;
   
   public class §import for native§ extends Sprite implements §native set var§
   {
      private static var §with for in§:Class = §continue const each§;
      
      private static var §implements set while§:Class = §0!6§;
      
      private static var §#"]§:Class = §for const in§;
      
      private static var §final function§:Class = §0E§;
      
      private static var §>`§:Class = dynamic;
      
      private static const §4"V§:uint = 16742221;
      
      private static const § ![§:uint = 4760319;
      
      private static const § "<§:uint = 9249024;
      
      private static const §for set do§:uint = 16256;
      
      private static const §?!G§:int = 30;
      
      private static const §dynamic const else§:int = 6;
      
      private var border:WhiteFrame;
      
      private var §try var native§:§`#§;
      
      private var §include const if§:§`#§;
      
      private var labelRed:Label;
      
      private var §4"+§:Label;
      
      private var time:int;
      
      private var §+"f§:§;!P§ = new §;!P§(§4"V§,16777215);
      
      private var §implements var set§:§;!P§ = new §;!P§(§ ![§,16777215);
      
      private var blinker:§break var class§ = new §break var class§(0,1,Vector.<int>([200,600]),Vector.<Number>([10,1.1]));
      
      public function §import for native§()
      {
         super();
         this.border = new WhiteFrame();
         addChild(this.border);
         this.labelRed = this.createLabel(§4"V§);
         this.§4"+§ = this.createLabel(§ ![§);
         this.§try var native§ = new §`#§(new §with for in§(),new §#"]§(),new §>`§(),this.blinker);
         this.§try var native§.y = 5;
         addChild(this.§try var native§);
         this.§include const if§ = new §`#§(new §implements set while§(),new §final function§(),new §>`§(),this.blinker);
         this.§include const if§.y = 5;
         addChild(this.§include const if§);
         this.update();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
      }
      
      private static function §switch var null§(param1:Label, param2:§;!P§, param3:Bitmap) : void
      {
         var _loc4_:uint = 0;
         if(param3.visible)
         {
            _loc4_ = param2.interpolate(param3.alpha);
         }
         else
         {
            _loc4_ = param2.§static use§;
         }
         if(_loc4_ != param1.textColor)
         {
            param1.textColor = _loc4_;
         }
      }
      
      public function §for in§(param1:int, param2:int) : void
      {
         this.labelRed.text = param1.toString();
         this.§4"+§.text = param2.toString();
         this.§include const if§.setState(§`#§.§switch super§);
         this.§try var native§.setState(§`#§.§switch super§);
         this.update();
      }
      
      public function set redScore(param1:int) : void
      {
         if(int(this.labelRed.text) == param1)
         {
            return;
         }
         this.labelRed.text = param1.toString();
         this.§try var native§.setState(§`#§.§each for final§);
         this.update();
      }
      
      public function set blueScore(param1:int) : void
      {
         if(int(this.§4"+§.text) == param1)
         {
            return;
         }
         this.§4"+§.text = param1.toString();
         this.§include const if§.setState(§`#§.§each for final§);
         this.update();
      }
      
      public function showFlagAtBase(param1:§while var const§) : void
      {
         var _loc2_:§`#§ = this.§%"N§(param1);
         _loc2_.setState(§`#§.§switch super§);
      }
      
      public function showFlagCarried(param1:§while var const§) : void
      {
         var _loc2_:§`#§ = this.§%"N§(param1);
         _loc2_.setState(§`#§.§break for get§);
      }
      
      public function showFlagDropped(param1:§while var const§) : void
      {
         var _loc2_:§`#§ = this.§%"N§(param1);
         _loc2_.setState(§`#§.§%z§);
      }
      
      public function §function var override§(param1:§while var const§, param2:int) : void
      {
         switch(param1)
         {
            case §while var const§.BLUE:
               this.blueScore = param2;
               break;
            case §while var const§.RED:
               this.redScore = param2;
         }
      }
      
      private function update() : void
      {
         var _loc1_:int = 5;
         var _loc2_:int = this.labelRed.width > this.§4"+§.width ? int(this.labelRed.width) : int(this.§4"+§.width);
         this.§include const if§.x = _loc1_ + _loc1_;
         var _loc3_:int = this.§include const if§.x + §?!G§ + _loc1_;
         this.labelRed.x = _loc3_ + (_loc2_ - this.labelRed.width >> 1);
         _loc3_ += _loc2_ + _loc1_ + _loc1_;
         this.§4"+§.x = _loc3_ + (_loc2_ - this.§4"+§.width >> 1);
         _loc3_ += _loc2_ + _loc1_;
         this.§try var native§.x = _loc3_;
         _loc3_ += §?!G§ + _loc1_ + _loc1_;
         this.§var for else§(_loc3_);
      }
      
      private function §var for else§(param1:int) : void
      {
         this.border.width = param1;
         var _loc2_:String = GradientType.LINEAR;
         var _loc3_:Array = [§ "<§,§for set do§];
         var _loc4_:Array = [1,1];
         var _loc5_:int = 8 / param1 * 255;
         var _loc6_:Array = [127 - _loc5_,127 + _loc5_];
         var _loc7_:int = 2;
         var _loc8_:Matrix = new Matrix();
         _loc8_.createGradientBox(param1 - 2 * _loc7_,this.border.height - 2 * _loc7_,0,0,0);
         var _loc9_:String = SpreadMethod.PAD;
         var _loc10_:Graphics = graphics;
         _loc10_.clear();
         _loc10_.beginGradientFill(_loc2_,_loc3_,_loc4_,_loc6_,_loc8_,_loc9_);
         _loc10_.drawRect(_loc7_,_loc7_,param1 - 2 * _loc7_,this.border.height - 2 * _loc7_);
         _loc10_.endFill();
      }
      
      private function createLabel(param1:uint) : Label
      {
         var _loc2_:Label = new Label();
         _loc2_.color = param1;
         _loc2_.size = 18;
         _loc2_.bold = true;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.y = §dynamic const else§;
         _loc2_.text = "0";
         addChild(_loc2_);
         return _loc2_;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.update();
         this.time = getTimer();
         stage.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         stage.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_ - this.time;
         this.time = _loc2_;
         this.blinker.update(_loc2_,_loc3_);
         this.§include const if§.update(_loc2_,_loc3_);
         this.§try var native§.update(_loc2_,_loc3_);
         §switch var null§(this.labelRed,this.§+"f§,this.§try var native§.§7!X§);
         §switch var null§(this.§4"+§,this.§implements var set§,this.§include const if§.§7!X§);
      }
      
      private function §%"N§(param1:§while var const§) : §`#§
      {
         switch(param1)
         {
            case §while var const§.BLUE:
               return this.§try var native§;
            case §while var const§.RED:
               return this.§include const if§;
            default:
               throw new ArgumentError("Unsupported team type");
         }
      }
   }
}

