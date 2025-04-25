package §["E§
{
   import §9"9§.§!!c§;
   import §9"9§.§'!q§;
   import §9"9§.§,!"§;
   import §9"9§.§8"F§;
   import §9"9§.§]"L§;
   import §9"9§.§break use§;
   import §9"9§.§do for§;
   import §9"9§.§return var include§;
   import §<"N§.§if continue§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.utils.GraphicsUtils;
   import alternativa.types.Long;
   import flash.media.Sound;
   import §get set for§.§7x§;
   import §get set for§.§final get§;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §1g§ extends §final get§ implements §7x§, ObjectLoadListener, ObjectUnloadListener, §%!=§
   {
      [Inject]
      public static var §true const function§:EffectsMaterialRegistry;
      
      [Inject]
      public static var battleService:BattleService;
      
      private static const §6;§:Number = 800;
      
      private static const §[U§:Number = 400;
      
      private static const §get set super§:Number = 1000;
      
      private static const §set const throw§:Number = 600;
      
      private static const §switch for extends§:Number = 800;
      
      private static const § Y§:Number = 200;
      
      private static const §in const while§:Number = -2000;
      
      private static const §static var const§:int = 200;
      
      private static const §function set final§:Number = 0.4;
      
      private const §native for function§:RayHit = new RayHit();
      
      private const position:Vector3 = new Vector3();
      
      private const eulerAngles:Vector3 = new Vector3();
      
      private const velocity:Vector3 = new Vector3();
      
      private const matrix:Matrix3 = new Matrix3();
      
      private var §!X§:§%!D§;
      
      public function §1g§()
      {
         super();
      }
      
      private static function §^! §(param1:Tank) : Number
      {
         var _loc2_:Mesh = param1.§<M§().§+S§();
         var _loc3_:Number = _loc2_.boundMaxX - _loc2_.boundMinX;
         var _loc4_:Number = _loc2_.boundMaxY - _loc2_.boundMinY;
         var _loc5_:Number = _loc2_.boundMaxZ - _loc2_.boundMinZ;
         var _loc6_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_ + _loc5_ * _loc5_);
         return _loc6_ / §set const throw§;
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded() : void
      {
         var _loc1_:§package var package§ = this.getTextureAnimation(MultiframeImageResource(ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry)).getResource(Long.getLong(0,450080))),§6;§);
         var _loc2_:§package var package§ = this.getTextureAnimation(MultiframeImageResource(ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry)).getResource(Long.getLong(0,644720))),§get set super§);
         var _loc3_:§package var package§ = this.getTextureAnimation(MultiframeImageResource(ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry)).getResource(Long.getLong(0,839177))),§[U§);
         var _loc4_:§%!D§ = new §%!D§(_loc1_,_loc2_,_loc3_);
         this.§!X§ = _loc4_;
      }
      
      private function getTextureAnimation(param1:MultiframeImageResource, param2:Number) : §package var package§
      {
         var _loc3_:§package var package§ = GraphicsUtils.getTextureAnimationFromResource(§true const function§,param1);
         _loc3_.material.resolution = param2 / param1.frameWidth;
         return _loc3_;
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded() : void
      {
         this.§include var default§(this.§!X§);
      }
      
      public function §finally break§(param1:IGameObject, param2:Tank, param3:§,!"§) : void
      {
         var _loc4_:§%!D§ = this.§!X§;
         var _loc5_:§if continue§ = battleService.§#!o§();
         var _loc6_:Number = §^! §(param2);
         this.§0!_§(param2,_loc5_,_loc6_,_loc4_);
         this.§[!<§(_loc5_,_loc6_,_loc4_);
         this.§null for switch§(_loc5_,_loc6_,_loc4_);
         this.§false true§(_loc5_,param3);
         this.§default var throw§(param2);
      }
      
      private function §default var throw§(param1:Tank) : void
      {
         var _loc2_:§!!c§ = null;
         var _loc3_:Object3D = null;
         var _loc4_:Sound = battleService.§try if§();
         if(_loc4_ != null)
         {
            _loc2_ = §!!c§.create(_loc4_,§function set final§);
            _loc3_ = param1.§<M§().§break var include§();
            battleService.§!O§(§8"F§.create(new Vector3(_loc3_.x,_loc3_.y,_loc3_.z),_loc2_,0,0));
         }
      }
      
      private function §false true§(param1:§if continue§, param2:§,!"§) : void
      {
         var _loc3_:§return var include§ = §return var include§(param1.getObject(§return var include§));
         var _loc4_:§break use§ = §break use§(param1.getObject(§break use§));
         _loc3_.init(this.position,0);
         _loc4_.init(_loc3_,param2);
         battleService.§override for native§(_loc4_);
      }
      
      private function §include var default§(param1:§%!D§) : void
      {
         §true const function§.releaseMaterial(param1.§7!e§.material);
         §true const function§.releaseMaterial(param1.§,h§.material);
         §true const function§.releaseMaterial(param1.§+!q§.material);
      }
      
      private function §0!_§(param1:Tank, param2:§if continue§, param3:Number, param4:§%!D§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Vector3 = null;
         var _loc8_:Number = NaN;
         var _loc9_:Vector3 = null;
         var _loc10_:§do for§ = null;
         var _loc11_:Vector3 = new Vector3(0,0,-1);
         var _loc12_:Number = 500;
         this.position.copy(param1.§<J§().state.position);
         if(battleService.§try var final§().§`"N§().raycastStatic(this.position,_loc11_,255,_loc12_,null,this.§native for function§))
         {
            this.§native for function§.position.z += 10;
            _loc5_ = §get set super§;
            _loc6_ = 200;
            if(this.§native for function§.t > _loc6_)
            {
               _loc5_ *= (_loc12_ - this.§native for function§.t) / (_loc12_ - _loc6_);
            }
            _loc7_ = this.§native for function§.normal;
            _loc8_ = Math.acos(_loc7_.z);
            _loc9_ = new Vector3(-_loc7_.y,_loc7_.x,0);
            _loc9_.normalize();
            this.matrix.fromAxisAngle(_loc9_,_loc8_);
            this.matrix.getEulerAngles(this.eulerAngles);
            _loc10_ = §do for§(param2.getObject(§do for§));
            _loc10_.init(param3 * _loc5_,this.§native for function§.position,this.eulerAngles,param4.§,h§,1);
            battleService.§catch include§().§override for native§(_loc10_);
         }
      }
      
      private function §[!<§(param1:§if continue§, param2:Number, param3:§%!D§) : void
      {
         this.position.z += 50;
         var _loc4_:§return var include§ = §return var include§(param1.getObject(§return var include§));
         _loc4_.init(this.position,§static var const§);
         var _loc5_:§'!q§ = §'!q§(param1.getObject(§'!q§));
         var _loc6_:Number = §6;§ * param2;
         _loc5_.init(_loc6_,_loc6_,param3.§7!e§,Math.random() * 2 * Math.PI,_loc4_);
         battleService.§catch include§().§override for native§(_loc5_);
      }
      
      private function §null for switch§(param1:§if continue§, param2:Number, param3:§%!D§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:§]"L§ = null;
         var _loc6_:§'!q§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         while(_loc8_ < 3)
         {
            _loc4_ = §switch for extends§ + Math.random() * § Y§;
            this.velocity.x = _loc4_ * (1 - 2 * Math.random());
            this.velocity.y = _loc4_ * (1 - 2 * Math.random());
            this.velocity.z = _loc4_ * 0.5 * (1 + Math.random());
            _loc5_ = §]"L§(param1.getObject(§]"L§));
            _loc5_.init(this.position,this.velocity,§in const while§);
            _loc6_ = §'!q§(param1.getObject(§'!q§));
            _loc7_ = §[U§ * param2;
            _loc6_.init(_loc7_,_loc7_,param3.§+!q§,Math.random() * 2 * Math.PI,_loc5_);
            battleService.§catch include§().§override for native§(_loc6_);
            _loc8_++;
         }
      }
   }
}

