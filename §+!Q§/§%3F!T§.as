package §+!Q§
{
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §?!T§
   {
      private static var _instance:§?!T§;
      
      private var timer:Timer;
      
      private var §override const import§:Dictionary;
      
      private var §-!§:int;
      
      private var visible:Boolean;
      
      public function §?!T§(param1:int)
      {
         super();
         this.§override const import§ = new Dictionary();
         this.timer = new Timer(param1);
         this.timer.addEventListener(TimerEvent.TIMER,this.onTimer);
      }
      
      public static function init(param1:int) : void
      {
         if(_instance == null)
         {
            _instance = new §?!T§(param1);
         }
      }
      
      public static function get instance() : §?!T§
      {
         return _instance;
      }
      
      public function §^!;§(param1:§%"V§) : void
      {
         if(this.§override const import§[param1] != null)
         {
            return;
         }
         this.§override const import§[param1] = param1;
         ++this.§-!§;
         if(this.§-!§ == 1)
         {
            this.timer.start();
         }
      }
      
      public function §&"8§(param1:§%"V§) : void
      {
         if(this.§override const import§[param1] == null)
         {
            return;
         }
         delete this.§override const import§[param1];
         --this.§-!§;
         if(this.§-!§ == 0)
         {
            this.timer.stop();
            this.visible = true;
         }
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         var _loc2_:§%"V§ = null;
         if(this.§-!§ == 0)
         {
            return;
         }
         this.visible = !this.visible;
         for each(_loc2_ in this.§override const import§)
         {
            _loc2_.§""4§ = this.visible;
         }
      }
   }
}

