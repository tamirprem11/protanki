package alternativa.tanks.battle
{
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.tanks.battle.events.§-4§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.utils.EncryptedInt;
   import alternativa.tanks.utils.EncryptedIntImpl;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §2"&§
   {
      [Inject]
      public static var clientLog:IClientLog;
      
      private const §'H§:EncryptedInt = new EncryptedIntImpl(15000);
      
      private const threshold:EncryptedInt = new EncryptedIntImpl(300);
      
      private const §get var class§:EncryptedInt = new EncryptedIntImpl(3);
      
      private const §""+§:EncryptedInt = new EncryptedIntImpl(0);
      
      private var battleEventDispatcher:BattleEventDispatcher;
      
      private var timer:Timer;
      
      private var §9!2§:int;
      
      private var §false for each§:Number;
      
      private var §static for do§:Array = [];
      
      public function §2"&§(param1:BattleEventDispatcher)
      {
         super();
         this.battleEventDispatcher = param1;
         this.§9!2§ = getTimer();
         this.§false for each§ = new Date().time;
         this.timer = new Timer(this.§'H§.getInt());
         this.timer.addEventListener(TimerEvent.TIMER,this.onTimer);
         this.timer.start();
      }
      
      public function stop() : void
      {
         this.timer.stop();
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:Number = new Date().time;
         var _loc4_:Number = _loc2_ - this.§9!2§ - _loc3_ + this.§false for each§;
         if(Math.abs(_loc4_) > this.threshold.getInt())
         {
            this.§static for do§.push(_loc4_);
            this.§""+§.setInt(this.§""+§.getInt() + 1);
            if(this.§""+§.getInt() >= this.§get var class§.getInt())
            {
               this.stop();
               this.battleEventDispatcher.dispatchEvent(new §-4§(this.§static for do§));
            }
         }
         else
         {
            this.§""+§.setInt(0);
            this.§static for do§.length = 0;
         }
         this.§9!2§ = _loc2_;
         this.§false for each§ = _loc3_;
      }
   }
}

