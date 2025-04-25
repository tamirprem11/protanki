package §4"D§
{
   import §8=§.MessageColor;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.models.battle.battlefield.§;0§;
   import alternativa.tanks.models.battle.gui.§#"K§;
   import alternativa.types.Long;
   import flash.media.Sound;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.resource.types.SoundResource;
   
   public class §switch for continue§
   {
      private static const UID_PATTERN:String = "%USERNAME%";
      
      [Inject]
      public static var battleService:§;0§ = OSGi.getInstance().getService(BattleService) as §;0§;
      
      public function §switch for continue§()
      {
         super();
      }
      
      [Obfuscation(rename="false")]
      public function §=!C§(param1:String, param2:String) : void
      {
         this.notification(param1,param2,SoundResource(ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry)).getResource(Long.getLong(0,int(param1)))).sound);
      }
      
      [Obfuscation(rename="false")]
      public function notificationBonusContainsUid(param1:String, param2:String) : void
      {
         var _loc3_:String = param1.replace(UID_PATTERN,param2);
         this.notification(param1,_loc3_,null);
      }
      
      private function notification(param1:String, param2:String, param3:Sound) : void
      {
         if(param3 != null)
         {
            battleService.§try var final§().§`b§().§const set const§(param3);
         }
         var _loc4_:§#"K§ = §#"K§(OSGi.getInstance().getService(§#"K§));
         _loc4_.§for for continue§(MessageColor.§13§,param2);
      }
   }
}

