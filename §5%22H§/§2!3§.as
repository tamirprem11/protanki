package §5"H§
{
   import §7"O§.§ d§;
   import §7"O§.§^!z§;
   import §8=§.MessageColor;
   import §9"9§.§<!9§;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.models.battle.battlefield.BattleUserInfoService;
   import alternativa.tanks.models.battle.gui.§#"K§;
   import §import import§.§finally for false§;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import platform.client.fp10.core.type.IGameObject;
   import platform.client.fp10.core.type.ISpace;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class §2!3§ extends §^!z§ implements § d§, ObjectLoadListener
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var userInfoService:BattleUserInfoService;
      
      [Inject]
      public static var userPropertiesService:IUserPropertiesService;
      
      public static const §="1§:int = 800;
      
      public function §2!3§()
      {
         super();
      }
      
      [Obfuscation(rename="false")]
      public function §=!G§(param1:ClientObject) : void
      {
         if(param1 != null)
         {
            this.§final var continue§(param1,TanksLocale.TEXT_BATTLE_GOLD_TAKEN);
         }
      }
      
      private function §final var continue§(param1:ClientObject, param2:String) : void
      {
         var _loc3_:ISpace = null;
         var _loc4_:IGameObject = null;
         var _loc5_:§#"K§ = null;
         var _loc6_:§finally for false§ = §<!9§.§<!i§(param1);
         var _loc7_:Vector3 = new Vector3(_loc6_.x,_loc6_.y,_loc6_.z + 300);
         var _loc8_:String = userInfoService.§for var function§(param1.id);
         if(_loc8_ != null)
         {
            _loc5_ = §#"K§(OSGi.getInstance().getService(§#"K§));
            _loc5_.§for for continue§(MessageColor.§13§,_loc8_ + " " + localeService.getText(param2));
            _loc5_.logUserAction(param1.id,localeService.getText(param2),null);
         }
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded() : void
      {
      }
   }
}

