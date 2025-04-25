package alternativa.tanks.models.battle.battlefield
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §!"#§
   {
      [Inject]
      public static var §var const static§:IDisplay;
      
      [Inject]
      public static var §while var false§:BattleInputService;
      
      [Inject]
      public static var battleService:BattleService;
      
      private static const §2a§:uint = Keyboard.F8;
      
      public function §!"#§()
      {
         super();
         §var const static§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == §2a§ && !§while var false§.§3!'§())
         {
            battleService.§catch include§().§#"0§();
         }
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         §var const static§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
      }
   }
}

