package §,"§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§<n§;
   import alternativa.tanks.camera.§const for switch§;
   import alternativa.tanks.camera.§for for native§;
   
   public class §<!z§ extends §const for switch§ implements §<n§
   {
      private static const §9d§:Matrix3 = new Matrix3();
      
      private static const §9!v§:Matrix3 = new Matrix3();
      
      private static const vector:Vector3 = new Vector3();
      
      private var §get var in§:Object3D;
      
      private var §!'§:Number = 0;
      
      private var §each for class§:Vector3 = new Vector3();
      
      private var §if for get§:Number;
      
      private var §9p§:Number;
      
      private var §5!,§:int;
      
      private var §%d§:Number = 1;
      
      private var §return false§:Number = 1;
      
      private var §continue null§:Number = 0;
      
      private var §default set throw§:Number = 5;
      
      public function §<!z§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.§if for get§ = param1;
         this.§9p§ = param2;
         this.§%d§ = param3;
         this.§default set throw§ = param4;
      }
      
      public function set §0"i§(param1:int) : void
      {
         if(this.§5!,§ != param1)
         {
            this.§5!,§ = param1;
            this.§continue null§ = 0;
         }
      }
      
      public function §%!@§() : Boolean
      {
         return this.§!'§ == this.§if for get§ || this.§!'§ == this.§9p§;
      }
      
      public function §const for throw§(param1:Vector3) : void
      {
         var _loc2_:§for for native§ = null;
         _loc2_ = §function var break§();
         param1.x = _loc2_.x;
         param1.y = _loc2_.y;
         param1.z = _loc2_.z;
      }
      
      public function §?"0§(param1:Vector3) : void
      {
         var _loc2_:§for for native§ = §function var break§();
         var _loc3_:Vector3 = _loc2_.§4"R§;
         param1.copy(_loc3_);
      }
      
      public function get §'!e§() : Number
      {
         return this.§!'§;
      }
      
      public function set §'!e§(param1:Number) : void
      {
         if(param1 > this.§if for get§)
         {
            this.§!'§ = this.§if for get§;
         }
         else if(param1 < this.§9p§)
         {
            this.§!'§ = this.§9p§;
         }
         else
         {
            this.§!'§ = param1;
         }
      }
      
      public function §class return§(param1:Object3D) : void
      {
         this.§get var in§ = param1;
      }
      
      public function §native set for§(param1:Vector3) : void
      {
         this.§each for class§.copy(param1);
      }
      
      public function §@"9§(param1:Number) : void
      {
         this.§return false§ = param1;
      }
      
      override public function update(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = param2 / 1000;
         if(this.§5!,§ != 0)
         {
            this.§continue null§ += this.§default set throw§ * _loc4_;
            _loc3_ = this.§%d§ * this.§return false§;
            if(this.§continue null§ > _loc3_)
            {
               this.§continue null§ = _loc3_;
            }
            this.§!'§ += this.§5!,§ * this.§continue null§ * _loc4_;
            if(this.§!'§ > this.§if for get§)
            {
               this.§!'§ = this.§if for get§;
            }
            else if(this.§!'§ < this.§9p§)
            {
               this.§!'§ = this.§9p§;
            }
         }
         §9d§.setRotationMatrix(this.§get var in§.rotationX,this.§get var in§.rotationY,this.§get var in§.rotationZ);
         §9!v§.fromAxisAngle(Vector3.X_AXIS,this.§!'§ - Math.PI / 2);
         §9!v§.append(§9d§);
         §9!v§.getEulerAngles(vector);
         var _loc5_:§for for native§ = §function var break§();
         _loc5_.rotationX = vector.x;
         _loc5_.rotationY = vector.y;
         _loc5_.rotationZ = vector.z;
         §9d§.transformVector(this.§each for class§,vector);
         _loc5_.x = vector.x + this.§get var in§.x;
         _loc5_.y = vector.y + this.§get var in§.y;
         _loc5_.z = vector.z + this.§get var in§.z;
      }
      
      public function §5x§(param1:Number) : void
      {
         §function var break§().fov = param1;
      }
   }
}

