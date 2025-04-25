package §@!p§
{
   import §>P§.§class var return§;
   import §>P§.§static for else§;
   import alternativa.model.IModel;
   import alternativa.model.IObjectLoadListener;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.service.IModelService;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§do for finally§;
   import alternativa.tanks.battle.events.§finally for override§;
   import alternativa.tanks.battle.events.§implements set const§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§package for null§;
   import alternativa.tanks.battle.events.§return const if§;
   import alternativa.tanks.service.settings.keybinding.§%!6§;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battleinput.BattleInputLockEvent;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.utils.§0s§;
   import controls.InventoryIcon;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §return var switch§.§continue set throw§;
   import §return var switch§.§override var const§;
   
   public class §'O§ extends §override var const§ implements §continue set throw§, IObjectLoadListener, §extends const return§, §class var return§, §override const do§
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var §while var false§:BattleInputService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var §+!p§:BattleGUIService;
      
      [Inject]
      public static var §>!Y§:KeysBindingService;
      
      [Inject]
      public static var battleService:BattleService;
      
      private static const §,X§:int = 50;
      
      private var container:DisplayObjectContainer;
      
      private var §`"H§:Vector.<§for for class§>;
      
      private var §3!U§:Dictionary = new Dictionary();
      
      private var §'K§:§return const if§;
      
      private var §8!,§:§0s§;
      
      private var inventoryItemModel:§case var class§;
      
      private var §try set finally§:int;
      
      public function §'O§()
      {
         super();
         _interfaces.push(IModel,§continue set throw§,IObjectLoadListener,§extends const return§,§class var return§);
         this.§8!,§ = new §0s§();
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§finally for override§,this.§!!u§);
         this.§'K§.§import var get§(§do for finally§,this.§final const final§);
         this.§'K§.§import var get§(§package for null§,this.§1!"§);
         this.§'K§.§import var get§(§implements set const§,this.§7"+§);
      }
      
      public function §7"+§(param1:§implements set const§) : void
      {
         var _loc2_:§for for class§ = null;
         var _loc3_:§`"8§ = null;
         if(param1.isLocal)
         {
            for each(_loc2_ in this.§`"H§)
            {
               _loc3_ = _loc2_.getItem();
               if(_loc3_ != null)
               {
                  _loc3_.§&"$§();
               }
            }
         }
      }
      
      public function §final const final§(param1:Object) : void
      {
         this.§try const null§(§static for else§.§5"2§,true);
      }
      
      private function §1!"§(param1:§package for null§) : void
      {
         var _loc2_:§for for class§ = null;
         var _loc3_:§`"8§ = null;
         this.§try const null§(§static for else§.§5"2§,true);
         for each(_loc2_ in this.§`"H§)
         {
            _loc3_ = _loc2_.getItem();
            if(_loc3_ != null)
            {
               _loc3_.§&"$§();
            }
         }
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:IModelService = IModelService(OSGi.getInstance().getService(IModelService));
         this.inventoryItemModel = §case var class§(_loc2_.getModelsByInterface(§case var class§)[0]);
         this.container = new Sprite();
         this.container.visible = false;
         §+!p§.§default set import§();
         §+!p§.§2K§().addChild(this.container);
         this.§'K§.§""'§();
         this.§default case§();
         this.§36§();
         display.stage.addEventListener(Event.RESIZE,this.onResize);
         this.onResize(null);
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         if(this.§`"H§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§`"H§.length)
         {
            this.§5Q§(_loc2_);
            _loc2_++;
         }
         this.§`"H§ = null;
         §+!p§.§2K§().removeChild(this.container);
         this.container = null;
         display.stage.removeEventListener(Event.RESIZE,this.onResize);
         this.§'K§.§const var false§();
         §while var false§.removeEventListener(BattleInputLockEvent.INPUT_LOCKED,this.§4+§);
         §while var false§.removeEventListener(BattleInputLockEvent.INPUT_UNLOCKED,this.§`"A§);
      }
      
      public function §1!'§(param1:§`"8§, param2:int) : void
      {
         if(this.§?!I§() == 0)
         {
            display.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
            display.stage.addEventListener(KeyboardEvent.KEY_UP,this.onKeyUp);
            display.stage.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         §for for class§(this.§`"H§[param2]).setItem(param1);
         if(param1.count > 0)
         {
            this.container.visible = true;
         }
      }
      
      public function itemUpdateCount(param1:§`"8§) : void
      {
         var _loc2_:§for for class§ = null;
         if(param1.count > 0 && !this.container.visible)
         {
            this.container.visible = true;
         }
         for each(_loc2_ in this.§`"H§)
         {
            if(_loc2_.getItem() == param1)
            {
               _loc2_.§while const try§();
            }
         }
      }
      
      public function initItemSlot(param1:§`"8§) : void
      {
         var _loc2_:§for for class§ = null;
         for each(_loc2_ in this.§`"H§)
         {
            if(_loc2_.getItem() == param1)
            {
               _loc2_.§@!^§();
            }
         }
      }
      
      public function §continue set static§(param1:§`"8§) : void
      {
         var _loc2_:§for for class§ = null;
         for each(_loc2_ in this.§`"H§)
         {
            if(_loc2_.getItem() == param1)
            {
               _loc2_.§while const try§();
            }
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      public function §else const finally§(param1:§`"8§) : void
      {
         var _loc2_:§for for class§ = null;
         for each(_loc2_ in this.§`"H§)
         {
            if(_loc2_.getItem() == param1)
            {
               _loc2_.§while const try§();
            }
         }
      }
      
      public function §>-§(param1:int, param2:int, param3:Boolean) : void
      {
         var _loc4_:§for for class§ = null;
         var _loc5_:§`"8§ = null;
         for each(_loc4_ in this.§`"H§)
         {
            _loc5_ = _loc4_.getItem();
            if(_loc5_ != null && _loc5_.getId() == param1)
            {
               _loc4_.§set const final§(param2,param3);
            }
         }
      }
      
      private function §4+§(param1:BattleInputLockEvent) : void
      {
         this.§try const null§(§static for else§.§false const include§,true);
      }
      
      private function §`"A§(param1:BattleInputLockEvent) : void
      {
         this.§try const null§(§static for else§.§false const include§,false);
      }
      
      private function §!!u§(param1:Object) : void
      {
         var _loc2_:§for for class§ = null;
         var _loc3_:§`"8§ = null;
         for each(_loc2_ in this.§`"H§)
         {
            _loc2_.§set const final§(§static for else§.§5"2§,false);
            _loc2_.§1!`§(getTimer());
            _loc2_.§do var throw§(getTimer());
            _loc3_ = _loc2_.getItem();
            if(_loc3_ != null && _loc3_.§0S§() <= 75000)
            {
               _loc3_.§&"$§();
            }
         }
      }
      
      public function §try const null§(param1:int, param2:Boolean) : void
      {
         var _loc3_:§for for class§ = null;
         for each(_loc3_ in this.§`"H§)
         {
            _loc3_.§set const final§(param1,param2);
         }
      }
      
      private function onResize(param1:Event) : void
      {
         this.container.x = display.stage.stageWidth / 2 - 125;
         this.container.y = display.stage.stageHeight - §,X§;
      }
      
      private function §default case§() : void
      {
         var _loc5_:§for for class§ = null;
         var _loc6_:DisplayObject = null;
         var _loc1_:int = 5;
         this.§`"H§ = new Vector.<§for for class§>(_loc1_);
         var _loc2_:int = 10 + new InventoryIcon(InventoryIcon.EMPTY).width;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         while(_loc4_ < _loc1_)
         {
            _loc5_ = new §for for class§(_loc4_ + 1);
            this.§`"H§[_loc4_] = _loc5_;
            _loc6_ = _loc5_.§>!-§();
            _loc6_.x = _loc3_;
            this.container.addChild(_loc6_);
            _loc3_ += _loc2_;
            _loc4_++;
         }
         §while var false§.addEventListener(BattleInputLockEvent.INPUT_LOCKED,this.§4+§);
         §while var false§.addEventListener(BattleInputLockEvent.INPUT_UNLOCKED,this.§`"A§);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(this.§8!,§.§ "7§(param1.keyCode))
         {
            return;
         }
         var _loc2_:§%!6§ = §>!Y§.§case do§(param1.keyCode);
         var _loc3_:* = this.§3!U§[_loc2_];
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:int = _loc3_;
         var _loc5_:§for for class§ = this.§`"H§[_loc4_];
         if(_loc5_.isLocked())
         {
            return;
         }
         var _loc6_:§`"8§ = _loc5_.getItem();
         if(_loc6_ != null)
         {
            this.§8!,§.§8!9§(param1.keyCode);
            this.inventoryItemModel.§use for continue§(_loc6_);
         }
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         if(this.§8!,§.§ "7§(param1.keyCode))
         {
            this.§8!,§.§with set var§(param1.keyCode);
         }
      }
      
      private function §?!I§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:§for for class§ = null;
         for each(_loc2_ in this.§`"H§)
         {
            if(_loc2_.getItem() != null)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      private function §5Q§(param1:int) : void
      {
         var _loc2_:§for for class§ = this.§`"H§[param1];
         _loc2_.setItem(null);
         if(this.§?!I§() == 0)
         {
            display.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
            display.stage.removeEventListener(KeyboardEvent.KEY_UP,this.onKeyUp);
            display.stage.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:§for for class§ = null;
         var _loc2_:int = getTimer();
         for each(_loc3_ in this.§`"H§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §36§() : void
      {
         this.§3!U§[49] = 0;
         this.§3!U§[§%!6§.USE_FIRS_AID] = 0;
         this.§3!U§[50] = 1;
         this.§3!U§[§%!6§.USE_DOUBLE_ARMOR] = 1;
         this.§3!U§[51] = 2;
         this.§3!U§[§%!6§.USE_DOUBLE_DAMAGE] = 2;
         this.§3!U§[52] = 3;
         this.§3!U§[§%!6§.USE_NITRO] = 3;
         this.§3!U§[53] = 4;
         this.§3!U§[§%!6§.USE_MINE] = 4;
      }
   }
}

