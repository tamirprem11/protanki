package alternativa.tanks.battle
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.View;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.bg.IBackgroundService;
   import alternativa.tanks.display.AxisIndicator;
   import alternativa.tanks.models.battle.battlefield.§]]§;
   import alternativa.tanks.service.settings.keybinding.§%!6§;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.utils.MathUtils;
   import alternativa.utils.removeDisplayObject;
   import alternativa.utils.removeDisplayObjectChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.geom.Rectangle;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class §="B§
   {
      [Inject]
      public static var storageService:IStorageService;
      
      [Inject]
      public static var §while var false§:BattleInputService;
      
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var §>!Y§:KeysBindingService;
      
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var §dynamic var super§:IBackgroundService;
      
      public static const §throw var var§:int = 10;
      
      private static const §^"7§:String = "screenSize";
      
      private var container:Sprite;
      
      private var view:View;
      
      private var overlay:Sprite;
      
      private var § ";§:Shape;
      
      private var §default try§:Boolean;
      
      private var §7!a§:AxisIndicator;
      
      private var screenSize:int = 10;
      
      public function §="B§()
      {
         super();
         this.§0]§();
         this.view = new View(1,1,GPUCapabilities.constrained);
         this.view.mouseEnabled = false;
         this.view.hideLogo();
         this.container.addChild(this.view);
         battleService.§catch include§().§2v§(this.view);
         this.overlay = new Sprite();
         this.container.addChild(this.overlay);
         this.§ ";§ = new Shape();
         this.container.addChild(this.§ ";§);
         this.setSize(storageService.getStorage().data[§^"7§]);
      }
      
      private function §0]§() : void
      {
         this.container = new Sprite();
         this.container.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.container.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.container.stage.addEventListener(Event.RESIZE,this.onResize);
         this.container.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         this.setFocus();
         this.resize();
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         this.container.stage.removeEventListener(Event.RESIZE,this.onResize);
         this.container.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
      }
      
      private function onResize(param1:Event) : void
      {
         this.resize();
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(§while var false§.§3!'§())
         {
            return;
         }
         var _loc2_:§%!6§ = §>!Y§.§case do§(param1.keyCode);
         switch(_loc2_)
         {
            case §%!6§.BATTLE_VIEW_INCREASE:
               this.§-!o§();
               break;
            case §%!6§.BATTLE_VIEW_DECREASE:
               this.§function set catch§();
         }
      }
      
      private function §-!o§() : void
      {
         this.§9"6§();
         storageService.getStorage().data[§^"7§] = this.§#!3§();
      }
      
      private function §function set catch§() : void
      {
         this.§throw set else§();
         storageService.getStorage().data[§^"7§] = this.§#!3§();
      }
      
      public function destroy() : void
      {
         this.§5!o§();
         this.view.clear();
         this.view = null;
         removeDisplayObjectChildren(this.overlay);
         this.overlay = null;
         removeDisplayObjectChildren(this.container);
         this.container.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.container.removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.container = null;
      }
      
      public function §;"E§(param1:Boolean) : void
      {
         if(this.§default try§ != param1)
         {
            this.§default try§ = param1;
            if(param1)
            {
               this.§7!a§ = new AxisIndicator(100);
               this.container.addChild(this.§7!a§);
               this.§if var get§();
            }
            else
            {
               this.container.removeChild(this.§7!a§);
               this.§7!a§ = null;
            }
         }
      }
      
      public function §6!v§(param1:Boolean) : void
      {
         var _loc2_:Camera3D = battleService.§catch include§().§function var break§();
         if(param1 != this.container.contains(_loc2_.diagram))
         {
            if(param1)
            {
               this.container.addChild(_loc2_.diagram);
            }
            else
            {
               this.container.removeChild(_loc2_.diagram);
            }
         }
      }
      
      private function resize() : void
      {
         if(this.container.stage == null)
         {
            return;
         }
         this.§&"e§();
         this.§for const implements§();
         this.§#!]§();
         this.drawBackground();
         this.§if var get§();
         battleService.§catch include§().§function var break§().§override set switch§();
      }
      
      private function §&"e§() : void
      {
         var _loc1_:Number = this.screenSize / §throw var var§;
         this.view.width = int(this.container.stage.stageWidth * _loc1_);
         this.view.height = int(this.container.stage.stageHeight * _loc1_);
      }
      
      private function §for const implements§() : void
      {
         this.container.x = this.container.stage.stageWidth - this.view.width >> 1;
         this.container.y = this.container.stage.stageHeight - this.view.height >> 1;
      }
      
      private function §#!]§() : void
      {
         this.§ ";§.graphics.clear();
         if(this.screenSize < §throw var var§)
         {
            §]]§.draw(this.§ ";§.graphics,this.view.width,this.view.height);
         }
      }
      
      private function drawBackground() : void
      {
         var _loc1_:int = 0.5 * (this.container.stage.stageWidth - this.view.width);
         var _loc2_:int = 0.5 * (this.container.stage.stageHeight - this.view.height);
         §dynamic var super§.drawBg(new Rectangle(_loc1_,_loc2_,this.view.width,this.view.height));
      }
      
      private function §if var get§() : void
      {
         if(this.§default try§)
         {
            this.§7!a§.y = this.view.height - this.§7!a§.size - 50;
         }
      }
      
      public function §9"6§() : void
      {
         if(this.screenSize < §throw var var§)
         {
            ++this.screenSize;
            this.resize();
         }
      }
      
      public function §throw set else§() : void
      {
         if(this.screenSize > 1)
         {
            --this.screenSize;
            this.resize();
         }
      }
      
      private function setSize(param1:int) : void
      {
         if(param1 == 0)
         {
            this.screenSize = §throw var var§;
         }
         else
         {
            this.screenSize = MathUtils.clamp(param1,1,§throw var var§);
         }
         this.resize();
      }
      
      public function §#!3§() : int
      {
         return this.screenSize;
      }
      
      public function update() : void
      {
         if(this.§default try§)
         {
            this.§7!a§.update(battleService.§catch include§().§function var break§());
         }
      }
      
      public function §static const null§(param1:DisplayObject) : void
      {
         this.overlay.addChild(param1);
      }
      
      public function §while var in§() : int
      {
         if(this.container.stage == null)
         {
            return 1;
         }
         return this.container.stage.stageWidth * this.screenSize / §throw var var§;
      }
      
      public function §,",§() : int
      {
         if(this.container.stage == null)
         {
            return 1;
         }
         return this.container.stage.stageHeight * this.screenSize / §throw var var§;
      }
      
      public function §set const override§() : Number
      {
         return this.§,",§() * this.§,",§() + this.§while var in§() * this.§while var in§();
      }
      
      public function §final for with§() : DisplayObjectContainer
      {
         return this.container.parent;
      }
      
      public function §true const set§() : int
      {
         return this.container.x;
      }
      
      public function §function var implements§() : int
      {
         return this.container.y;
      }
      
      public function §7"[§(param1:DisplayObjectContainer) : void
      {
         param1.addChild(this.container);
      }
      
      public function §5!o§() : void
      {
         removeDisplayObject(this.container);
      }
      
      public function setFocus() : void
      {
         display.stage.focus = this.container;
      }
   }
}

