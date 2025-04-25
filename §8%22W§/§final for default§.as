package §8"W§
{
   import §"M§.§6!r§;
   import §1"O§.§7!G§;
   import §7C§.§'!&§;
   import §7C§.§,!k§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§const var dynamic§;
   import alternativa.tanks.battle.events.§final const each§;
   import alternativa.tanks.battle.events.§if var function§;
   import alternativa.tanks.battle.events.§implements in§;
   import alternativa.tanks.battle.events.§null final§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§package for null§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends var dynamic§;
   import alternativa.tanks.service.settings.keybinding.§%!6§;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import §continue const for§.§8!J§;
   import §continue const for§.§continue const extends§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.utils.getTimer;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §final for default§ implements §override const do§, §do for switch§
   {
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var §0"P§:BattleInputService;
      
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var §>!Y§:KeysBindingService;
      
      private static const §"!§:int = 1000;
      
      private static const §'!N§:int = 1;
      
      private var §>!V§:int;
      
      private var _user:Tank;
      
      private var §use var in§:Boolean;
      
      private var §4"g§:Boolean;
      
      private var §1!%§:Boolean;
      
      private var §4"M§:Boolean;
      
      private var §true set with§:§6!r§;
      
      private var §implements var continue§:int;
      
      public function §final for default§(param1:Tank, param2:int)
      {
         super();
         this.§>!V§ = param2 + §"!§;
         this._user = param1;
         this.init();
      }
      
      private function init() : void
      {
         this.§true set with§ = new §6!r§();
         display.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown,false,§'!N§);
         display.stage.addEventListener(Event.ACTIVATE,this.§9"$§);
         display.stage.addEventListener(Event.DEACTIVATE,this.§8X§);
         battleEventDispatcher.§7i§(§if var function§,this);
         battleEventDispatcher.§7i§(§implements in§,this);
         battleEventDispatcher.§7i§(§package for null§,this);
         battleEventDispatcher.§7i§(§const var dynamic§,this);
         battleEventDispatcher.§7i§(§7!G§,this);
         battleEventDispatcher.§7i§(§continue const extends§,this);
         battleEventDispatcher.§7i§(§8!J§,this);
         battleEventDispatcher.§7i§(§final const each§,this);
         battleEventDispatcher.§7i§(§null final§,this);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:§%!6§ = §>!Y§.§case do§(param1.keyCode);
         if(_loc2_ == §%!6§.SUICIDE || param1.keyCode == Keyboard.BACKSLASH && param1.ctrlKey)
         {
            this.§throw try§();
         }
      }
      
      private function §9"$§(param1:Event) : void
      {
         this.§true set with§.visible = true;
      }
      
      private function §8X§(param1:Event) : void
      {
         this.§true set with§.visible = false;
      }
      
      private function §throw try§() : void
      {
         if(this.§`!O§())
         {
            this.showIndicator();
            this.§use var in§ = true;
            Network(OSGi.getInstance().getService(INetworker)).send("battle;suicide");
         }
      }
      
      public function showIndicator() : void
      {
         this.§implements var continue§ = getTimer() + this.§>!V§;
         this.§true set with§.show(this.§>!V§ / 1000);
         battleService.§try var final§().§finally var false§(this);
         battleEventDispatcher.dispatchEvent(new §'!&§());
      }
      
      private function §`!O§() : Boolean
      {
         var _loc1_:Tank = this._user;
         return battleService.§try const get§() && !this.§use var in§ && !this.§1!%§ && !this.§4"M§ && !§0"P§.§3!'§() && this.§4"g§ && _loc1_.state == §extends var dynamic§.§<"]§;
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         this.§true set with§.seconds = Math.max((this.§implements var continue§ - param1) / 1000,0);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         if(param1 is §if var function§)
         {
            this.§get set catch§(§if var function§(param1));
         }
         else if(param1 is §implements in§)
         {
            this.§try for native§(§implements in§(param1));
         }
         else if(param1 is §package for null§)
         {
            this.hideIndicator();
         }
         else if(param1 is §const var dynamic§)
         {
            this.§override const package§(§const var dynamic§(param1));
         }
         else if(param1 is §7!G§)
         {
            this.§="Z§(§7!G§(param1));
         }
         else if(param1 is §continue const extends§)
         {
            this.§4"M§ = true;
         }
         else if(param1 is §8!J§)
         {
            this.§4"M§ = false;
         }
         else if(param1 is §final const each§)
         {
            this.§1!%§ = true;
         }
         else if(param1 is §null final§)
         {
            this.§1!%§ = false;
         }
      }
      
      private function §get set catch§(param1:§if var function§) : void
      {
         var _loc2_:Tank = param1.tank;
         if(_loc2_ == this._user)
         {
            this.§use var in§ = false;
            this.§4"g§ = true;
         }
      }
      
      private function §try for native§(param1:§implements in§) : void
      {
         var _loc2_:Tank = param1.tank;
         if(_loc2_ == this._user)
         {
            this.§4"g§ = false;
         }
      }
      
      private function §override const package§(param1:§const var dynamic§) : void
      {
         if(this._user == param1.tank)
         {
            this.hideIndicator();
         }
      }
      
      public function hideIndicator() : void
      {
         battleService.§try var final§().§<!3§(this);
         this.§true set with§.hide();
         battleEventDispatcher.dispatchEvent(new §,!k§());
      }
      
      private function §="Z§(param1:§7!G§) : void
      {
         if(this._user == param1.§native const final§)
         {
            this.hideIndicator();
         }
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         display.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         display.stage.removeEventListener(Event.ACTIVATE,this.§9"$§);
         display.stage.removeEventListener(Event.DEACTIVATE,this.§8X§);
         battleEventDispatcher.§,"7§(§if var function§,this);
         battleEventDispatcher.§,"7§(§implements in§,this);
         battleEventDispatcher.§,"7§(§package for null§,this);
         battleEventDispatcher.§,"7§(§const var dynamic§,this);
         battleEventDispatcher.§,"7§(§7!G§,this);
         battleEventDispatcher.§,"7§(§continue const extends§,this);
         battleEventDispatcher.§,"7§(§8!J§,this);
         battleEventDispatcher.§,"7§(§final const each§,this);
         battleEventDispatcher.§,"7§(§null final§,this);
         this.§true set with§.destroy();
         this.§true set with§ = null;
         this._user = null;
      }
   }
}

