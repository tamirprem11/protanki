package alternativa.tanks.services.battlegui
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.utils.removeDisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   
   public class §`"5§ extends EventDispatcher implements BattleGUIService
   {
      [Inject]
      public static var display:IDisplay;
      
      private var §3"K§:Sprite = new Sprite();
      
      private var §continue const native§:Sprite = new Sprite();
      
      private var §2"i§:Sprite = new Sprite();
      
      private var §catch package§:int;
      
      private var §with var function§:int;
      
      public function §`"5§()
      {
         super();
      }
      
      public function §6"I§() : DisplayObjectContainer
      {
         return this.§3"K§;
      }
      
      public function §2K§() : DisplayObjectContainer
      {
         return this.§continue const native§;
      }
      
      public function §break set import§() : DisplayObjectContainer
      {
         return this.§2"i§;
      }
      
      public function hide() : void
      {
         removeDisplayObject(this.§3"K§);
         removeDisplayObject(this.§continue const native§);
         removeDisplayObject(this.§2"i§);
      }
      
      public function show() : void
      {
         display.contentLayer.addChild(this.§3"K§);
         display.contentUILayer.addChild(this.§continue const native§);
         display.contentUILayer.addChild(this.§2"i§);
      }
      
      public function § g§(param1:int) : void
      {
         this.§catch package§ = param1;
         dispatchEvent(new BattleGUIServiceEvent(BattleGUIServiceEvent.ON_CHANGE_POSITION_DEFAULT_LAYOUT));
      }
      
      public function §5q§() : int
      {
         return this.§catch package§;
      }
      
      public function §finally const import§(param1:int) : void
      {
         this.§with var function§ = param1;
         dispatchEvent(new §8!b§());
      }
      
      public function §throw import§() : int
      {
         return this.§with var function§;
      }
      
      public function §default set import§() : void
      {
         this.§with var function§ = 0;
      }
   }
}

