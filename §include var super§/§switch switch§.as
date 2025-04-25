package §include var super§
{
   import §1J§.§true case§;
   import alternativa.osgi.service.display.IDisplay;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §switch switch§ extends Sprite
   {
      [Inject]
      public static var display:IDisplay;
      
      private var output:§ !>§ = new § !>§();
      
      public function §switch switch§()
      {
         super();
         addChild(this.output);
         this.output.tabEnabled = false;
         this.output.tabChildren = false;
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         stage.addEventListener(Event.RESIZE,this.onStageResize);
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onStageResize);
      }
      
      public function onStageResize(param1:Event) : void
      {
         this.§8!i§();
      }
      
      private function §8!i§() : void
      {
         this.output.x = display.stage.stageWidth;
         this.output.y = 50;
      }
      
      public function addMessage(param1:§true case§, param2:String, param3:§true case§ = null) : void
      {
         this.output.addLine(new §+!D§(param1,param2,param3));
         this.§8!i§();
      }
   }
}

