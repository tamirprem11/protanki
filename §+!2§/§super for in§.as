package §+!2§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.objects.tank.tankskin.§set for case§;
   import alternativa.tanks.utils.DataUnitValidator;
   import alternativa.tanks.utils.DataValidatorType;
   import alternativa.tanks.utils.Vector3Validator;
   import projects.tanks.clients.flash.resources.resource.Tanks3DSResource;
   
   public class §super for in§ extends §set for case§ implements DataUnitValidator
   {
      private static const §break var in§:RegExp = /box.*/i;
      
      private static const EXCLUDED:RegExp = /(box.*|fmnt|muzzle.*)/i;
      
      public var §`"B§:Vector3;
      
      public var §9!M§:Vector.<Vector3>;
      
      public var §return get§:Vector3;
      
      private var §=";§:Vector.<Vector3Validator>;
      
      private var §0!a§:Vector.<§;!A§>;
      
      public var meshes:Vector.<Mesh> = new Vector.<Mesh>();
      
      public function §super for in§(param1:Tanks3DSResource)
      {
         super(param1);
         this.§else if§(param1);
         this.§`"B§ = §include const true§(param1);
         this.§9!M§ = this.§final const return§(param1);
         this.§return get§ = this.§true implements§(param1);
         this.§0!a§ = this.§'p§(param1);
         this.§?r§();
      }
      
      private static function §include const true§(param1:Tanks3DSResource) : Vector3
      {
         var _loc2_:Object3D = null;
         var _loc3_:Vector.<Object3D> = param1.getObjectsByName(/fmnt/i);
         if(_loc3_ != null)
         {
            _loc2_ = _loc3_[0];
            return new Vector3(_loc2_.x,_loc2_.y,_loc2_.z);
         }
         throw new Error();
      }
      
      private function §else if§(param1:Tanks3DSResource) : void
      {
         var _loc2_:Object3D = null;
         for each(_loc2_ in param1.objects)
         {
            if(_loc2_ is Mesh && !EXCLUDED.test(_loc2_.name))
            {
               this.meshes.push(initMesh(Mesh(_loc2_)));
            }
         }
      }
      
      private function §'p§(param1:Tanks3DSResource) : Vector.<§;!A§>
      {
         var _loc2_:Object3D = null;
         var _loc3_:Mesh = null;
         var _loc4_:Vector.<Object3D> = param1.getObjectsByName(§break var in§);
         var _loc5_:Vector.<§;!A§> = new Vector.<§;!A§>();
         if(_loc4_ != null && _loc4_.length != 0)
         {
            for each(_loc2_ in _loc4_)
            {
               _loc5_.push(new §;!A§(_loc2_));
            }
         }
         else
         {
            for each(_loc3_ in this.meshes)
            {
               _loc5_.push(new §;!A§(_loc3_));
            }
         }
         return _loc5_;
      }
      
      private function §final const return§(param1:Tanks3DSResource) : Vector.<Vector3>
      {
         var §8!V§:Tanks3DSResource = param1;
         var §dynamic var with§:Object3D = null;
         var §include var in§:Tanks3DSResource = §8!V§;
         var §9!M§:Vector.<Vector3> = new Vector.<Vector3>();
         var §each var final§:Vector.<Object3D> = §include var in§.getObjectsByName(/muzzle.*/);
         if(§each var final§ != null)
         {
            §each var final§.sort(function(param1:Object3D, param2:Object3D):Number
            {
               if(param1.name <= param2.name)
               {
                  return -1;
               }
               return 1;
            });
            for each(§dynamic var with§ in §each var final§)
            {
               §9!M§.push(new Vector3(§dynamic var with§.x,§dynamic var with§.y,§dynamic var with§.z));
            }
            return §9!M§;
         }
         throw new Error();
      }
      
      private function §true implements§(param1:Tanks3DSResource) : Vector3
      {
         var _loc2_:Object3D = null;
         var _loc3_:Vector.<Object3D> = param1.getObjectsByName(/laser/i);
         if(_loc3_ != null)
         {
            _loc2_ = _loc3_[0];
            return new Vector3(_loc2_.x,_loc2_.y,_loc2_.z);
         }
         return this.§9!M§[0];
      }
      
      private function §?r§() : void
      {
         this.§=";§ = new Vector.<Vector3Validator>(this.§9!M§.length);
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!M§.length)
         {
            this.§=";§[_loc1_] = new Vector3Validator(this.§9!M§[_loc1_]);
            _loc1_++;
         }
      }
      
      public function hasIncorrectData() : Boolean
      {
         var _loc1_:Vector3Validator = null;
         for each(_loc1_ in this.§=";§)
         {
            if(!_loc1_.isValid())
            {
               return true;
            }
         }
         return false;
      }
      
      public function getType() : int
      {
         return DataValidatorType.MEMHACK_MUZZLE_POSITION;
      }
      
      public function §<!V§() : Vector.<§;!A§>
      {
         return this.§0!a§;
      }
   }
}

