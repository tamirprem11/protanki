package alternativa.tanks.battle.objects.tank.tankskin
{
   import §+!2§.§;!A§;
   import §+!2§.§`!8§;
   import §+!2§.§super for in§;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Shadow;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.battle.scene3d.§6R§;
   import alternativa.tanks.models.battle.battlefield.§;0§;
   import alternativa.tanks.models.tank.§throw for try§;
   import alternativa.utils.TextureMaterialRegistry;
   import §catch var use§.§?!X§;
   import §catch var use§.§catch for for§;
   import flash.geom.ColorTransform;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.clients.flash.commons.models.coloring.IColoring;
   import projects.tanks.clients.flash.resources.object3ds.IObject3DS;
   import projects.tanks.clients.flash.resources.resource.Tanks3DSResource;
   
   public class §8!x§
   {
      private static var §while const case§:TextureMaterialRegistry;
      
      private static const §true var default§:int = 1;
      
      private static const §9"Y§:int = 2;
      
      private static const §do for else§:ColorTransform = new ColorTransform();
      
      private static const §const const use§:§throw for try§ = new §throw for try§();
      
      private static var §9Y§:Dictionary = new Dictionary();
      
      private static var §>"7§:Number = 0.4;
      
      private static var §throw var get§:Matrix4 = new Matrix4();
      
      private static var §8!K§:Matrix4 = new Matrix4();
      
      private static var vector:Vector3 = new Vector3();
      
      private var leftTrackSkin:§,!O§;
      
      private var rightTrackSkin:§,!O§;
      
      public var §null set do§:Number = 0;
      
      private var §0c§:§3B§;
      
      private var §true set set§:§3B§;
      
      private var §0b§:§5"S§;
      
      private var §4!C§:Mesh;
      
      private var §throw for catch§:§super for in§;
      
      private var §0!C§:Mesh;
      
      private var §return for static§:§`!8§;
      
      private var §,!l§:ColorTransform;
      
      private var §get for else§:ColorTransform;
      
      private var §final var in§:ColorTransform = new ColorTransform();
      
      private var §>!X§:ColorTransform = new ColorTransform();
      
      private var §throw var import§:ColorTransform = new ColorTransform();
      
      public var shadow:Shadow;
      
      private var §override set else§:§;0§;
      
      private var registry:TextureMaterialRegistry;
      
      private var §>!%§:§catch for for§ = new §?!X§();
      
      private var §return const do§:Shadow;
      
      public function §8!x§(param1:IGameObject, param2:IGameObject, param3:IGameObject, param4:ImageResource)
      {
         super();
         if(§while const case§ == null)
         {
            §while const case§ = TextureMaterialRegistry(OSGi.getInstance().getService(TextureMaterialRegistry));
         }
         this.§override set else§ = §;0§(OSGi.getInstance().getService(BattleService));
         var _loc5_:Tanks3DSResource = IObject3DS(param1.adapt(IObject3DS)).getResource3DS();
         this.§0b§ = §const const use§.§8+§(_loc5_);
         var _loc6_:Tanks3DSResource = IObject3DS(param2.adapt(IObject3DS)).getResource3DS();
         this.§throw for catch§ = §const const use§.§super do§(_loc6_);
         this.§4!C§ = this.cloneMesh(this.§0b§.mesh);
         this.§return for static§ = new §`!8§(_loc6_);
         this.§return for static§.setColorTransform(this.§>!X§);
         this.createTrackSkins(this.§4!C§);
         var _loc7_:IColoring = IColoring(param3.adapt(IColoring));
         this.§0c§ = this.§>!%§.§continue for dynamic§(this,_loc7_);
         this.§true set set§ = this.§>!%§.§&!p§(this,param4);
         this.§,!l§ = new ColorTransform(1,0.75,0.6,1,-16,-66,-66);
         this.§get for else§ = new ColorTransform(0.8,1,1.2,1,40,60,70);
         this.§while var implements§();
      }
      
      private static function §continue native§(param1:ColorTransform, param2:String, param3:ColorTransform, param4:ColorTransform, param5:Number) : void
      {
         var _loc6_:Number = param4[param2] - param3[param2];
         param1[param2] = param3[param2] + Math.abs(param5) * _loc6_;
      }
      
      private static function copyColorTransform(param1:ColorTransform, param2:ColorTransform) : void
      {
         param2.redMultiplier = param1.redMultiplier;
         param2.greenMultiplier = param1.greenMultiplier;
         param2.blueMultiplier = param1.blueMultiplier;
         param2.alphaMultiplier = param1.alphaMultiplier;
         param2.redOffset = param1.redOffset;
         param2.greenOffset = param1.greenOffset;
         param2.blueOffset = param1.blueOffset;
         param2.alphaOffset = param1.alphaOffset;
      }
      
      private function §while var implements§() : void
      {
         this.§return const do§ = new Shadow(128,8,100,1,1,1118498,0.6);
         this.§return const do§.direction = new Vector3D(0,0,-1);
         this.§return const do§.offset = 90;
         this.§return const do§.backFadeRange = 90;
         this.§return const do§.addCaster(this.§4!C§);
         this.§return for static§.§extends set static§(this.§return const do§);
      }
      
      public function addToScene() : void
      {
         var _loc1_:§,6§ = this.§override set else§.§catch include§();
         _loc1_.addObject(this.§4!C§);
         _loc1_.§?"J§(this.§return for static§);
         _loc1_.§while get§(this.§return const do§);
      }
      
      public function removeFromScene() : void
      {
         var _loc1_:§,6§ = this.§override set else§.§catch include§();
         _loc1_.removeObject(this.§4!C§);
         _loc1_.§^"N§(this.§return for static§);
         _loc1_.§native import§(this.§return const do§);
      }
      
      public function §native for throw§(param1:Number) : void
      {
         if(this.§0b§ != null && this.§throw for catch§ != null)
         {
            §throw var get§.setMatrix(this.§4!C§.x,this.§4!C§.y,this.§4!C§.z,this.§4!C§.rotationX,this.§4!C§.rotationY,this.§4!C§.rotationZ);
            this.§return for static§.§native for throw§(§throw var get§,this.§0b§,param1);
         }
      }
      
      public function §false var try§(param1:Vector3, param2:Vector3) : void
      {
         if(this.§0b§ != null)
         {
            this.§4!C§.x = param1.x;
            this.§4!C§.y = param1.y;
            this.§4!C§.z = param1.z;
            this.§4!C§.rotationX = param2.x;
            this.§4!C§.rotationY = param2.y;
            this.§4!C§.rotationZ = param2.z;
         }
      }
      
      public function dispose() : void
      {
         this.§4!C§.setMaterialToAllFaces(null);
         this.§return for static§.destroy();
         this.§<O§(null,null);
         this.§include var default§(this.§0c§);
         this.§include var default§(this.§true set set§);
         this.§0c§ = null;
         this.§true set set§ = null;
         this.§4!C§ = null;
         this.§return for static§ = null;
         this.leftTrackSkin = null;
         this.rightTrackSkin = null;
      }
      
      private function §include var default§(param1:§3B§) : void
      {
         §while const case§.releaseMaterial(param1.§2!K§);
         §while const case§.releaseMaterial(param1.§super for while§);
         §while const case§.releaseMaterial(param1.§@"c§);
         §while const case§.releaseMaterial(param1.§for var const§);
      }
      
      public function §`k§() : void
      {
         this.§4!C§.setMaterialToAllFaces(this.§0c§.§2!K§);
         this.§return for static§.§do const function§(this.§0c§.§super for while§);
         this.§<O§(this.§0c§.§@"c§,this.§0c§.§for var const§);
      }
      
      public function §3!?§() : void
      {
         this.§4!C§.setMaterialToAllFaces(this.§true set set§.§2!K§);
         this.§return for static§.§do const function§(this.§true set set§.§super for while§);
         this.§<O§(this.§true set set§.§2!K§,this.§true set set§.§2!K§);
         this.§5a§();
      }
      
      private function §<O§(param1:Material, param2:Material) : void
      {
         this.leftTrackSkin.§9!§(param1);
         this.rightTrackSkin.§9!§(param2);
      }
      
      public function §5a§() : void
      {
         this.§null set do§ = 0;
         this.§final var in§.redMultiplier = 1;
         this.§final var in§.greenMultiplier = 1;
         this.§final var in§.blueMultiplier = 1;
         this.§final var in§.redOffset = 0;
         this.§final var in§.greenOffset = 0;
         this.§final var in§.blueOffset = 0;
         copyColorTransform(this.§final var in§,this.§>!X§);
      }
      
      public function §=",§(param1:Number) : void
      {
         var _loc2_:ColorTransform = null;
         if(param1 == 0)
         {
            _loc2_ = §do for else§;
         }
         else if(param1 < 0)
         {
            _loc2_ = this.§get for else§;
         }
         else
         {
            _loc2_ = this.§,!l§;
         }
         §continue native§(this.§throw var import§,"redMultiplier",§do for else§,_loc2_,param1);
         §continue native§(this.§throw var import§,"blueMultiplier",§do for else§,_loc2_,param1);
         §continue native§(this.§throw var import§,"greenMultiplier",§do for else§,_loc2_,param1);
         §continue native§(this.§throw var import§,"redOffset",§do for else§,_loc2_,param1);
         §continue native§(this.§throw var import§,"blueOffset",§do for else§,_loc2_,param1);
         §continue native§(this.§throw var import§,"greenOffset",§do for else§,_loc2_,param1);
         §continue native§(this.§>!X§,"redMultiplier",this.§>!X§,this.§throw var import§,0.03);
         §continue native§(this.§>!X§,"blueMultiplier",this.§>!X§,this.§throw var import§,0.03);
         §continue native§(this.§>!X§,"greenMultiplier",this.§>!X§,this.§throw var import§,0.03);
         §continue native§(this.§>!X§,"redOffset",this.§>!X§,this.§throw var import§,0.03);
         §continue native§(this.§>!X§,"blueOffset",this.§>!X§,this.§throw var import§,0.03);
         §continue native§(this.§>!X§,"greenOffset",this.§>!X§,this.§throw var import§,0.03);
      }
      
      public function setAlpha(param1:Number) : void
      {
         this.§return for static§.alpha = param1;
         this.§4!C§.alpha = param1;
         this.§return const do§.alpha = param1 * 0.6;
      }
      
      public function §2"d§() : Number
      {
         return this.§4!C§.alpha;
      }
      
      public function §+S§() : Mesh
      {
         return this.§4!C§;
      }
      
      public function §break var include§() : Object3D
      {
         return this.§return for static§.§0[§();
      }
      
      public function §0[§() : Object3D
      {
         return this.§return for static§.§0[§();
      }
      
      public function §0"9§() : Object3D
      {
         return this.§return for static§.§0"9§();
      }
      
      public function §8+§() : §5"S§
      {
         return this.§0b§;
      }
      
      public function §super do§() : §super for in§
      {
         return this.§throw for catch§;
      }
      
      private function cloneMesh(param1:Mesh) : Mesh
      {
         var _loc2_:Mesh = Mesh(param1.clone());
         _loc2_.name = §6R§.TANK_PART;
         _loc2_.colorTransform = this.§>!X§;
         _loc2_.shadowMapAlphaThreshold = 0.1;
         _loc2_.calculateVerticesNormalsBySmoothingGroups(0.01);
         return _loc2_;
      }
      
      public function §while var break§() : Vector.<§;!A§>
      {
         return this.§throw for catch§.§<!V§();
      }
      
      public function §package var false§(param1:Number, param2:Number) : void
      {
         this.leftTrackSkin.move(param1);
         this.rightTrackSkin.move(param2);
      }
      
      private function createTrackSkins(param1:Mesh) : void
      {
         var _loc2_:Face = null;
         this.leftTrackSkin = new §,!O§();
         this.rightTrackSkin = new §,!O§();
         for each(_loc2_ in param1.faces)
         {
            if(_loc2_.material.name == "tracks")
            {
               this.addFaceToTrackSkin(_loc2_);
            }
         }
         this.leftTrackSkin.init();
         this.rightTrackSkin.init();
      }
      
      private function addFaceToTrackSkin(param1:Face) : void
      {
         var _loc2_:Vertex = param1.vertices[0];
         if(_loc2_.x < 0)
         {
            this.leftTrackSkin.addFace(param1);
         }
         else
         {
            this.rightTrackSkin.addFace(param1);
         }
      }
      
      public function §default const each§(param1:Vector3) : void
      {
         var _loc2_:Matrix4 = §`!8§.§8!K§;
         var _loc3_:Object3D = this.§return for static§.§0[§();
         _loc2_.setMatrix(_loc3_.x,_loc3_.y,_loc3_.z,_loc3_.rotationX,_loc3_.rotationY,_loc3_.rotationZ);
         _loc2_.transformVector(this.§throw for catch§.§`"B§,param1);
      }
   }
}

