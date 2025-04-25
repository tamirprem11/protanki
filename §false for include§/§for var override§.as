package §false for include§
{
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.proplib.objects.PropMesh;
   import alternativa.proplib.objects.PropObject;
   import alternativa.proplib.objects.PropSprite;
   import alternativa.utils.clearDictionary;
   import flash.utils.Dictionary;
   
   public class §for var override§
   {
      private var §]!X§:Dictionary = new Dictionary();
      
      private var §^g§:Dictionary = new Dictionary();
      
      private var §include for for§:Dictionary = new Dictionary();
      
      public function §for var override§()
      {
         super();
      }
      
      public function §8L§(param1:PropMesh, param2:String, param3:BSP) : void
      {
         var _loc4_:§switch const§ = this.§static set for§(param1,param2);
         _loc4_.§each set use§(param3);
      }
      
      private function §static set for§(param1:PropMesh, param2:String) : §switch const§
      {
         return §switch const§(this.§super const false§(this.§]!X§,param1,param2,§switch const§));
      }
      
      public function §!!l§(param1:PropMesh, param2:String, param3:Mesh, param4:String = null) : void
      {
         var _loc5_:§continue for finally§ = this.§5!c§(param1,param2);
         _loc5_.add(param3,param4);
      }
      
      private function §5!c§(param1:PropMesh, param2:String) : §continue for finally§
      {
         return §continue for finally§(this.§super const false§(this.§^g§,param1,param2,§continue for finally§));
      }
      
      public function §2"V§(param1:PropSprite, param2:Sprite3D) : void
      {
         var _loc3_:§!!C§ = this.§2"[§(param1);
         _loc3_.§2"V§(param2);
      }
      
      private function §2"[§(param1:PropSprite) : §!!C§
      {
         return §!!C§(this.§super const false§(this.§include for for§,param1,null,§!!C§));
      }
      
      private function §super const false§(param1:Dictionary, param2:PropObject, param3:String, param4:Class) : §>"E§
      {
         var _loc5_:Dictionary = param1[param2];
         if(_loc5_ == null)
         {
            _loc5_ = new Dictionary();
            param1[param2] = _loc5_;
         }
         var _loc6_:§>"E§ = _loc5_[param3];
         if(_loc6_ == null)
         {
            _loc6_ = new param4(param2,param3);
            _loc5_[param3] = _loc6_;
         }
         return _loc6_;
      }
      
      public function §0"E§() : Vector.<§>"E§>
      {
         var _loc1_:Vector.<§>"E§> = new Vector.<§>"E§>();
         this.§case for static§(this.§]!X§,_loc1_);
         this.§case for static§(this.§^g§,_loc1_);
         this.§case for static§(this.§include for for§,_loc1_);
         return _loc1_;
      }
      
      private function §case for static§(param1:Dictionary, param2:Vector.<§>"E§>) : void
      {
         var _loc3_:Dictionary = null;
         var _loc4_:§>"E§ = null;
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in _loc3_)
            {
               param2.push(_loc4_);
            }
         }
      }
      
      public function clear() : void
      {
         this.§-_§(this.§^g§);
         this.§-_§(this.§]!X§);
         this.§-_§(this.§include for for§);
      }
      
      private function §-_§(param1:Dictionary) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in param1)
         {
            clearDictionary(param1[_loc2_]);
            delete param1[_loc2_];
         }
      }
   }
}

