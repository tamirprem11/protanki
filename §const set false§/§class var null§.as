package §const set false§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§function use§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.scene3d.§set while§;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import flash.events.Event;
   import §for const get§.§2!q§;
   import §for const get§.§6>§;
   
   public class §class var null§ implements §override const do§, §set while§
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var §0"P§:BattleInputService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var §%!P§:TargetingModeService;
      
      private var §true const true§:Boolean = false;
      
      private var §null const with§:Boolean = false;
      
      private var §each switch§:§2!q§;
      
      private var mouseState:§6>§;
      
      private var currentState:§+!0§ = null;
      
      private var §#r§:§+!0§ = null;
      
      private var §&>§:§+"3§;
      
      private var §0w§:Boolean;
      
      public function §class var null§(param1:§+"3§)
      {
         super();
         this.§&>§ = param1;
         display.stage.addEventListener(Event.DEACTIVATE,this.§;!V§);
         battleEventDispatcher.§7i§(§function use§,this);
         this.§each switch§ = new §2!q§(param1);
         this.mouseState = this.§finally var set§(param1);
         this.changeState(this.§?h§(§%!P§.§-!!§()));
         battleService.§catch include§().§@!X§(this);
      }
      
      protected function §finally var set§(param1:§+"3§) : §6>§
      {
         return new §6>§(param1);
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.tick(param2 * 0.001);
      }
      
      public function tick(param1:Number) : void
      {
         if(this.§#r§ != null)
         {
            if(this.currentState != null)
            {
               this.currentState.exit();
            }
            this.§&>§.§2P§();
            this.currentState = this.§#r§;
            this.currentState.enter();
            this.§#r§ = null;
         }
         if(this.currentState != null)
         {
            if(this.§0w§)
            {
               this.currentState.exit();
               this.currentState.enter();
               this.§0w§ = false;
            }
            this.currentState.tick(param1);
         }
      }
      
      private function §;!V§(param1:Event) : void
      {
         this.§true const true§ = false;
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         display.stage.removeEventListener(Event.DEACTIVATE,this.§;!V§);
         battleEventDispatcher.§,"7§(§function use§,this);
         battleService.§catch include§().§use const else§(this);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§function use§ = param1 as §function use§;
         if(_loc3_ != null)
         {
            _loc2_ = _loc3_.targetingMode;
            this.changeState(this.§?h§(_loc2_));
         }
      }
      
      protected function changeState(param1:§+!0§) : void
      {
         this.§#r§ = param1;
      }
      
      protected function §?h§(param1:int) : §+!0§
      {
         switch(param1)
         {
            case §var var implements§.§7!'§:
               return this.§each switch§;
            case §var var implements§.§]!+§:
               return this.mouseState;
            default:
               return null;
         }
      }
      
      public function §-!y§() : §+"3§
      {
         return this.§&>§;
      }
      
      public function §in set finally§() : void
      {
         this.§&>§.§do var each§();
         this.§&>§.§each const class§(0);
      }
      
      public function reset() : void
      {
         this.§in set finally§();
         this.§0w§ = true;
      }
   }
}

