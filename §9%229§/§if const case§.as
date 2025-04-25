package §9"9§
{
   import §8!1§.§%"Y§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.models.weapon.shared.§'"g§;
   
   public class §if const case§ extends §super for static§ implements §continue var with§
   {
      private var §each null§:§%"Y§;
      
      private var §use var include§:§native var throw§;
      
      private var §false for import§:Array = [0.1,0.3,0.5,0.8,0.9,1];
      
      private var §`d§:Array = [0.5,0.8,1,0.5,0.3,0.05];
      
      public function §if const case§(param1:§default const static§)
      {
         super(param1);
      }
      
      public function init(param1:§%"Y§, param2:§native var throw§) : void
      {
         this.§each null§ = param1;
         this.§use var include§ = param2;
      }
      
      public function §for set finally§(param1:Object3D) : void
      {
         var _loc2_:Vector.<§'"g§> = null;
         var _loc3_:int = 0;
         var _loc4_:§'"g§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         var _loc10_:Number = 0;
         if(this.§each null§.§get var package§ == 0)
         {
            this.§use var include§.§for set finally§(param1);
         }
         else
         {
            _loc2_ = this.§each null§.§import var false§;
            _loc3_ = 0;
            while(_loc3_ < this.§each null§.§get var package§)
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = _loc4_.§import switch§ / this.§each null§.range;
               _loc6_ = this.§catch for switch§(_loc5_);
               _loc10_ += _loc6_;
               _loc7_ += _loc4_.x * _loc6_;
               _loc8_ += _loc4_.y * _loc6_;
               _loc9_ += _loc4_.z * _loc6_;
               _loc3_++;
            }
            _loc7_ /= _loc10_;
            _loc8_ /= _loc10_;
            _loc9_ /= _loc10_;
            param1.x = _loc7_;
            param1.y = _loc8_;
            param1.z = _loc9_;
         }
      }
      
      private function §catch for switch§(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         while(_loc3_ < this.§false for import§.length)
         {
            _loc2_ = Number(this.§false for import§[_loc3_]);
            if(_loc2_ >= param1)
            {
               return this.§`d§[_loc3_];
            }
            _loc3_++;
         }
         return 0;
      }
      
      public function §true for if§(param1:Object3D, param2:§for for native§, param3:int) : void
      {
         this.§for set finally§(param1);
      }
      
      public function destroy() : void
      {
         this.§each null§ = null;
         this.§use var include§ = null;
      }
   }
}

