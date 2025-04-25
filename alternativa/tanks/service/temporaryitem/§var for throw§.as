package alternativa.tanks.service.temporaryitem
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §var for throw§ extends EventDispatcher
   {
      private var _item:IGameObject;
      
      private var _timer:Timer;
      
      private var §final set get§:Number;
      
      private var _remainingTimeInSec:int;
      
      public function §var for throw§(param1:IGameObject, param2:int)
      {
         super();
         this._item = param1;
         this._remainingTimeInSec = param2;
         this.§final set get§ = getTimer();
         this._timer = new Timer(1000);
         this._timer.addEventListener(TimerEvent.TIMER,this.onTimer);
         this._timer.start();
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         var _loc2_:int = (getTimer() - this.§final set get§) / 1000;
         if(_loc2_ > this._remainingTimeInSec)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            this._timer.stop();
            this.destroy();
         }
      }
      
      public function destroy() : void
      {
         if(this._timer != null)
         {
            this._timer.removeEventListener(TimerEvent.TIMER,this.onTimer);
            this._timer.stop();
            this._timer = null;
         }
      }
      
      public function get item() : IGameObject
      {
         return this._item;
      }
      
      public function get §if set else§() : Number
      {
         return this._remainingTimeInSec * 1000 - (getTimer() - this.§final set get§);
      }
   }
}

