package §false for include§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Sorting;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Occluder;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.physics.collision.types.AABB;
   import alternativa.proplib.PropLibRegistry;
   import alternativa.proplib.PropLibrary;
   import alternativa.proplib.objects.PropMesh;
   import alternativa.proplib.objects.PropObject;
   import alternativa.proplib.objects.PropSprite;
   import alternativa.proplib.types.PropData;
   import alternativa.proplib.types.PropGroup;
   import alternativa.tanks.battle.scene3d.§6R§;
   import alternativa.utils.clearDictionary;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   public class §8O§
   {
      private static const §9d§:Matrix3D = new Matrix3D();
      
      private static const §]d§:Vector.<Vector3D> = Vector.<Vector3D>([new Vector3D(),new Vector3D(),new Vector3D(1,1,1)]);
      
      private var §try var finally§:PropLibRegistry;
      
      private var §8!]§:§for var override§ = new §for var override§();
      
      private var objects:Vector.<Object3D> = new Vector.<Object3D>();
      
      private var §2!t§:Vector.<Object3D> = new Vector.<Object3D>();
      
      private var occluders:Vector.<Occluder> = new Vector.<Occluder>();
      
      private var §case for native§:Vector.<Mesh> = new Vector.<Mesh>();
      
      private var §-!5§:Vector.<Object3D> = new Vector.<Object3D>();
      
      private var §-1§:Dictionary = new Dictionary();
      
      private var §null set for§:Dictionary = new Dictionary();
      
      private var §break set var§:AABB = new AABB();
      
      private var §true default§:§finally const each§ = new §finally const each§();
      
      private var §dynamic var default§:Object3D;
      
      private var §[f§:Vector.<Object3D> = new Vector.<Object3D>();
      
      public function §8O§(param1:PropLibRegistry)
      {
         super();
         this.§try var finally§ = param1;
      }
      
      private static function §each for default§(param1:XML) : String
      {
         var _loc2_:String = null;
         var _loc3_:XMLList = param1.elements("texture-name");
         if(_loc3_.length() > 0)
         {
            _loc2_ = _loc3_[0];
         }
         return _loc2_ || PropMesh.DEFAULT_TEXTURE;
      }
      
      private static function §for set const§(param1:XMLList, param2:Vector3D) : void
      {
         var _loc3_:XML = null;
         if(param1.length() > 0)
         {
            _loc3_ = param1[0];
            param2.x = parseFloat(_loc3_.x);
            param2.y = parseFloat(_loc3_.y);
            param2.z = parseFloat(_loc3_.z);
         }
         else
         {
            param2.x = param2.y = param2.z = 0;
         }
      }
      
      public function parse(param1:XML) : void
      {
         this.§case var null§(param1);
         this.§true default§.§break for set§(this.§-!5§);
         if(this.§dynamic var default§ != null)
         {
            (this.§dynamic var default§ as Mesh).calculateVerticesNormalsByAngle(Math.PI / 3,1);
         }
         this.§]$§();
      }
      
      private function §case var null§(param1:XML) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.elements("static-geometry").prop)
         {
            this.parseProp(_loc2_);
         }
      }
      
      private function parseProp(param1:XML) : void
      {
         var _loc2_:PropObject = this.§9![§(param1);
         if(_loc2_ != null)
         {
            if(_loc2_ is PropMesh)
            {
               this.§switch var implements§(param1,PropMesh(_loc2_));
            }
            else if(_loc2_ is PropSprite)
            {
               this.§if for catch§(param1,PropSprite(_loc2_));
            }
         }
      }
      
      private function §9![§(param1:XML) : PropObject
      {
         var _loc2_:String = param1.attribute("library-name");
         var _loc3_:String = param1.attribute("group-name");
         var _loc4_:String = param1.@name;
         var _loc5_:PropLibrary = this.§try var finally§.getLibrary(_loc2_);
         if(_loc5_ == null)
         {
            return null;
         }
         var _loc6_:PropGroup = _loc5_.rootGroup.getGroupByName(_loc3_);
         if(_loc6_ == null)
         {
            return null;
         }
         var _loc7_:PropData = _loc6_.getPropByName(_loc4_);
         if(_loc7_ == null)
         {
            return null;
         }
         return _loc7_.getDefaultState().getDefaultObject();
      }
      
      private function §switch var implements§(param1:XML, param2:PropMesh) : void
      {
         if(param1.@name == "Billboard")
         {
            this.§in var use§(param1,param2);
         }
         else
         {
            this.§+!R§(param1,param2);
         }
      }
      
      private function §in var use§(param1:XML, param2:PropMesh) : void
      {
         var _loc3_:Mesh = null;
         _loc3_ = Mesh(param2.object.clone());
         _loc3_.calculateFacesNormals();
         _loc3_.calculateVerticesNormalsByAngle(0);
         _loc3_.sorting = Sorting.DYNAMIC_BSP;
         _loc3_.name = §6R§.§return set for§;
         this.§case for native§.push(_loc3_);
         var _loc4_:String = §each for default§(param1);
         this.§8!]§.§!!l§(param2,_loc4_,_loc3_,"display");
         var _loc5_:Vector3D = §]d§[0];
         §for set const§(param1.position,_loc5_);
         this.§break set var§.addPoint(_loc5_.x,_loc5_.y,_loc5_.z);
         var _loc6_:Vector3D = §]d§[1];
         §for set const§(param1.rotation,_loc6_);
         _loc3_.x = _loc5_.x;
         _loc3_.y = _loc5_.y;
         _loc3_.z = _loc5_.z;
         _loc3_.rotationZ = _loc6_.z;
         this.objects.push(_loc3_);
      }
      
      private function §+!R§(param1:XML, param2:PropMesh) : void
      {
         var _loc3_:Mesh = Mesh(param2.object.clone());
         var _loc4_:Vector3D = §]d§[0];
         §for set const§(param1.position,_loc4_);
         _loc3_.x = _loc4_.x;
         _loc3_.y = _loc4_.y;
         _loc3_.z = _loc4_.z;
         this.§break set var§.addPoint(_loc4_.x,_loc4_.y,_loc4_.z);
         var _loc5_:Vector3D = §]d§[1];
         §for set const§(param1.rotation,_loc5_);
         _loc3_.rotationZ = _loc5_.z;
         var _loc6_:String = §each for default§(param1);
         this.§-!5§.push(_loc3_);
         this.§-1§[_loc3_] = param2;
         this.§null set for§[_loc3_] = _loc6_;
         this.§@@§(param2,§]d§);
         if(param1.@name == "Elka")
         {
            this.§dynamic var default§ = _loc3_;
         }
      }
      
      private function §@@§(param1:PropMesh, param2:Vector.<Vector3D>) : void
      {
         var _loc3_:Occluder = null;
         var _loc4_:Matrix3D = null;
         var _loc5_:Occluder = null;
         if(param1.occluders != null)
         {
            §9d§.recompose(param2);
            for each(_loc3_ in param1.occluders)
            {
               _loc4_ = _loc3_.matrix;
               _loc4_.append(§9d§);
               _loc5_ = Occluder(_loc3_.clone());
               _loc5_.matrix = _loc4_;
               this.occluders.push(_loc5_);
            }
         }
      }
      
      private function §if for catch§(param1:XML, param2:PropSprite) : void
      {
         var _loc3_:Vector3D = null;
         var _loc4_:Sprite3D = Sprite3D(param2.object.clone());
         if(param1.@name.indexOf("Shar") >= 0)
         {
            this.§[f§.push(_loc4_);
            _loc3_ = §]d§[0];
            §for set const§(param1.position,_loc3_);
            _loc4_.x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.z = _loc3_.z;
            _loc4_.name = param1.@name;
            return;
         }
         _loc4_.shadowMapAlphaThreshold = 0;
         _loc4_.softAttenuation = 80;
         this.§2!t§.push(_loc4_);
         var _loc5_:Vector3D = §]d§[0];
         §for set const§(param1.position,_loc5_);
         _loc4_.x = _loc5_.x;
         _loc4_.y = _loc5_.y;
         _loc4_.z = _loc5_.z;
         _loc4_.width = param2.scale;
         this.§8!]§.§2"V§(param2,_loc4_);
      }
      
      private function §]$§() : void
      {
         var _loc1_:Object3D = null;
         var _loc2_:Mesh = null;
         var _loc3_:BSP = null;
         for each(_loc1_ in this.§-!5§)
         {
            _loc2_ = _loc1_ as Mesh;
            _loc3_ = new BSP();
            _loc3_.name = §6R§.§return set for§;
            _loc3_.createTree(_loc2_,true);
            _loc3_.x = _loc2_.x;
            _loc3_.y = _loc2_.y;
            _loc3_.z = _loc2_.z;
            _loc3_.rotationZ = _loc2_.rotationZ;
            this.§8!]§.§8L§(this.§-1§[_loc2_],this.§null set for§[_loc2_],_loc3_);
            this.objects.push(_loc3_);
            if(_loc2_ == this.§dynamic var default§)
            {
               this.§dynamic var default§ = _loc3_;
            }
         }
         this.§-!5§.length = 0;
         clearDictionary(this.§-1§);
         clearDictionary(this.§null set for§);
      }
      
      public function clear() : void
      {
         this.§try var finally§ = null;
         this.§8!]§.clear();
         this.objects.length = 0;
         this.§2!t§.length = 0;
         this.occluders.length = 0;
         this.§case for native§.length = 0;
         this.§dynamic var default§ = null;
         this.§[f§.length = 0;
      }
      
      public function getObjects() : Vector.<Object3D>
      {
         return this.objects;
      }
      
      public function §7!M§() : Vector.<Object3D>
      {
         return this.§2!t§;
      }
      
      public function §continue set function§() : Vector.<Occluder>
      {
         return this.occluders;
      }
      
      public function §use for finally§() : Vector.<Mesh>
      {
         return this.§case for native§;
      }
      
      public function §8!8§() : Vector.<§>"E§>
      {
         return this.§8!]§.§0"E§();
      }
      
      public function §4"3§() : AABB
      {
         return this.§break set var§;
      }
      
      public function §null const static§() : Object3D
      {
         return this.§dynamic var default§;
      }
      
      public function §false var break§() : Vector.<Object3D>
      {
         return this.§[f§;
      }
   }
}

