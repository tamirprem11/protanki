package §1J§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.models.battle.gui.gui.statistics.field.§`">§;
   import alternativa.tanks.models.battle.gui.gui.statistics.field.§true const use§;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §%!d§ implements §`">§
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var §<!x§:BattleGUIService;
      
      private var §;X§:Vector.<§true const use§> = new Vector.<§true const use§>();
      
      private var §<";§:Vector.<§true const use§> = new Vector.<§true const use§>();
      
      private var initialized:Boolean;
      
      public function §%!d§()
      {
         super();
         display.stage.addEventListener(Event.RESIZE,this.onResize);
      }
      
      private function onResize(param1:Event) : void
      {
         this.§0L§();
      }
      
      public function §each for super§(param1:§true const use§) : void
      {
         this.§0L§();
      }
      
      public function §0L§() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = display.stage.stageWidth;
         var _loc3_:int = 0;
         while(_loc3_ < this.§<";§.length)
         {
            _loc1_ = DisplayObject(this.§<";§[_loc3_]);
            _loc1_.x = _loc2_ - _loc1_.width - 10;
            _loc1_.y = display.stage.stageHeight - _loc1_.height - 10;
            _loc2_ = _loc1_.x;
            _loc3_++;
         }
         §<!x§.§ g§(_loc2_);
      }
      
      public function §static var true§(param1:§true const use§) : void
      {
         if(this.initialized)
         {
            this.§<";§.push(param1);
         }
         else
         {
            this.§;X§.push(param1);
         }
         param1.§function set dynamic§(this);
         this.§each for super§(param1);
      }
      
      public function §get const each§(param1:§true const use§) : void
      {
         this.§<";§.push(param1);
         param1.§function set dynamic§(this);
      }
      
      public function destroy() : void
      {
         display.stage.removeEventListener(Event.RESIZE,this.onResize);
         this.§catch return§();
      }
      
      private function §catch return§() : void
      {
         var _loc1_:§true const use§ = null;
         var _loc2_:DisplayObject = null;
         for each(_loc1_ in this.§<";§)
         {
            _loc2_ = DisplayObject(_loc1_);
            if(_loc2_.parent != null)
            {
               _loc2_.parent.removeChild(_loc2_);
            }
         }
      }
      
      public function init() : void
      {
         var _loc1_:§true const use§ = null;
         if(!this.initialized)
         {
            this.initialized = true;
            for each(_loc1_ in this.§;X§)
            {
               this.§<";§.push(_loc1_);
            }
            this.§;X§ = null;
         }
         this.§0L§();
      }
   }
}

