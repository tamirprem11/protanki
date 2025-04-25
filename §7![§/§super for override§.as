package §7![§
{
   import §9"9§.§!!c§;
   import §9"9§.§8"F§;
   import §9"9§.§break use§;
   import §9"9§.§each var if§;
   import §9"9§.§extends var if§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   
   public class §super for override§
   {
      public static const §'!C§:int = 120;
      
      private static const §@f§:int = 50;
      
      private var battleService:BattleService;
      
      private var sfxData:§<!&§;
      
      public function §super for override§(param1:BattleService, param2:§<!&§)
      {
         super();
         this.battleService = param1;
         this.sfxData = param2;
      }
      
      public function §"h§(param1:Object3D, param2:Vector3) : void
      {
         this.§#!+§(param2,param1);
         this.§[R§(param2,param1);
         this.§import for break§(param1);
      }
      
      private function §#!+§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:§extends var if§ = §extends var if§(this.battleService.§#!o§().getObject(§extends var if§));
         _loc3_.init(param1,param2,this.sfxData.§catch var implements§,§@f§,§'!C§,§'!C§);
         this.battleService.§override for native§(_loc3_);
      }
      
      private function §[R§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:§break use§ = §break use§(this.battleService.§#!o§().getObject(§break use§));
         var _loc4_:§each var if§ = §each var if§(this.battleService.§#!o§().getObject(§each var if§));
         _loc4_.init(param2,param1);
         _loc3_.init(_loc4_,this.sfxData.§70§);
         this.battleService.§override for native§(_loc3_);
      }
      
      private function §import for break§(param1:Object3D) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:§!!c§ = null;
         if(this.sfxData.shotSound != null)
         {
            _loc2_ = 0.8;
            _loc3_ = §!!c§.create(this.sfxData.shotSound,_loc2_);
            §#",§.§for const finally§.reset(param1.x,param1.y,param1.z);
            this.battleService.§!O§(§8"F§.create(§#",§.§for const finally§,_loc3_));
         }
      }
   }
}

