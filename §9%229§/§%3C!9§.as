package §9"9§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.utils.TextureMaterialRegistry;
   import §import import§.§finally for false§;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §<!9§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var §true const function§:TextureMaterialRegistry;
      
      public function §<!9§()
      {
         super();
      }
      
      public static function §8"e§(param1:IGameObject, param2:int) : void
      {
      }
      
      public static function §4!t§(param1:§finally for false§, param2:int, param3:TextureMaterial) : void
      {
      }
      
      private static function §with return§(param1:§finally for false§, param2:int) : void
      {
      }
      
      public static function §<!i§(param1:ClientObject) : §finally for false§
      {
         var _loc2_:§finally const class§ = §finally const class§(OSGi.getInstance().getService(§finally const class§));
         var _loc3_:Tank = _loc2_.getTankData(param1).tank;
         var _loc4_:Object3D = _loc3_.§<M§().§0[§();
         return new §finally for false§(_loc4_.x,_loc4_.y,_loc4_.z);
      }
   }
}

