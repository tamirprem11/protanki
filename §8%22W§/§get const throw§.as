package §8"W§
{
   import §"M§.§override const for§;
   import §1"O§.§7!G§;
   import alternativa.object.ClientObject;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§const var dynamic§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§package for null§;
   import §continue const for§.§8!J§;
   import §continue const for§.§continue const extends§;
   import §continue const for§.§if const dynamic§;
   import flash.events.Event;
   import flash.utils.getTimer;
   import platform.client.fp10.core.type.AutoClosable;
   
   public class §get const throw§ implements AutoClosable, §override const do§, §do for switch§
   {
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var battleService:BattleService;
      
      private static const §-K§:int = 900;
      
      private var _user:ClientObject;
      
      private var §implements var continue§:int;
      
      private var §7;§:§override const for§;
      
      public function §get const throw§(param1:ClientObject)
      {
         super();
         this._user = param1;
         this.init();
      }
      
      private function init() : void
      {
         this.§7;§ = new §override const for§();
         display.stage.addEventListener(Event.ACTIVATE,this.§9"$§);
         display.stage.addEventListener(Event.DEACTIVATE,this.§8X§);
         battleEventDispatcher.§7i§(§if const dynamic§,this);
         battleEventDispatcher.§7i§(§package for null§,this);
         battleEventDispatcher.§7i§(§const var dynamic§,this);
         battleEventDispatcher.§7i§(§7!G§,this);
      }
      
      private function §9"$§(param1:Event) : void
      {
         this.§7;§.visible = true;
      }
      
      private function §8X§(param1:Event) : void
      {
         this.§7;§.visible = false;
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         if(param1 is §if const dynamic§)
         {
            this.showIndicator(§if const dynamic§(param1).suicideDelayMS + §-K§);
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
      }
      
      private function showIndicator(param1:int) : void
      {
         this.§implements var continue§ = getTimer() + param1;
         this.§7;§.show(param1 / 1000);
         battleService.§try var final§().§finally var false§(this);
         battleEventDispatcher.dispatchEvent(new §continue const extends§());
      }
      
      private function hideIndicator() : void
      {
         battleService.§try var final§().§<!3§(this);
         this.§7;§.hide();
         battleEventDispatcher.dispatchEvent(new §8!J§());
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         this.§7;§.seconds = Math.max((this.§implements var continue§ - param1) / 1000,0);
      }
      
      private function §override const package§(param1:§const var dynamic§) : void
      {
         if(this._user == param1.tank.§&"N§())
         {
            this.hideIndicator();
         }
      }
      
      private function §="Z§(param1:§7!G§) : void
      {
         if(this._user == param1.§native const final§.§&"N§())
         {
            this.hideIndicator();
         }
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         display.stage.removeEventListener(Event.ACTIVATE,this.§9"$§);
         display.stage.removeEventListener(Event.DEACTIVATE,this.§8X§);
         battleEventDispatcher.§,"7§(§if const dynamic§,this);
         battleEventDispatcher.§,"7§(§package for null§,this);
         battleEventDispatcher.§,"7§(§const var dynamic§,this);
         battleEventDispatcher.§,"7§(§7!G§,this);
         this.§7;§.destroy();
         this.§7;§ = null;
         this._user = null;
      }
   }
}

