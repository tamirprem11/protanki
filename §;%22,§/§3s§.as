package §;",§
{
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.collision.IRayCollisionFilter;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.models.weapon.shared.§override for class§;
   import §dynamic package§.§]"P§;
   import §dynamic package§.§throw const function§;
   
   public class §3s§ implements IRayCollisionFilter
   {
      private static const §native for function§:RayHit = new RayHit();
      
      private static const §finally set get§:Vector3 = new Vector3();
      
      private static const §6_§:Vector3 = new Vector3();
      
      private static const direction:Vector3 = new Vector3();
      
      private static const matrix:Matrix3 = new Matrix3();
      
      private var §<"-§:Number;
      
      private var §static for const§:int;
      
      private var §&T§:Number;
      
      private var §%!1§:int;
      
      private var §implements throw§:Number;
      
      private var §3!l§:§>!8§;
      
      private var §override for switch§:Number;
      
      private var §native set function§:int;
      
      private var §include const use§:Body;
      
      private var collisionDetector:§throw const function§;
      
      private var maxRicochetCount:int;
      
      public function §3s§(param1:Number, param2:int, param3:Number, param4:int, param5:Number, param6:§throw const function§, param7:§>!8§, param8:int)
      {
         super();
         this.§<"-§ = param1;
         this.§static for const§ = param2;
         this.§&T§ = param3;
         this.§%!1§ = param4;
         this.§implements throw§ = param5;
         this.§3!l§ = param7;
         this.collisionDetector = param6;
         this.maxRicochetCount = param8;
      }
      
      public function considerBody(param1:Body) : Boolean
      {
         return this.§include const use§ != param1 || this.§native set function§ > 0;
      }
      
      public function §<4§(param1:Vector3, param2:Vector3, param3:Vector3, param4:Body, param5:Vector3) : void
      {
         this.§var for const§(param4);
         this.§extends var false§(param1,param2,0,param5);
         this.§while var use§(param1,param2,param3,this.§<"-§ / this.§static for const§,this.§static for const§,param5);
         this.§while var use§(param1,param2,param3,-this.§&T§ / this.§%!1§,this.§%!1§,param5);
         this.§false const null§(param5,param2);
      }
      
      private function §var for const§(param1:Body) : void
      {
         this.§include const use§ = param1;
         this.§override for switch§ = 0;
      }
      
      private function §extends var false§(param1:Vector3, param2:Vector3, param3:Number, param4:Vector3) : void
      {
         var _loc5_:Body = null;
         var _loc6_:* = false;
         this.§native set function§ = 0;
         §finally set get§.copy(param1);
         §6_§.copy(param2);
         var _loc7_:Number = this.§implements throw§;
         while(_loc7_ > 0)
         {
            if(!this.collisionDetector.raycast(§finally set get§,§6_§,§]"P§.WEAPON,_loc7_,this,§native for function§))
            {
               return;
            }
            _loc7_ -= §native for function§.t;
            if(_loc7_ < 0)
            {
               _loc7_ = 0;
            }
            _loc5_ = §native for function§.shape.body;
            _loc6_ = false;
            if(_loc5_.tank != null)
            {
               if(this.§native set function§ > 0)
               {
                  _loc6_ = true;
               }
               else
               {
                  _loc6_ = !§override for class§.§[c§(§finally set get§,§native for function§.position);
               }
            }
            if(_loc5_.tank != null && _loc5_ != this.§include const use§ && _loc6_)
            {
               this.§for for finally§(_loc5_,_loc7_,param3,param2,param4);
               return;
            }
            if(_loc6_)
            {
               return;
            }
            if(!this.§throw for case§())
            {
               return;
            }
         }
      }
      
      private function §for for finally§(param1:Body, param2:Number, param3:Number, param4:Vector3, param5:Vector3) : void
      {
         var _loc6_:Number = this.§implements throw§ - param2;
         var _loc7_:Number = this.§3!l§.§>B§(param1,this.§native set function§,_loc6_,param3,this.§implements throw§,Math.max(this.§<"-§,this.§&T§));
         if(_loc7_ > this.§override for switch§)
         {
            this.§override for switch§ = _loc7_;
            param5.copy(param4);
         }
      }
      
      private function §throw for case§() : Boolean
      {
         var _loc1_:Vector3 = null;
         if(this.§native set function§ < this.maxRicochetCount)
         {
            ++this.§native set function§;
            _loc1_ = §native for function§.normal;
            §6_§.addScaled(-2 * §6_§.dot(_loc1_),_loc1_);
            §finally set get§.copy(§native for function§.position).addScaled(0.5,_loc1_);
            return true;
         }
         return false;
      }
      
      private function §while var use§(param1:Vector3, param2:Vector3, param3:Vector3, param4:Number, param5:int, param6:Vector3) : void
      {
         direction.copy(param2);
         matrix.fromAxisAngle(param3,param4);
         if(param4 < 0)
         {
            param4 = -param4;
         }
         var _loc7_:Number = param4;
         var _loc8_:int = 0;
         while(_loc8_ < param5)
         {
            direction.transform3(matrix);
            this.§extends var false§(param1,direction,_loc7_,param6);
            _loc8_++;
            _loc7_ += param4;
         }
      }
      
      private function §false const null§(param1:Vector3, param2:Vector3) : void
      {
         this.§include const use§ = null;
         if(this.§override for switch§ == 0)
         {
            param1.copy(param2);
         }
      }
   }
}

