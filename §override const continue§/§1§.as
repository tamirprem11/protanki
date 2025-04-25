package §override const continue§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§function use§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§true set if§;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import §do set else§.§=!p§;
   import flash.events.Event;
   import flash.net.SharedObject;
   import platform.client.fp10.core.type.AutoClosable;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class §1§ implements AutoClosable, §override const do§
   {
      [Inject]
      public static var storageService:IStorageService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var userPropertiesService:IUserPropertiesService;
      
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var §+!p§:BattleGUIService;
      
      private static const §5T§:String = "disableControlsMiniHelp";
      
      private var §case for with§:§=!p§;
      
      public function §1§()
      {
         super();
         var _loc1_:SharedObject = storageService.getStorage();
         if(!_loc1_.data[§5T§])
         {
            if(userPropertiesService.rank == 1)
            {
               _loc1_.data[§5T§] = 1;
               this.§>c§();
            }
         }
      }
      
      private function §>c§() : void
      {
         this.§case for with§ = new §=!p§();
         §+!p§.§2K§().addChild(this.§case for with§);
         this.setPosition();
         battleEventDispatcher.§7i§(§true set if§,this);
         battleEventDispatcher.§7i§(§function use§,this);
         display.stage.addEventListener(Event.RESIZE,this.onResize);
      }
      
      private function onResize(param1:Event) : void
      {
         this.setPosition();
      }
      
      private function setPosition() : void
      {
         this.§case for with§.x = display.stage.stageWidth - this.§case for with§.width >> 1;
         this.§case for with§.y = display.stage.stageHeight - this.§case for with§.height - 10;
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:§function use§ = null;
         if(param1 is §true set if§)
         {
            this.close();
         }
         else if(param1 is §function use§)
         {
            _loc2_ = param1 as §function use§;
            this.§case for with§.§in set false§(_loc2_.targetingMode);
         }
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         if(this.§case for with§ != null)
         {
            display.stage.removeEventListener(Event.RESIZE,this.onResize);
            battleEventDispatcher.§,"7§(§true set if§,this);
            battleEventDispatcher.§,"7§(§function use§,this);
            this.§case for with§.parent.removeChild(this.§case for with§);
            this.§case for with§ = null;
         }
      }
   }
}

