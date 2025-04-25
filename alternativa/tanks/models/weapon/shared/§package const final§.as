package alternativa.tanks.models.weapon.shared
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§final const each§;
   import alternativa.tanks.battle.events.§function use§;
   import alternativa.tanks.battle.events.§null const if§;
   import alternativa.tanks.battle.events.§null final§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.objects.tank.§while set break§;
   import alternativa.tanks.models.battle.gui.chat.§%"U§;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.keybinding.§%!6§;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.targeting.§3F§;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import §const set false§.§var var implements§;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   
   public class §package const final§ implements §override const do§, §3F§
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var §get for function§:TargetingInputManager;
      
      [Inject]
      public static var §2!a§:TargetingModeService;
      
      [Inject]
      public static var settingsService:ISettingsService;
      
      [Inject]
      public static var §>!Y§:KeysBindingService;
      
      private var weapon:§while set break§;
      
      private var §91§:Boolean;
      
      private var §super var var§:Boolean;
      
      private var §with var override§:Boolean = false;
      
      private var §>!u§:Vector.<Boolean> = new Vector.<Boolean>(255);
      
      private var pause:Boolean;
      
      private var targetingMode:int;
      
      public function §package const final§()
      {
         super();
      }
      
      public function setWeapon(param1:§while set break§) : void
      {
         this.weapon = param1;
      }
      
      public function §use for§() : Boolean
      {
         return this.§91§ || this.§super var var§;
      }
      
      public function §8"1§() : Boolean
      {
         return this.§91§;
      }
      
      public function §extends const static§() : void
      {
         this.§super var var§ = false;
      }
      
      public function init() : void
      {
         display.stage.addEventListener(Event.DEACTIVATE,this.§;!V§);
         display.stage.addEventListener(Event.MOUSE_LEAVE,this.§@"P§);
         display.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§do var extends§);
         battleEventDispatcher.§7i§(§null final§,this);
         battleEventDispatcher.§7i§(§final const each§,this);
         battleEventDispatcher.§7i§(§function use§,this);
         battleEventDispatcher.§7i§(§null const if§,this);
         battleEventDispatcher.§7i§(§%"U§,this);
         §get for function§.addListener(this);
         this.pause = false;
      }
      
      public function destroy() : void
      {
         display.stage.removeEventListener(Event.DEACTIVATE,this.§;!V§);
         display.stage.removeEventListener(Event.MOUSE_LEAVE,this.§@"P§);
         display.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.§do var extends§);
         battleEventDispatcher.§,"7§(§null final§,this);
         battleEventDispatcher.§,"7§(§final const each§,this);
         battleEventDispatcher.§,"7§(§function use§,this);
         battleEventDispatcher.§,"7§(§null const if§,this);
         battleEventDispatcher.§,"7§(§%"U§,this);
         §get for function§.removeListener(this);
      }
      
      private function §do var extends§(param1:FullScreenEvent) : void
      {
         this.§throw continue§();
      }
      
      private function §@"P§(param1:Event) : void
      {
         this.§throw continue§();
      }
      
      private function §do var get§(param1:Boolean) : void
      {
         this.§91§ = true;
         this.§super var var§ = true;
         §2!a§.§for set use§();
         if(this.weapon != null)
         {
            if(param1 && this.targetingMode == §var var implements§.§7!'§)
            {
               return;
            }
            this.weapon.§do var get§();
         }
      }
      
      public function §var const true§(param1:uint) : Boolean
      {
         return param1 < 256 ? Boolean(this.§>!u§[param1]) : Boolean(false);
      }
      
      private function §throw continue§() : void
      {
         var _loc1_:Boolean = this.§91§;
         this.§91§ = false;
         if(_loc1_ && this.weapon != null)
         {
            this.weapon.§throw continue§();
         }
         §2!a§.§0x§();
      }
      
      private function §;!V§(param1:Event) : void
      {
         this.§91§ = false;
         this.§super var var§ = false;
         if(this.weapon != null)
         {
            this.weapon.§throw continue§();
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!u§.length)
         {
            this.§>!u§[_loc2_] = false;
            _loc2_++;
         }
         §2!a§.§0x§();
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:§null const if§ = null;
         if(param1 is §null final§)
         {
            this.pause = false;
         }
         else if(param1 is §final const each§)
         {
            this.pause = true;
         }
         else if(param1 is §function use§)
         {
            this.targetingMode = §function use§(param1).targetingMode;
         }
         else if(param1 is §null const if§)
         {
            _loc2_ = §null const if§(param1);
            if(this.§91§ && this.§with var override§ && !_loc2_.§["8§)
            {
               this.§throw continue§();
            }
            this.pause = !§null const if§(param1).enabled;
         }
         else if(param1 is §%"U§)
         {
            if(this.§91§)
            {
               this.§throw continue§();
            }
         }
      }
      
      public function mouseAbsoluteMovement(param1:Number, param2:Number) : void
      {
      }
      
      public function mouseRelativeMovement(param1:Number, param2:Number) : void
      {
      }
      
      public function mouseLeftButton(param1:Boolean, param2:Boolean) : Boolean
      {
         if(!this.pause && settingsService.mouseControl && §2!a§.§-!!§() == §var var implements§.§]!+§)
         {
            if(!this.§91§ && param1)
            {
               this.§do var get§(true);
               this.§with var override§ = false;
            }
            else if(this.§91§ && !this.§with var override§ && !param1)
            {
               this.§throw continue§();
            }
         }
         return true;
      }
      
      public function mouseWheel(param1:int) : void
      {
      }
      
      public function mouseRightButton(param1:Boolean, param2:Boolean) : Boolean
      {
         return true;
      }
      
      public function keyboardButton(param1:uint, param2:Boolean) : Boolean
      {
         var _loc3_:§%!6§ = §>!Y§.§case do§(param1);
         if(param2)
         {
            if(_loc3_ == §%!6§.SHOT && !this.§91§)
            {
               this.§do var get§(false);
               this.§with var override§ = true;
            }
            if(param1 < 256)
            {
               this.§>!u§[param1] = true;
            }
         }
         else
         {
            if(_loc3_ == §%!6§.SHOT && this.§91§ && this.§with var override§)
            {
               this.§throw continue§();
            }
            if(param1 < 256)
            {
               this.§>!u§[param1] = false;
            }
         }
         return true;
      }
      
      public function mouseLocked(param1:Boolean) : void
      {
         if(this.§91§ && this.§with var override§)
         {
            this.§throw continue§();
         }
      }
   }
}

