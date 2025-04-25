package §for const get§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.tank.§7!n§;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.services.targeting.§3F§;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import alternativa.tanks.utils.MathUtils;
   import §const set false§.§+!0§;
   import §const set false§.§+"3§;
   import flash.events.Event;
   
   public class §6>§ implements §+!0§, §3F§
   {
      [Inject]
      public static var §if for null§:TargetingInputManager;
      
      [Inject]
      public static var settingsService:ISettingsService;
      
      [Inject]
      public static var display:IDisplay;
      
      private static const §use for return§:Number = 0.0001;
      
      private static var mouseSensitivity:int = 0;
      
      protected var §&>§:§+"3§;
      
      private var §set var dynamic§:Number;
      
      private var §const for case§:Number;
      
      private var §true const true§:Boolean;
      
      public function §6>§(param1:§+"3§)
      {
         super();
         this.§&>§ = param1;
         this.§set var dynamic§ = 0;
         mouseSensitivity = settingsService.mouseSensitivity;
      }
      
      public function mouseRelativeMovement(param1:Number, param2:Number) : void
      {
         this.§set var dynamic§ -= param1 * mouseSensitivity * §use for return§;
         this.§set var dynamic§ = MathUtils.clampAngle(this.§set var dynamic§);
      }
      
      public function keyboardButton(param1:uint, param2:Boolean) : Boolean
      {
         return true;
      }
      
      public function tick(param1:Number) : void
      {
         var _loc2_:Tank = §7!n§.§extends set var§.tank;
         this.§const for case§ = _loc2_.§>?§();
         if(!this.§true const true§)
         {
            this.§in if§();
         }
         this.§&>§.§var set false§(this.§set var dynamic§);
      }
      
      protected function §in if§() : void
      {
         this.§&>§.§in if§(this.§set var dynamic§ - this.§const for case§);
      }
      
      public function enter() : void
      {
         §if for null§.addListener(this);
         display.stage.addEventListener(Event.MOUSE_LEAVE,this.§@"P§);
         mouseSensitivity = settingsService.mouseSensitivity;
         var _loc1_:Tank = §7!n§.§extends set var§.tank;
         this.§const for case§ = _loc1_.§>?§();
         this.§set var dynamic§ = MathUtils.clampAngle(this.§const for case§ + this.§`!3§());
         this.§in if§();
         this.§&>§.§var set false§(this.§set var dynamic§);
         this.§true const true§ = false;
      }
      
      protected function §`!3§() : Number
      {
         return this.§&>§.§9G§();
      }
      
      public function exit() : void
      {
         display.stage.removeEventListener(Event.MOUSE_LEAVE,this.§@"P§);
         §if for null§.removeListener(this);
         this.§&>§.§1!p§();
         this.§&>§.§do var each§();
      }
      
      private function §@"P§(param1:Event) : void
      {
         this.§true const true§ = false;
      }
      
      public function mouseAbsoluteMovement(param1:Number, param2:Number) : void
      {
      }
      
      public function mouseLeftButton(param1:Boolean, param2:Boolean) : Boolean
      {
         return true;
      }
      
      public function mouseWheel(param1:int) : void
      {
      }
      
      public function mouseRightButton(param1:Boolean, param2:Boolean) : Boolean
      {
         this.§true const true§ = param1;
         this.§&>§.§2P§();
         return true;
      }
      
      public function mouseLocked(param1:Boolean) : void
      {
      }
   }
}

