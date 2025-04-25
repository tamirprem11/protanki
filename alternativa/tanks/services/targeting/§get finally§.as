package alternativa.tanks.services.targeting
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§final const each§;
   import alternativa.tanks.battle.events.§null const if§;
   import alternativa.tanks.battle.events.§null final§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import flash.display.Stage;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   
   public class §get finally§ implements TargetingInputManager, §override const do§
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var §include for final§:ILobbyLayoutService;
      
      [Inject]
      public static var §while var false§:BattleInputService;
      
      [Inject]
      public static var §in const§:FullscreenService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private static const §2"6§:String = "movementX";
      
      private static const §extends var class§:String = "movementY";
      
      private static const §in var continue§:String = "rightMouseDown";
      
      private static const §>!U§:String = "rightMouseUp";
      
      private static const §switch var final§:String = "fullScreenInteractiveAccepted";
      
      private static const MOUSE_LOCK:String = "mouseLock";
      
      private var listeners:Vector.<§3F§> = new Vector.<§3F§>();
      
      private var §if for dynamic§:int = 0;
      
      private var active:Boolean = true;
      
      private var §dynamic var class§:Boolean = false;
      
      private var §use const function§:Boolean = false;
      
      private var §%!g§:Boolean = false;
      
      private var §6Z§:int = 0;
      
      private var §!;§:Boolean = false;
      
      private var §<"C§:Boolean = false;
      
      private var §dynamic for super§:Boolean = false;
      
      private var pause:Boolean = false;
      
      private var activate:Boolean = false;
      
      private var §var default§:Boolean = false;
      
      private var §["8§:Boolean = false;
      
      public function §get finally§()
      {
         super();
      }
      
      public function init() : void
      {
         if(!this.§var default§)
         {
            display.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
            display.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
            display.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
            display.stage.addEventListener(§in var continue§,this.§get extends§);
            display.stage.addEventListener(§>!U§,this.§'3§);
            display.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
            display.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
            display.stage.addEventListener(KeyboardEvent.KEY_UP,this.onKeyUp);
            display.stage.addEventListener(Event.ACTIVATE,this.§9"$§);
            display.stage.addEventListener(Event.DEACTIVATE,this.§8X§);
            display.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§do var extends§);
            display.stage.addEventListener(§switch var final§,this.§in for set§);
            battleEventDispatcher.§7i§(§final const each§,this);
            battleEventDispatcher.§7i§(§null final§,this);
            this.listeners.length = 0;
            this.§if for dynamic§ = 0;
            this.active = true;
            this.activate = false;
            this.pause = false;
            this.§!;§ = false;
            this.§6Z§ = 0;
            this.§use const function§ = false;
            this.§dynamic var class§ = false;
            this.§["8§ = false;
            this.§var default§ = true;
         }
      }
      
      public function close() : void
      {
         if(this.§var default§)
         {
            display.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
            display.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
            display.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
            display.stage.removeEventListener(§in var continue§,this.§get extends§);
            display.stage.removeEventListener(§>!U§,this.§'3§);
            display.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
            display.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
            display.stage.removeEventListener(KeyboardEvent.KEY_UP,this.onKeyUp);
            display.stage.removeEventListener(Event.ACTIVATE,this.§9"$§);
            display.stage.removeEventListener(Event.DEACTIVATE,this.§8X§);
            display.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.§do var extends§);
            display.stage.removeEventListener(§switch var final§,this.§in for set§);
            battleEventDispatcher.§,"7§(§final const each§,this);
            battleEventDispatcher.§,"7§(§null final§,this);
            this.listeners.length = 0;
            this.§var default§ = false;
         }
      }
      
      private function §in for set§(param1:FullScreenEvent) : void
      {
         if(param1.fullScreen)
         {
            this.§+"a§();
         }
         this.§!;§ = false;
      }
      
      private function §do var extends§(param1:FullScreenEvent) : void
      {
         if(param1.fullScreen)
         {
            this.§+"a§();
         }
         this.§!;§ = param1.fullScreen && !§in const§.isStandAlone();
      }
      
      private function §get extends§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(this.§"Z§(param1))
         {
            _loc2_ = 0;
            while(_loc2_ < this.listeners.length)
            {
               if(!§3F§(this.listeners[_loc2_]).mouseRightButton(true,true))
               {
                  return;
               }
               _loc2_++;
            }
         }
      }
      
      private function §'3§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(this.§"Z§(param1) && this.§6Z§ == 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this.listeners.length)
            {
               if(!§3F§(this.listeners[_loc2_]).mouseRightButton(false,true))
               {
                  return;
               }
               _loc2_++;
            }
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(this.§"Z§(param1) && this.§6Z§ == 0)
         {
            _loc2_ = 0;
            if(§in const§.isMouseLocked())
            {
               while(_loc2_ < this.listeners.length)
               {
                  §3F§(this.listeners[_loc2_]).mouseWheel(param1.delta);
                  _loc2_++;
               }
            }
         }
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(this.§"Z§(param1) && this.§6Z§ == 0)
         {
            if(this.§dynamic var class§)
            {
               this.§dynamic var class§ = false;
               return;
            }
            if(§in const§.isMouseLocked())
            {
               _loc2_ = 0;
               while(_loc2_ < this.listeners.length)
               {
                  §3F§(this.listeners[_loc2_]).mouseRelativeMovement(param1[§2"6§],param1[§extends var class§]);
                  _loc2_++;
               }
            }
            else
            {
               _loc2_ = 0;
               while(_loc2_ < this.listeners.length)
               {
                  §3F§(this.listeners[_loc2_]).mouseAbsoluteMovement(param1.stageX,param1.stageY);
                  _loc2_++;
               }
            }
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         this.§dynamic for super§ = true;
         if(this.§"Z§(param1) && this.§6Z§ == 0)
         {
            this.§<"C§ = true;
            this.§">§(true,true);
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.§dynamic for super§ = false;
         if(this.§"Z§(param1) && this.§6Z§ == 0)
         {
            this.§<"C§ = false;
            this.§">§(false,true);
         }
      }
      
      private function §">§(param1:Boolean, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.listeners.length)
         {
            if(!§3F§(this.listeners[_loc3_]).mouseLeftButton(param1,param2))
            {
               return;
            }
            _loc3_++;
         }
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:int = 0;
         if(this.§="e§(param1) && this.§6Z§ == 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this.listeners.length)
            {
               if(!§3F§(this.listeners[_loc2_]).keyboardButton(param1.keyCode,true))
               {
                  return;
               }
               _loc2_++;
            }
         }
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:int = 0;
         if(this.§="e§(param1) && this.§6Z§ == 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this.listeners.length)
            {
               if(!§3F§(this.listeners[_loc2_]).keyboardButton(param1.keyCode,false))
               {
                  return;
               }
               _loc2_++;
            }
         }
      }
      
      private function §9"$§(param1:Event) : void
      {
         if(!this.active)
         {
            this.activate = true;
            this.§+"a§();
         }
      }
      
      private function §8X§(param1:Event) : void
      {
         this.active = false;
      }
      
      public function tick() : void
      {
         if(this.§var default§ && this.active)
         {
            if(this.§%!g§ && !this.§in switch§())
            {
               if(this.§use const function§)
               {
                  this.requestMouseLock();
               }
            }
            else if(!this.§%!g§ && this.§in switch§())
            {
               if(this.isInFullscreen())
               {
                  display.stage[MOUSE_LOCK] = false;
               }
            }
            this.§%!g§ = this.§in switch§();
            if(this.§6Z§ > 0)
            {
               --this.§6Z§;
            }
         }
         if(this.activate)
         {
            this.active = true;
            this.activate = false;
            if(this.isInFullscreen() && this.§use const function§)
            {
               this.requestMouseLock();
            }
         }
      }
      
      public function addListener(param1:§3F§) : void
      {
         if(this.listeners.indexOf(param1) < 0)
         {
            this.listeners.push(param1);
         }
      }
      
      public function removeListener(param1:§3F§) : void
      {
         this.listeners.splice(this.listeners.indexOf(param1),1);
      }
      
      public function §set for with§() : void
      {
         this.§+3§(false);
      }
      
      public function §in const function§() : void
      {
         this.§+3§(true);
      }
      
      private function §+3§(param1:Boolean) : void
      {
         if(this.§var default§)
         {
            this.§["8§ = param1;
            ++this.§if for dynamic§;
            if(this.§if for dynamic§ == 1)
            {
               battleEventDispatcher.dispatchEvent(new §null const if§(false,param1));
            }
         }
      }
      
      private function isInFullscreen() : Boolean
      {
         return display.stage.displayState != StageDisplayState.NORMAL;
      }
      
      public function §@![§() : void
      {
         if(this.§var default§)
         {
            --this.§if for dynamic§;
            if(this.§if for dynamic§ <= 0)
            {
               this.§if for dynamic§ = 0;
               battleEventDispatcher.dispatchEvent(new §null const if§(true,this.§["8§));
               this.§["8§ = false;
               if(this.§dynamic for super§ != this.§<"C§)
               {
                  if(!this.§in switch§())
                  {
                     this.§">§(this.§dynamic for super§,false);
                  }
                  this.§<"C§ = this.§dynamic for super§;
               }
            }
         }
      }
      
      public function requestMouseLock() : void
      {
         if(this.§var default§)
         {
            if(!this.§in switch§())
            {
               §in const§.requestMouseLock();
            }
            else
            {
               this.§use const function§ = true;
            }
            if(§in const§.isMouseLocked())
            {
               this.§1!<§(true);
               this.§dynamic var class§ = true;
               this.§use const function§ = true;
            }
         }
      }
      
      private function §in switch§() : Boolean
      {
         return this.§if for dynamic§ > 0 || this.§ !r§();
      }
      
      private function § !r§() : Boolean
      {
         return !§include for final§.inBattle() || §include for final§.isSwitchInProgress() || §include for final§.isWindowOpenOverBattle() || this.§!;§;
      }
      
      private function §"Z§(param1:MouseEvent) : Boolean
      {
         return !§while var false§.§3!'§() && this.§,!r§(param1);
      }
      
      private function §="e§(param1:KeyboardEvent) : Boolean
      {
         return !§while var false§.§3!'§() && !this.pause && (!this.§ !r§() || this.§["8§);
      }
      
      private function §,!r§(param1:MouseEvent) : Boolean
      {
         var _loc2_:* = !(param1.target is Stage);
         return this.active && !this.pause && !_loc2_ && !this.§in switch§();
      }
      
      public function §8o§() : void
      {
         if(this.isInFullscreen())
         {
            display.stage[MOUSE_LOCK] = false;
            this.§1!<§(false);
            this.§use const function§ = false;
         }
      }
      
      private function §1!<§(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.listeners.length)
         {
            §3F§(this.listeners[_loc2_]).mouseLocked(param1);
            _loc2_++;
         }
      }
      
      public function §+"a§(param1:int = 1) : void
      {
         this.§6Z§ = param1;
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         if(param1 is §final const each§)
         {
            this.pause = true;
         }
         else if(param1 is §null final§)
         {
            this.pause = false;
         }
      }
   }
}

