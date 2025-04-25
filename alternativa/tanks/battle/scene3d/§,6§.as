package alternativa.tanks.battle.scene3d
{
   import §!"0§.§switch var try§;
   import §+!2§.§`!8§;
   import §9"9§.§=!t§;
   import alternativa.engine3d.containers.KDContainer;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.core.RayIntersectionData;
   import alternativa.engine3d.core.Shadow;
   import alternativa.engine3d.core.View;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Decal;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.§8"A§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§continue for for§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.§true const§;
   import alternativa.tanks.battle.§var set set§;
   import alternativa.tanks.camera.§<n§;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.camera.§in const false§;
   import alternativa.utils.TextureMaterialRegistry;
   import §catch const package§.§&"1§;
   import §default var get§.§-"8§;
   import §default var get§.§3!O§;
   import §false for include§.§true for true§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   import §in set super§.§implements const use§;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   
   public class §,6§
   {
      private static const §return var throw§:int = 10;
      
      private static const §case var return§:int = 20000;
      
      private static const §get const try§:Vector3D = new Vector3D();
      
      private static const §!!f§:Vector3D = new Vector3D();
      
      private var rootContainer:Object3DContainer;
      
      private var §,N§:Object3DContainer;
      
      private var mainContainer:Object3DContainer;
      
      private var §var const implements§:Object3DContainer;
      
      public var §0n§:Object3DContainer;
      
      private var §use for throw§:§-"8§ = new §-"8§();
      
      private var §use const throw§:§-"8§;
      
      private const §@I§:Dictionary = new Dictionary();
      
      private const §static set if§:Dictionary = new Dictionary();
      
      private var camera:§for for native§;
      
      private var §]9§:Vector.<§in include§> = Vector.<§in include§>([new §in include§(),new §in include§()]);
      
      private var §#!&§:§<n§ = §in const false§.INSTANCE;
      
      private var effects:Vector.<§=!t§> = new Vector.<§=!t§>();
      
      private var §class const§:int;
      
      private var §^b§:§var set set§;
      
      private const §true var break§:§implements const use§ = new §implements const use§();
      
      private const §`'§:Dictionary = new Dictionary();
      
      private var §9!J§:§override for finally§;
      
      private const §5"0§:§8"A§ = new §8"A§(100);
      
      private var §"<§:§]!b§;
      
      private var fog:§<"8§;
      
      private var §function for do§:§static for if§;
      
      private var lighting:§-8§;
      
      private var §with extends§:§continue for for§;
      
      public const §>"$§:§switch var try§ = new §switch var try§();
      
      private var stage:Stage;
      
      private var §'"[§:§true const§;
      
      private var §case for native§:§true for true§;
      
      private var §true const function§:TextureMaterialRegistry;
      
      private var §case for return§:Number;
      
      private var §switch for super§:§61§;
      
      private var §case for var§:Boolean;
      
      private var tanks:Vector.<Tank> = new Vector.<Tank>();
      
      public function §,6§(param1:Stage, param2:TextureMaterialRegistry, param3:Number)
      {
         super();
         this.§true const function§ = param2;
         this.stage = param1;
         this.§case for return§ = param3;
         this.§!&§();
         this.§const null§();
         this.§catch for set§();
         this.§case for native§ = new §true for true§();
         this.fog = new §<"8§(this.camera);
         this.§function for do§ = new §static for if§(this.camera);
         this.lighting = new §-8§(this.camera);
      }
      
      public function §+g§() : §3!O§
      {
         return this.§use const throw§;
      }
      
      public function §in case§() : §3!O§
      {
         return this.§use for throw§;
      }
      
      public function §2v§(param1:View) : void
      {
         this.camera.view = param1;
      }
      
      public function §return const break§(param1:Number, param2:uint, param3:Number, param4:Number, param5:Number) : void
      {
      }
      
      public function §switch while§() : void
      {
         this.§@!X§(this.§>"$§,0);
      }
      
      public function §!<§(param1:BattleService, param2:§&"1§) : void
      {
         this.§'"[§ = new §true const§(param1);
         this.§'"[§.init(param2.dustParticle,this.§true const function§,param2.dustFarDistance,param2.dustNearDistance,param2.dustSize,param2.alpha,param2.§import final§);
      }
      
      public function §implements var else§() : §true const§
      {
         return this.§'"[§;
      }
      
      public function §^"A§() : void
      {
         this.§use const else§(this.§>"$§,0);
         this.§>"$§.restore();
      }
      
      public function §#!C§(param1:Boolean, param2:String) : void
      {
         if(param1)
         {
            if(this.§with extends§ == null)
            {
               this.§<"5§(true);
               this.§?'§(true);
               this.§5!p§(true);
               this.§dynamic while§(true);
               this.§case set import§(true);
               this.§while§(true);
               this.§3!t§(true);
               this.§3!D§(true);
               this.§set set with§(true);
               this.§with extends§ = new §continue for for§();
               this.§with extends§.§in for case§(this.stage,this.camera,param2);
            }
         }
         else if(this.§with extends§ != null)
         {
            this.§with extends§.stop();
            this.§with extends§ = null;
         }
      }
      
      public function §static var in§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.fog.setup(param1,param2,param3,param4);
      }
      
      public function §false const super§(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.lighting.setup(param1,param2,param3,param4);
      }
      
      public function §<"5§(param1:Boolean) : void
      {
         if(GPUCapabilities.gpuEnabled)
         {
            if(param1)
            {
               this.§function for do§.enable();
            }
            else
            {
               this.§function for do§.disable();
            }
         }
      }
      
      public function §?'§(param1:Boolean) : void
      {
         if(GPUCapabilities.gpuEnabled)
         {
            if(param1)
            {
               this.lighting.§=!W§();
            }
            else
            {
               this.lighting.§set const true§();
            }
         }
      }
      
      public function §5!p§(param1:Boolean) : void
      {
         if(GPUCapabilities.gpuEnabled)
         {
            if(param1)
            {
               this.fog.enable();
            }
            else
            {
               this.fog.disable();
            }
         }
      }
      
      public function §#"0§() : void
      {
         this.§5!p§(this.camera.fogAlpha == 0);
      }
      
      public function §else var switch§(param1:§]!b§) : void
      {
         this.§"<§ = param1;
      }
      
      public function §else var use§(param1:Dictionary) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in this.§`'§)
         {
            param1[_loc2_] = true;
         }
      }
      
      public function §5!O§(param1:Object3D) : void
      {
         this.§@I§[param1] = true;
      }
      
      public function §3"E§(param1:Object3D) : void
      {
         delete this.§@I§[param1];
      }
      
      public function § !n§() : Dictionary
      {
         return this.§@I§;
      }
      
      public function §5"<§() : Dictionary
      {
         return this.§static set if§;
      }
      
      private function §!&§() : void
      {
         this.rootContainer = new Object3DContainer();
         this.rootContainer.addChild(this.§,N§ = new Object3DContainer());
         this.rootContainer.addChild(this.mainContainer = new Object3DContainer());
         this.rootContainer.addChild(this.§var const implements§ = new Object3DContainer());
         this.§use const throw§ = new §-"8§(this.§var const implements§);
      }
      
      private function §const null§() : void
      {
         this.camera = new §for for native§();
         this.camera.ssaoRadius = 400;
         this.camera.ssaoRange = 1200;
         this.camera.ssaoColor = 0;
         this.camera.ssaoAlpha = 1.4;
         this.camera.addToDebug(Debug.BOUNDS,Object3D);
         this.camera.addToDebug(Debug.EDGES,Object3D);
         this.rootContainer.addChild(this.camera);
      }
      
      public function §[!p§(param1:uint) : void
      {
         this.camera.ssaoColor = param1;
      }
      
      private function §catch for set§() : void
      {
         if(GPUCapabilities.gpuEnabled)
         {
            this.§9!J§ = new §override for finally§(§case var return§);
            this.§@!X§(this.§9!J§,0);
         }
      }
      
      public function §while get§(param1:Shadow) : void
      {
         this.§function for do§.add(param1);
      }
      
      public function §native import§(param1:Shadow) : void
      {
         this.§function for do§.remove(param1);
      }
      
      public function §?"J§(param1:§`!8§) : void
      {
         this.addObject(param1.§0[§());
      }
      
      public function §^"N§(param1:§`!8§) : void
      {
         this.removeObject(param1.§0[§());
      }
      
      public function §^,§(param1:Boolean) : void
      {
         this.camera.debug = param1;
      }
      
      public function isDebug() : Boolean
      {
         return this.camera.debug;
      }
      
      public function §var const continue§() : void
      {
         this.§case for var§ = true;
      }
      
      public function §=o§() : void
      {
         this.§case for var§ = false;
      }
      
      public function §3-§(param1:§var set set§) : void
      {
         this.§^b§ = param1;
      }
      
      public function §break const super§(param1:Tank) : void
      {
         this.tanks.push(param1);
      }
      
      public function §break var case§(param1:Tank) : void
      {
         var _loc2_:int = int(this.tanks.indexOf(param1));
         if(_loc2_ != -1)
         {
            this.tanks.splice(_loc2_,1);
         }
      }
      
      public function §@!X§(param1:§set while§, param2:int = 0) : void
      {
         var _loc3_:§in include§ = this.§]9§[param2];
         _loc3_.§@!X§(param1);
      }
      
      public function §use const else§(param1:§set while§, param2:int = 0) : void
      {
         var _loc3_:§in include§ = this.§]9§[param2];
         _loc3_.§use const else§(param1);
      }
      
      public function §override for native§(param1:§=!t§) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError();
         }
         var _loc2_:* = this.§class const§++;
         this.effects[_loc2_] = param1;
         param1.§var set var§(this.§use for throw§);
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         if(this.§case for var§)
         {
            this.§5"0§.update();
            this.§function for do§.§static for true§(this.§5"0§.§return const catch§());
            this.§'"[§.update();
            this.§"!G§(param1,param2);
            this.§#!&§.update(param1,param2);
            this.camera.§set throw§();
            this.§>"M§(param1,param2);
            this.§dynamic const default§(param2);
            if(this.§^b§ != null)
            {
               this.§^b§.§2;§();
            }
            _loc3_ = this.camera.shadowMap != null ? Number(this.camera.shadowMapStrength) : Number(0);
            if(this.camera.directionalLight != null)
            {
               this.camera.directionalLight.intensity = this.§case for return§ + _loc3_ * (1 - this.§case for return§);
            }
            this.camera.render();
         }
      }
      
      private function §"!G§(param1:int, param2:int) : void
      {
         var _loc3_:Tank = null;
         for each(_loc3_ in this.tanks)
         {
            _loc3_.render(param1,param2);
         }
      }
      
      private function §dynamic const default§(param1:int) : void
      {
         var _loc2_:§=!t§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§class const§)
         {
            _loc2_ = this.effects[_loc3_];
            if(!_loc2_.play(param1,this.camera))
            {
               _loc2_.destroy();
               var _loc4_:*;
               this.effects[_loc4_ = _loc3_--] = this.effects[--this.§class const§];
               this.effects[this.§class const§] = null;
            }
            _loc3_++;
         }
      }
      
      public function §function var break§() : §for for native§
      {
         return this.camera;
      }
      
      public function §super finally§(param1:Object3D) : void
      {
         if(this.§,N§.numChildren > 0)
         {
            this.§,N§.removeChildAt(0);
         }
         this.§,N§.addChild(param1);
      }
      
      public function §while§(param1:Boolean) : void
      {
         this.camera.ssao = param1;
      }
      
      public function §continue set switch§(param1:Object3DContainer) : void
      {
         if(this.§0n§ != null)
         {
            this.mainContainer.removeChild(this.§0n§);
            this.§0n§ = null;
         }
         this.§use for throw§.§ "+§(param1);
         this.§0n§ = param1;
         if(this.§0n§ != null)
         {
            this.mainContainer.addChild(this.§0n§);
            this.camera.farClipping = 1.5 * this.§0e§(this.§0n§);
         }
      }
      
      public function §0e§(param1:Object3D) : Number
      {
         var _loc2_:Number = param1.boundMaxX - param1.boundMinX;
         var _loc3_:Number = param1.boundMaxY - param1.boundMinY;
         var _loc4_:Number = param1.boundMaxZ - param1.boundMinZ;
         return Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_ + _loc4_ * _loc4_);
      }
      
      public function addObject(param1:Object3D) : void
      {
         this.§use for throw§.addChild(param1);
         if(param1.name != §6R§.§return set for§ && param1.name != §6R§.TANK_PART)
         {
            this.§static set if§[param1] = true;
         }
      }
      
      public function removeObject(param1:Object3D) : void
      {
         this.§use for throw§.removeChild(param1);
         if(param1.name != §6R§.§return set for§ && param1.name != §6R§.TANK_PART)
         {
            delete this.§static set if§[param1];
         }
      }
      
      public function raycast(param1:Vector3, param2:Vector3, param3:Dictionary, param4:Camera3D = null) : RayIntersectionData
      {
         var _loc5_:Object3D = null;
         §#",§.§throw var extends§(param1,§get const try§);
         §#",§.§throw var extends§(param2,§!!f§);
         var _loc6_:RayIntersectionData = this.§0n§.intersectRay(§get const try§,§!!f§,param3,param4);
         if(_loc6_)
         {
            _loc5_ = _loc6_.object;
            while(_loc5_ != null && !_loc5_.mouseEnabled)
            {
               _loc5_ = _loc5_.parent;
            }
            _loc6_.object = _loc5_;
         }
         return _loc6_;
      }
      
      public function §7!h§(param1:Boolean) : void
      {
         var _loc2_:Object3D = this.§static for each§();
         if(_loc2_ != null)
         {
            _loc2_.visible = param1;
         }
      }
      
      public function §5"B§() : Boolean
      {
         var _loc1_:Object3D = this.§static for each§();
         if(_loc1_ != null)
         {
            return _loc1_.visible;
         }
         return false;
      }
      
      public function addDecal(param1:Vector3, param2:Vector3, param3:Number, param4:TextureMaterial, param5:§switch null§ = null) : void
      {
         var _loc6_:Decal = this.createDecal(param1,param2,param3,param4,param5);
         if(_loc6_ != null)
         {
            this.§true var break§.put(_loc6_);
            if(this.§true var break§.getSize() > §return var throw§)
            {
               this.§9!J§.add(this.§true var break§.pop());
            }
         }
      }
      
      public function §=!g§(param1:Vector3, param2:Vector3, param3:Number, param4:TextureMaterial) : Decal
      {
         return this.createDecal(param1,param2,param3,param4);
      }
      
      private function createDecal(param1:Vector3, param2:Vector3, param3:Number, param4:TextureMaterial, param5:§switch null§ = null) : Decal
      {
         var _loc6_:Decal = null;
         if(param5 == null)
         {
            param5 = §switch null§.§override var return§;
         }
         if(GPUCapabilities.gpuEnabled && this.§0n§ is KDContainer)
         {
            _loc6_ = this.§"<§.createDecal(param1,param2,param3,param4,KDContainer(this.§0n§),param5);
            this.§use for throw§.addChildAt(_loc6_,0);
            this.§`'§[_loc6_] = true;
            this.§5!O§(_loc6_);
            this.§static set if§[_loc6_] = true;
            return _loc6_;
         }
         return null;
      }
      
      public function §try const in§(param1:Decal) : void
      {
         if(param1 != null && GPUCapabilities.gpuEnabled)
         {
            this.§use for throw§.removeChild(param1);
            this.§3"E§(param1);
            delete this.§static set if§[param1];
            delete this.§`'§[param1];
         }
      }
      
      public function §4!x§(param1:§<n§) : void
      {
         this.§#!&§ = param1;
      }
      
      public function §null catch§() : §<n§
      {
         return this.§#!&§;
      }
      
      private function §static for each§() : Object3D
      {
         if(this.§,N§.numChildren == 0)
         {
            return null;
         }
         return this.§,N§.getChildAt(0);
      }
      
      private function §>"M§(param1:int, param2:int) : void
      {
         var _loc3_:§in include§ = null;
         for each(_loc3_ in this.§]9§)
         {
            _loc3_.render(param1,param2);
         }
      }
      
      public function shutdown() : void
      {
         if(this.§#!&§ != null)
         {
            this.§#!&§.deactivate();
         }
         this.§#!C§(false,"");
         this.§each const true§(this.§,N§);
         this.§each const true§(this.mainContainer);
         this.§each const true§(this.§var const implements§);
         this.§each const true§(this.rootContainer);
         this.§>"$§.clear();
      }
      
      private function §each const true§(param1:Object3DContainer) : void
      {
         while(param1.numChildren > 0)
         {
            param1.removeChildAt(0);
         }
      }
      
      public function §dynamic while§(param1:Boolean) : void
      {
         this.camera.softTransparency = param1;
      }
      
      public function §case set import§(param1:Boolean) : void
      {
         this.§implements var else§().enabled = param1;
      }
      
      public function §1r§() : void
      {
         this.lighting.toggle();
      }
      
      public function §34§(param1:Mesh) : void
      {
         this.§case for native§.add(param1);
      }
      
      public function §while set import§(param1:BitmapData) : void
      {
         this.§case for native§.setImage(param1);
      }
      
      public function §3!t§(param1:Boolean) : void
      {
         if(GPUCapabilities.gpuEnabled)
         {
            if(param1)
            {
               this.lighting.§3!t§();
            }
            else
            {
               this.lighting.§94§();
            }
         }
      }
      
      public function §3!D§(param1:Boolean) : void
      {
         if(GPUCapabilities.gpuEnabled)
         {
            this.camera.deferredLighting = param1;
         }
      }
      
      public function §set set with§(param1:Boolean) : void
      {
         if(GPUCapabilities.gpuEnabled)
         {
            this.camera.view.antiAliasEnabled = param1;
         }
      }
      
      public function §>$§() : Number
      {
         return this.§0n§ == null ? Number(0) : Number(this.§0n§.boundMinZ);
      }
   }
}

