package §;",§
{
   import §9"9§.§!!c§;
   import §9"9§.§8"F§;
   import §9"9§.§break use§;
   import §9"9§.§each var if§;
   import §9"9§.§extends var if§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   
   public class §class var import§
   {
      public static const §&0§:Number = 150;
      
      private static const §while var while§:int = 100;
      
      private var battleService:BattleService;
      
      private var sfxData:§1n§;
      
      public function §class var import§(param1:BattleService, param2:§1n§)
      {
         super();
         this.battleService = param1;
         this.sfxData = param2;
      }
      
      public function §"h§(param1:Object3D, param2:Vector3, param3:Vector3) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:§!!c§ = null;
         var _loc6_:§8"F§ = null;
         var _loc7_:§extends var if§ = §extends var if§(this.battleService.§#!o§().getObject(§extends var if§));
         _loc7_.init(param2,param1,this.sfxData.§catch var implements§,§while var while§,§&0§,§&0§);
         this.battleService.§override for native§(_loc7_);
         if(this.sfxData.shotSound != null)
         {
            _loc4_ = 0.8;
            _loc5_ = §!!c§.create(this.sfxData.shotSound,_loc4_);
            _loc6_ = §8"F§.create(param3,_loc5_);
            this.battleService.§!O§(_loc6_);
         }
      }
      
      public function §try var return§(param1:Object3D, param2:Vector3) : void
      {
         var _loc3_:§break use§ = §break use§(this.battleService.§#!o§().getObject(§break use§));
         var _loc4_:§each var if§ = §each var if§(this.battleService.§#!o§().getObject(§each var if§));
         _loc4_.init(param1,param2);
         _loc3_.init(_loc4_,this.sfxData.§while const default§);
         this.battleService.§override for native§(_loc3_);
      }
   }
}

