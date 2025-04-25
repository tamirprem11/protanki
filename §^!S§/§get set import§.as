package §^!S§
{
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.models.weapons.targeting.§native var import§;
   
   public class §get set import§
   {
      public var §final set super§:Vector3 = new Vector3();
      
      public var §"!,§:Vector3 = new Vector3();
      
      public var hasStaticHit:Boolean;
      
      public var targets:Vector.<Body> = new Vector.<Body>();
      
      public var §catch for function§:Vector.<Vector3> = new Vector.<Vector3>();
      
      public var shotDirection:Vector3 = new Vector3();
      
      public function §get set import§()
      {
         super();
      }
      
      public function §4C§(param1:§native var import§) : void
      {
         var _loc2_:RayHit = null;
         var _loc3_:RayHit = null;
         if(this.hasStaticHit = param1.hasStaticHit())
         {
            _loc3_ = param1.§&!w§();
            this.§final set super§.copy(_loc3_.position);
            this.§"!,§.copy(_loc3_.normal);
         }
         this.shotDirection.copy(param1.§9G§());
         this.targets.length = 0;
         this.§catch for function§.length = 0;
         for each(_loc2_ in param1.§0"V§())
         {
            this.targets.push(_loc2_.shape.body);
            this.§catch for function§.push(_loc2_.position);
         }
      }
      
      public function §76§(param1:§,"T§) : void
      {
         var _loc2_:int = int(param1.targets.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.targets[_loc3_] = param1.targets[_loc3_];
            this.§catch for function§[_loc3_] = param1.§catch for function§[_loc3_];
            _loc3_++;
         }
         this.targets.length = _loc2_;
         this.§catch for function§.length = _loc2_;
         this.hasStaticHit = param1.hasStaticHit;
         if(this.hasStaticHit)
         {
            this.§final set super§.copy(param1.§final set super§);
            this.§"!,§.copy(param1.§"!,§);
         }
      }
      
      public function §get static§(param1:Vector3, param2:Vector3) : void
      {
         this.hasStaticHit = true;
         this.§final set super§.copy(param1);
         this.§"!,§.copy(param2);
      }
      
      public function §try var try§() : Vector3
      {
         return this.hasStaticHit ? this.§final set super§ : null;
      }
   }
}

