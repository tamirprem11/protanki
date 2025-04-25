package §catch var use§
{
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.tankskin.§3B§;
   import alternativa.tanks.battle.objects.tank.tankskin.§8!x§;
   import alternativa.tanks.materials.TrackMaterial;
   import alternativa.utils.TextureMaterialRegistry;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import projects.tanks.clients.flash.commons.models.coloring.IColoring;
   
   public class §?!X§ implements §catch for for§
   {
      [Inject]
      public static var §while const case§:TextureMaterialRegistry;
      
      [Inject]
      public static var battleService:BattleService;
      
      public function §?!X§()
      {
         super();
      }
      
      public function §continue for dynamic§(param1:§8!x§, param2:IColoring) : §3B§
      {
         var _loc3_:MultiframeImageResource = null;
         var _loc4_:TextureMaterial = null;
         var _loc5_:TextureMaterial = null;
         var _loc6_:ImageResource = null;
         if(param2.isAnimated())
         {
            _loc3_ = param2.getAnimatedColoring();
            _loc4_ = §while const case§.getAnimatedPaint(_loc3_,param1.§8+§());
            _loc5_ = §while const case§.getAnimatedPaint(_loc3_,param1.§super do§());
         }
         else
         {
            _loc6_ = param2.getColoring();
            _loc4_ = §while const case§.getPaint(_loc6_,param1.§8+§());
            _loc5_ = §while const case§.getPaint(_loc6_,param1.§super do§());
         }
         var _loc7_:TrackMaterial = new TrackMaterial(param1.§8+§().details);
         var _loc8_:TrackMaterial = new TrackMaterial(param1.§8+§().details);
         §while const case§.addMaterial(_loc7_);
         §while const case§.addMaterial(_loc8_);
         return new §3B§(_loc4_,_loc5_,_loc7_,_loc8_);
      }
      
      public function §&!p§(param1:§8!x§, param2:ImageResource) : §3B§
      {
         var _loc3_:TextureMaterial = §while const case§.getPaint(param2,param1.§8+§());
         var _loc4_:TextureMaterial = §while const case§.getPaint(param2,param1.§super do§());
         return new §3B§(_loc3_,_loc4_);
      }
   }
}

