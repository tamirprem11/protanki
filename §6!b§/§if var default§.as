package §6!b§
{
   import §!4§.§["^§;
   import filters.Filters;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.setTimeout;
   
   public class §if var default§ extends Sprite
   {
      private static const §override var var§:int = 30000;
      
      protected var §case const static§:Boolean = true;
      
      private var §continue var super§:Timer;
      
      private var stop:Boolean = false;
      
      private var §true const do§:Boolean = false;
      
      protected var shadowContainer:Sprite = new Sprite();
      
      public function §if var default§()
      {
         super();
         this.shadowContainer.filters = Filters.SHADOW_FILTERS;
         addChild(this.shadowContainer);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function §implements for super§() : void
      {
         alpha = 1;
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.stop = true;
      }
      
      public function §8H§() : void
      {
         this.stop = false;
         if(this.§true const do§)
         {
            this.§`!h§();
         }
      }
      
      public function get alive() : Boolean
      {
         return this.§case const static§;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         setTimeout(this.§4!H§,§override var var§);
      }
      
      private function §4!H§() : void
      {
         this.§true const do§ = true;
         if(!this.stop)
         {
            this.§`!h§();
         }
      }
      
      private function §`!h§() : void
      {
         this.§continue var super§ = new Timer(50,20);
         this.§continue var super§.addEventListener(TimerEvent.TIMER,this.§[=§);
         this.§continue var super§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§final var while§);
         this.§continue var super§.start();
      }
      
      private function §[=§(param1:TimerEvent) : void
      {
         if(!this.stop)
         {
            alpha -= 0.05;
         }
         else
         {
            this.§continue var super§.stop();
            alpha = 1;
         }
      }
      
      private function §final var while§(param1:TimerEvent) : void
      {
         this.§case const static§ = false;
         dispatchEvent(new §["^§(§["^§.§-p§,this));
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
   }
}

