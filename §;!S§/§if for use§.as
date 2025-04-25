package §;!S§
{
   import §9"9§.§!!c§;
   import §9"9§.§'!q§;
   import §9"9§.§8"F§;
   import §9"9§.§break use§;
   import §9"9§.§each var if§;
   import §9"9§.§return var include§;
   import §<"N§.§if continue§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   
   public class §if for use§ implements §2`§
   {
      private static const §7"e§:Number = 0.7;
      
      private static const §`!_§:Number = 0.7;
      
      private static const §#"E§:Number = 110;
      
      private static const §include default§:Number = 250;
      
      private static const §8!K§:Matrix4 = new Matrix4();
      
      private static const §for const for§:Vector3 = new Vector3();
      
      private var battleService:BattleService;
      
      private var sfxData:§include for const§;
      
      public function §if for use§(param1:BattleService, param2:§include for const§)
      {
         super();
         this.battleService = param1;
         this.sfxData = param2;
      }
      
      public function §"h§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:§9"C§ = §9"C§(this.battleService.§#!o§().getObject(§9"C§));
         _loc3_.init(param2,param1,this.sfxData.§catch var implements§);
         this.battleService.§override for native§(_loc3_);
         §8!K§.setMatrix(param2.x,param2.y,param2.z,param2.rotationX,param2.rotationY,param2.rotationZ);
         §8!K§.transformVector(param1,§for const for§);
         var _loc4_:§!!c§ = §!!c§.create(this.sfxData.shotSound,§7"e§);
         this.battleService.§!O§(§8"F§.create(§for const for§,_loc4_));
         this.§?"9§(param1,param2);
      }
      
      public function §?"9§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:§break use§ = §break use§(this.battleService.§#!o§().getObject(§break use§));
         var _loc4_:§each var if§ = §each var if§(this.battleService.§#!o§().getObject(§each var if§));
         _loc4_.init(param2,param1);
         _loc3_.init(_loc4_,this.sfxData.§while const default§);
         this.battleService.§override for native§(_loc3_);
      }
      
      public function §finally break§(param1:Vector3) : void
      {
         this.§+!-§(param1);
         this.§default throw§(param1);
         this.§@!b§(param1);
      }
      
      private function §@!b§(param1:Vector3) : void
      {
         var _loc2_:§break use§ = §break use§(this.battleService.§#!o§().getObject(§break use§));
         var _loc3_:§return var include§ = §return var include§(this.battleService.§#!o§().getObject(§return var include§));
         _loc3_.init(param1,§#"E§);
         _loc2_.init(_loc3_,this.sfxData.§class for use§);
         this.battleService.§override for native§(_loc2_);
      }
      
      public function §each const each§(param1:Vector3, param2:Vector3) : void
      {
         this.battleService.§catch include§().addDecal(param2,param1,§include default§,this.sfxData.§%"f§);
      }
      
      private function §+!-§(param1:Vector3) : void
      {
         var _loc2_:§if continue§ = this.battleService.§#!o§();
         var _loc3_:§return var include§ = §return var include§(_loc2_.getObject(§return var include§));
         _loc3_.init(param1,§#"E§);
         var _loc4_:§'!q§ = §'!q§(_loc2_.getObject(§'!q§));
         _loc4_.init(this.sfxData.explosionSize,this.sfxData.explosionSize,this.sfxData.§,_§,Math.random() * 2 * Math.PI,_loc3_);
         this.battleService.§override for native§(_loc4_);
      }
      
      private function §default throw§(param1:Vector3) : void
      {
         var _loc2_:§!!c§ = §!!c§.create(this.sfxData.explosionSound,§`!_§);
         this.battleService.§!O§(§8"F§.create(param1,_loc2_));
      }
   }
}

