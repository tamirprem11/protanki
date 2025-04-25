package §!"]§
{
   import §+!Q§.§%"V§;
   import §+!Q§.§?!T§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §%!l§ extends §%"V§
   {
      private var timer:Timer;
      
      private var §]K§:uint;
      
      private var §,c§:Boolean;
      
      public function §%!l§(param1:int, param2:int, param3:§?!T§, param4:Boolean)
      {
         super(param1,param2,param3);
         this.§,c§ = param4;
         this.timer = new Timer(1000);
         this.timer.addEventListener(TimerEvent.TIMER,this.onTimer);
      }
      
      private static function §switch var each§(param1:int) : String
      {
         var _loc2_:int = param1 / 60;
         return _loc2_ > 9 ? _loc2_.toString() : "0" + _loc2_.toString();
      }
      
      private static function §try const catch§(param1:int) : String
      {
         var _loc2_:int = param1 % 60;
         return _loc2_ > 9 ? _loc2_.toString() : "0" + _loc2_.toString();
      }
      
      public function §]"a§(param1:int) : void
      {
         this.§]K§ = Math.round(getTimer() / 1000 + param1);
         value = param1;
         if(_value > 0)
         {
            this.timer.stop();
            this.timer.start();
         }
         else
         {
            §set const else§();
         }
      }
      
      public function §extends set§() : void
      {
         this.timer.stop();
      }
      
      override protected function updateLabel() : void
      {
         if(this.§,c§)
         {
            label.text = _value < 10 ? "0" + _value.toString() : _value.toString();
         }
         else
         {
            label.text = §switch var each§(_value) + " : " + §try const catch§(_value);
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         super.onRemovedFromStage(param1);
         this.timer.stop();
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         if(_value > 0)
         {
            _loc2_ = Math.round(this.§]K§ - getTimer() / 1000);
            value = _loc2_ < 0 ? int(0) : int(_loc2_);
         }
         else
         {
            this.timer.stop();
         }
      }
   }
}

