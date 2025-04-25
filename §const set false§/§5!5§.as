package §const set false§
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.§="B§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.models.weapon.shaft.§implements final§;
   
   use namespace alternativa3d;
   
   public class §5!5§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var camera:§for for native§;
      
      private var §native const false§:§implements final§;
      
      public function §5!5§(param1:§implements final§)
      {
         super();
         this.§native const false§ = param1;
         this.camera = battleService.§catch include§().§function var break§();
      }
      
      public function update(param1:Vector3) : void
      {
         var _loc2_:§="B§ = null;
         var _loc3_:Number = Number(this.camera.alternativa3d::focalLength);
         var _loc4_:Number = Number(this.camera.alternativa3d::viewSizeX);
         var _loc5_:Number = Number(this.camera.alternativa3d::viewSizeY);
         var _loc6_:Number = Math.atan((_loc5_ + this.§native const false§.height / 2) / _loc3_);
         var _loc7_:Number = Math.atan((_loc4_ + this.§native const false§.width / 2) / _loc3_);
         var _loc8_:Matrix3 = §#",§.§class super§;
         _loc8_.setRotationMatrixForObject3D(this.camera);
         var _loc9_:Vector3 = §#",§.§for const finally§;
         _loc8_.transformVectorInverse(param1,_loc9_);
         var _loc10_:Number = Math.atan2(_loc9_.x,_loc9_.z);
         var _loc11_:Number = Math.atan2(_loc9_.y,_loc9_.z);
         this.§native const false§.visible = Math.abs(_loc11_) <= _loc6_ && Math.abs(_loc10_) <= _loc7_;
         if(this.§native const false§.visible)
         {
            _loc2_ = battleService.§override var with§();
            this.§native const false§.x = _loc2_.§true const set§() + Math.tan(_loc10_) * _loc3_ + _loc4_ - this.§native const false§.width / 2;
            this.§native const false§.y = _loc2_.§function var implements§() + Math.tan(_loc11_) * _loc3_ + _loc5_ - this.§native const false§.height / 2;
         }
      }
   }
}

