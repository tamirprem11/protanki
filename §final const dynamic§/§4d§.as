package §final const dynamic§
{
   import alternativa.tanks.service.settings.keybinding.§ W§;
   import alternativa.tanks.service.settings.keybinding.§%!6§;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.service.settings.keybinding.§override import§;
   import base.DiscreteSprite;
   import controls.base.LabelBase;
   import controls.base.TankInput;
   import controls.containers.§#"7§;
   import flash.events.KeyboardEvent;
   import flash.text.TextFormatAlign;
   import flash.ui.Keyboard;
   
   public class §4d§ extends DiscreteSprite
   {
      [Inject]
      public static var §>!Y§:KeysBindingService;
      
      public static const §set for if§:int = 120;
      
      private var §break for dynamic§:Vector.<TankInput>;
      
      private var §use const use§:§%!6§;
      
      public function §4d§(param1:§%!6§, param2:String, param3:int, param4:int)
      {
         var _loc6_:§#"7§ = null;
         this.§break for dynamic§ = new Vector.<TankInput>(3,true);
         super();
         this.§use const use§ = param1;
         var _loc5_:int = param4 - 6 * param3 - §set for if§ * 3;
         _loc6_ = new §#"7§();
         _loc6_.§1'§(param3);
         _loc6_.x = _loc5_ + param3;
         var _loc7_:int = 0;
         while(_loc7_ < 3)
         {
            _loc6_.addItem(this.§const set var§(_loc7_));
            _loc7_++;
         }
         var _loc8_:LabelBase = new LabelBase();
         _loc8_.text = param2;
         _loc8_.x = 0;
         _loc8_.y = Math.round((this.§break for dynamic§[0].height - _loc8_.textHeight) * 0.5) - 2;
         addChild(_loc8_);
         addChild(_loc6_);
         §>!Y§.addEventListener(§override import§.§5!F§ + param1.name,this.§>!L§);
      }
      
      private function §>!L§(param1:§override import§) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§break for dynamic§.length)
         {
            this.§break for dynamic§[_loc2_].value = this.§switch var set§(_loc2_);
            _loc2_++;
         }
      }
      
      private function §switch var set§(param1:uint) : String
      {
         var _loc2_:uint = §>!Y§.§!!n§(this.§use const use§,param1);
         return §>!Y§.§dynamic for default§(_loc2_);
      }
      
      public function §<1§() : §%!6§
      {
         return this.§use const use§;
      }
      
      private function §const set var§(param1:int) : TankInput
      {
         var _loc2_:TankInput = null;
         _loc2_ = new TankInput();
         _loc2_.addEventListener(KeyboardEvent.KEY_UP,this.onKeyDown);
         _loc2_.maxChars = 1;
         _loc2_.width = §set for if§;
         _loc2_.align = TextFormatAlign.CENTER;
         _loc2_.value = this.§switch var set§(param1);
         this.§break for dynamic§[param1] = _loc2_;
         return _loc2_;
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:TankInput = TankInput(param1.currentTarget);
         if(param1.keyCode == Keyboard.BACKSPACE || param1.keyCode == Keyboard.DELETE)
         {
            if(§>!Y§.§<!h§(this.§use const use§,§ W§.§"!v§,this.§break for dynamic§.indexOf(_loc3_)))
            {
               _loc3_.value = "";
            }
            else
            {
               _loc3_.value = this.§switch var set§(this.§break for dynamic§.indexOf(_loc3_));
            }
            return;
         }
         var _loc4_:String = §>!Y§.§dynamic for default§(param1.keyCode);
         if(_loc4_ != "")
         {
            _loc2_ = §>!Y§.§<!h§(this.§use const use§,param1.keyCode,this.§break for dynamic§.indexOf(_loc3_));
            _loc3_.value = _loc2_ ? _loc4_ : "";
         }
         else
         {
            _loc3_.value = this.§switch var set§(this.§break for dynamic§.indexOf(_loc3_));
         }
      }
      
      public function §"!w§() : void
      {
         var _loc1_:Vector.<uint> = §>!Y§.§ "i§(this.§use const use§);
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            this.§break for dynamic§[_loc2_].value = §>!Y§.§dynamic for default§(_loc1_[_loc2_]);
            _loc2_++;
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:TankInput = null;
         for each(_loc1_ in this.§break for dynamic§)
         {
            _loc1_.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         }
         this.§break for dynamic§ = null;
         §>!Y§.removeEventListener(§override import§.§5!F§ + this.§use const use§.name,this.§>!L§);
      }
   }
}

