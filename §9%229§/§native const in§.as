package §9"9§
{
   import alternativa.engine3d.core.MipMapping;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.math.Vector3;
   import alternativa.physics.collision.CollisionDetector;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.utils.TextureMaterialRegistry;
   import §dynamic package§.§]"P§;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import forms.ranks.BigRankIcon;
   import §native true§.§="h§;
   import §native true§.§finally var function§;
   import §native true§.§use import§;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   
   public class §native const in§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var userInfoService:IUserInfoService;
      
      [Inject]
      public static var §true const function§:TextureMaterialRegistry;
      
      private static const §implements const catch§:Class = §case for if§;
      
      private static const §3"#§:BitmapData = new §implements const catch§().bitmapData;
      
      private static const §true var package§:Class = §="D§;
      
      private static const §1"i§:BitmapData = new §true var package§().bitmapData;
      
      private static const §`Q§:Class = §"!@§;
      
      private static const §?"Z§:BitmapData = new §`Q§().bitmapData;
      
      private static const origin:Vector3 = new Vector3();
      
      private static const §else for return§:Vector3 = new Vector3(0,0,1);
      
      private static const §native for function§:RayHit = new RayHit();
      
      public function §native const in§()
      {
         super();
      }
      
      private static function §^!C§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         origin.reset(param1,param2,param3);
         var _loc5_:CollisionDetector = battleService.§try var final§().§`"N§();
         if(_loc5_.raycastStatic(origin,§else for return§,§]"P§.§return set for§,param4,null,§native for function§))
         {
            return §native for function§.t;
         }
         return param4;
      }
      
      public function §while try§(param1:Tank, param2:int) : void
      {
         var _loc3_:Object3D = param1.§<M§().§break var include§();
         var _loc4_:Number = this.§extends break§(_loc3_.x,_loc3_.y,_loc3_.z);
         this.§true for try§(_loc4_,_loc3_);
         this.createLabel(param1.tankData.userName,_loc4_,param2,_loc3_);
         this.§4!L§(_loc4_,_loc3_);
         this.§5"[§(_loc3_);
      }
      
      private function §extends break§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = 500;
         var _loc5_:Number = 2000;
         var _loc6_:Number = §^!C§(param1,param2,param3,_loc5_);
         return Math.max(_loc4_,_loc6_);
      }
      
      private function §true for try§(param1:Number, param2:Object3D) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§finally var function§ = null;
         var _loc6_:int = 6;
         var _loc7_:Number = 90;
         var _loc8_:Number = 0;
         var _loc9_:Number = Math.PI * 2 / _loc6_;
         var _loc10_:TextureMaterial = §true const function§.getMaterial(§3"#§);
         var _loc11_:int = 0;
         while(_loc11_ < _loc6_)
         {
            _loc3_ = Math.sin(_loc8_) * _loc7_;
            _loc4_ = Math.cos(_loc8_) * _loc7_;
            _loc5_ = §finally var function§(battleService.§#!o§().getObject(§finally var function§));
            _loc5_.init(500,200,30,param1,0.8,0.5,_loc3_,_loc4_,-50,param2,_loc10_);
            battleService.§catch include§().§override for native§(_loc5_);
            _loc8_ += _loc9_;
            _loc11_++;
         }
      }
      
      private function createLabel(param1:String, param2:Number, param3:int, param4:Object3D) : void
      {
         var _loc5_:BigRankIcon = new BigRankIcon();
         var _loc6_:Boolean = userInfoService.hasPremium(param1);
         _loc5_.init(_loc6_,param3);
         var _loc7_:BitmapData = new BitmapData(_loc5_.width,_loc5_.height,true,0);
         _loc7_.draw(_loc5_);
         var _loc8_:TextureMaterial = new TextureMaterial(_loc7_,false,true,MipMapping.PER_PIXEL,1);
         var _loc9_:§use import§ = §use import§(battleService.§#!o§().getObject(§use import§));
         _loc9_.init(500,270,270,0,param2 * 0.8,param2 * 0.15,0.35,0,0,50,param4,_loc8_,BlendMode.NORMAL);
         battleService.§catch include§().§override for native§(_loc9_);
      }
      
      private function §4!L§(param1:Number, param2:Object3D) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:TextureMaterial = null;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:§use import§ = null;
         if(GPUCapabilities.gpuEnabled)
         {
            _loc3_ = 15;
            _loc4_ = 100;
            _loc5_ = §true const function§.getMaterial(§1"i§);
            _loc6_ = 0;
            while(_loc6_ < _loc3_)
            {
               _loc7_ = Math.PI * 2 * Math.random();
               _loc8_ = Math.sin(_loc7_) * _loc4_;
               _loc9_ = Math.cos(_loc7_) * _loc4_;
               _loc10_ = -110 * _loc6_ - 50;
               _loc11_ = §use import§(battleService.§#!o§().getObject(§use import§));
               _loc11_.init(400,150,150,_loc7_,param1 * 0.7,param1 * 0.15,0.7,_loc8_,_loc9_,_loc10_,param2,_loc5_,BlendMode.ADD);
               battleService.§catch include§().§override for native§(_loc11_);
               _loc6_++;
            }
         }
      }
      
      private function §5"[§(param1:Object3D) : void
      {
         var _loc2_:TextureMaterial = §true const function§.getMaterial(§?"Z§);
         var _loc3_:§="h§ = §="h§(battleService.§#!o§().getObject(§="h§));
         _loc3_.init(900,220,3,true,param1,_loc2_);
         battleService.§catch include§().§override for native§(_loc3_);
      }
   }
}

