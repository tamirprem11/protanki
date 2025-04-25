package §+!2§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.core.Shadow;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.tankskin.§5"S§;
   import alternativa.tanks.battle.scene3d.§6R§;
   import flash.geom.ColorTransform;
   import flash.utils.Dictionary;
   import projects.tanks.clients.flash.resources.resource.Tanks3DSResource;
   import projects.tanks.clients.flash.resources.tanks.Tank3D;
   
   public class §`!8§
   {
      [Inject]
      public static var battleService:BattleService;
      
      public static const §8!K§:Matrix4 = new Matrix4();
      
      private static const EXCLUDED:RegExp = /(box.*|fmnt|muzzle.*|laser)/i;
      
      protected var §try for catch§:Vector.<Mesh>;
      
      protected var rootObject:Object3D;
      
      public function §`!8§(param1:Tanks3DSResource)
      {
         var _loc3_:Dictionary = null;
         var _loc2_:Object3D = null;
         _loc3_ = null;
         var _loc4_:int = 0;
         var _loc5_:Mesh = null;
         var _loc6_:Mesh = null;
         var _loc7_:Object3DContainer = null;
         var _loc8_:Object3D = null;
         var _loc9_:Object3DContainer = null;
         this.§try for catch§ = new Vector.<Mesh>();
         super();
         for each(_loc2_ in param1.objects)
         {
            if(_loc2_ is Mesh && !EXCLUDED.test(_loc2_.name))
            {
               this.§try for catch§.push(_loc2_);
            }
         }
         _loc3_ = new Dictionary();
         _loc4_ = int(this.§try for catch§.length - 1);
         while(_loc4_ >= 0)
         {
            _loc5_ = this.§try for catch§[_loc4_];
            _loc6_ = Tank3D.cloneMesh(_loc5_);
            _loc6_.mouseEnabled = false;
            _loc7_ = _loc3_[_loc5_];
            if(_loc7_ != null)
            {
               §dynamic for implements§(_loc7_,_loc6_);
               _loc7_.addChild(_loc6_);
               setPosition(_loc6_,Vector3.ZERO);
            }
            _loc8_ = param1.parents[param1.objects.indexOf(_loc5_)];
            if(_loc8_ != null)
            {
               if(_loc8_ in _loc3_)
               {
                  _loc9_ = _loc3_[_loc8_];
               }
               else
               {
                  _loc9_ = new Object3DContainer();
                  _loc3_[_loc8_] = _loc9_;
               }
               _loc9_.addChild(_loc3_[_loc5_] != null ? _loc3_[_loc5_] : _loc6_);
               _loc9_.mouseEnabled = false;
            }
            this.§try for catch§[this.§try for catch§.indexOf(_loc5_)] = _loc6_;
            _loc4_--;
         }
         this.rootObject = this.§try for catch§[0].parent != null ? this.§try for catch§[0].parent : this.§try for catch§[0];
         this.rootObject.name = §6R§.TANK_PART;
         this.rootObject.mouseEnabled = true;
      }
      
      protected static function §dynamic for implements§(param1:Object3D, param2:Object3D) : void
      {
         param1.x = param2.x;
         param1.y = param2.y;
         param1.z = param2.z;
      }
      
      protected static function setPosition(param1:Object3D, param2:Vector3) : void
      {
         param1.x = param2.x;
         param1.y = param2.y;
         param1.z = param2.z;
      }
      
      public function §extends set static§(param1:Shadow) : void
      {
         var _loc2_:Mesh = null;
         for each(_loc2_ in this.§try for catch§)
         {
            param1.addCaster(_loc2_);
         }
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Mesh = null;
         for each(_loc2_ in this.§try for catch§)
         {
            _loc2_.alpha = param1;
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Mesh = null;
         for each(_loc1_ in this.§try for catch§)
         {
            _loc1_.setMaterialToAllFaces(null);
         }
         this.§try for catch§ = null;
      }
      
      public function §do const function§(param1:TextureMaterial) : void
      {
         var _loc2_:Mesh = null;
         for each(_loc2_ in this.§try for catch§)
         {
            _loc2_.setMaterialToAllFaces(param1);
         }
      }
      
      public function addToScene() : void
      {
         battleService.§catch include§().addObject(this.rootObject);
      }
      
      public function removeFromScene() : void
      {
         battleService.§catch include§().removeObject(this.rootObject);
      }
      
      public function §native for throw§(param1:Matrix4, param2:§5"S§, param3:Number) : void
      {
         §8!K§.setMatrix(param2.§+!v§(),param2.§&![§(),param2.§#[§() + 1,0,0,param3);
         §8!K§.append(param1);
         this.rootObject.x = §8!K§.m03;
         this.rootObject.y = §8!K§.m13;
         this.rootObject.z = §8!K§.m23;
         var _loc4_:Vector3 = §#",§.§for const finally§;
         §8!K§.getEulerAngles(_loc4_);
         this.rootObject.rotationX = _loc4_.x;
         this.rootObject.rotationY = _loc4_.y;
         this.rootObject.rotationZ = _loc4_.z;
      }
      
      public function §0[§() : Object3D
      {
         return this.rootObject;
      }
      
      public function §0"9§() : Object3D
      {
         return this.rootObject;
      }
      
      public function getMeshes() : Vector.<Mesh>
      {
         return this.§try for catch§;
      }
      
      public function setColorTransform(param1:ColorTransform) : void
      {
         var _loc2_:Mesh = null;
         for each(_loc2_ in this.getMeshes())
         {
            _loc2_.colorTransform = param1;
         }
      }
   }
}

