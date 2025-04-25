package alternativa.tanks.models.weapons.targeting.priority
{
   import §6!%§.§const var switch§;
   import §;+§.§false const var§;
   import alternativa.physics.Body;
   import alternativa.physics.collision.types.RayHit;
   
   public class §<!$§
   {
      private var §4";§:§const var switch§;
      
      private var §["H§:Number;
      
      public function §<!$§(param1:§const var switch§, param2:Number = 0)
      {
         super();
         this.§4";§ = param1;
         this.§["H§ = param2;
      }
      
      public function §1!@§(param1:Number, param2:Vector.<§false const var§>) : Number
      {
         var _loc3_:§false const var§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = int(param2.length - 1);
         while(_loc5_ >= 0)
         {
            _loc3_ = param2[_loc5_];
            _loc4_ = Math.max(this.§get set var§(_loc3_,param1) + this.§["H§ * _loc4_,_loc4_);
            _loc5_--;
         }
         return _loc4_;
      }
      
      private function §get set var§(param1:§false const var§, param2:Number) : Number
      {
         return this.§4";§.§>B§(param1.§try set null§(),param1.§6u§(),param2);
      }
      
      public function §include import§(param1:Number, param2:Vector.<RayHit>) : Number
      {
         var _loc3_:RayHit = null;
         var _loc4_:Number = 1;
         var _loc5_:Number = 0;
         for each(_loc3_ in param2)
         {
            _loc5_ += this.§throw const each§(param1,_loc3_) * _loc4_;
            _loc4_ *= this.§["H§;
         }
         return _loc5_;
      }
      
      private function §throw const each§(param1:Number, param2:RayHit) : Number
      {
         var _loc3_:Body = param2.shape.body;
         if(param2.staticHit)
         {
            return 0;
         }
         return this.§4";§.§>B§(_loc3_.tank,param2.t,param1);
      }
   }
}

