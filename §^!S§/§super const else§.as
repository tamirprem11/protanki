package §^!S§
{
   import §9"9§.§!!c§;
   import §9"9§.§"b§;
   import §9"9§.§'!q§;
   import §9"9§.§3!x§;
   import §9"9§.§3"B§;
   import §9"9§.§8"F§;
   import §9"9§.§=!t§;
   import §9"9§.§^!!§;
   import §9"9§.§break use§;
   import §9"9§.§each var if§;
   import §9"9§.§return catch§;
   import §9"9§.§return var include§;
   import §9"9§.§switch var super§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.RayIntersectionData;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.tankskin.§8!x§;
   import flash.geom.Vector3D;
   
   public class §super const else§ implements §<"'§, §^!!§, §3!x§
   {
      public static const §finally var null§:int = 300;
      
      public static const §return for const§:Number = 300;
      
      public static const §class const package§:Number = 200;
      
      public static const §[,§:Number = 30;
      
      private static const §include default§:Number = 50;
      
      private static const §package var throw§:Number = 25;
      
      private static const §'",§:Number = 0.5;
      
      private static const §throw const true§:Number = 1.5;
      
      private static const §function§:Number = 20;
      
      private static const §8f§:int = 500;
      
      private static const §catch set dynamic§:Number = 80;
      
      private static const §2-§:Number = 0.5;
      
      private static const §[T§:Number = 2;
      
      private static const §import const throw§:Number = 100;
      
      private static const §import set for§:int = 2200;
      
      private static const §return for package§:Number = 1;
      
      private static const §&"9§:Vector3D = new Vector3D();
      
      private static const §?M§:Vector3D = new Vector3D();
      
      private static const §]"b§:Vector3 = new Vector3();
      
      private static const §false for while§:Vector3 = new Vector3();
      
      private static const §8!N§:Vector3 = new Vector3();
      
      private static const §+6§:Vector3 = new Vector3();
      
      private static const v:Vector3 = new Vector3();
      
      private var sfxData:§import for else§;
      
      private var battleService:BattleService;
      
      private var §[!0§:§get const final§;
      
      private var §`"T§:§break use§;
      
      private var §break var with§:§8"F§;
      
      public function §super const else§(param1:§import for else§, param2:BattleService)
      {
         super();
         this.sfxData = param1;
         this.battleService = param2;
      }
      
      private static function §throw var§(param1:Vector3, param2:Vector3, param3:Vector3, param4:Vector3) : void
      {
         param4.copy(param1).subtract(param2);
         var _loc5_:Number = param4.dot(param3);
         param4.copy(param2).addScaled(_loc5_,param3);
      }
      
      private static function §<H§(param1:Vector3D, param2:Vector3D, param3:§8!x§) : RayIntersectionData
      {
         var _loc4_:RayIntersectionData = raycast(param3.§+S§(),param1,param2);
         var _loc5_:RayIntersectionData = raycast(param3.§break var include§(),param1,param2);
         if(_loc4_ == null)
         {
            return _loc5_;
         }
         if(_loc5_ == null)
         {
            return _loc4_;
         }
         if(_loc5_.time < _loc4_.time)
         {
            return _loc5_;
         }
         return _loc4_;
      }
      
      private static function raycast(param1:Object3D, param2:Vector3D, param3:Vector3D) : RayIntersectionData
      {
         var _loc4_:Vector3D = param1.globalToLocal(param2);
         var _loc5_:Vector3D = param3.clone();
         _loc5_.x += param1.x;
         _loc5_.y += param1.y;
         _loc5_.z += param1.z;
         var _loc6_:Vector3D = param1.globalToLocal(_loc5_);
         return param1.intersectRay(_loc4_,_loc6_);
      }
      
      private static function §[#§(param1:Vector3) : Vector3
      {
         §+6§.x = Math.atan2(param1.z,Math.sqrt(param1.x * param1.x + param1.y * param1.y)) - Math.PI / 2;
         §+6§.y = 0;
         §+6§.z = -Math.atan2(param1.x,param1.y);
         return §+6§;
      }
      
      public function §else for get§(param1:Vector3, param2:Object3D, param3:int) : void
      {
         if(this.§[!0§ != null)
         {
            this.§[!0§.kill();
         }
         this.§[!0§ = §get const final§(this.battleService.§#!o§().getObject(§get const final§));
         this.§[!0§.init(§finally var null§,§finally var null§,this.sfxData.§`B§,param1,param2,0,this.§set implements§(param3),this);
         this.battleService.§override for native§(this.§[!0§);
         this.§"!Q§(param1,param2,param3);
      }
      
      public function §"!Q§(param1:Vector3, param2:Object3D, param3:int) : void
      {
         if(this.§`"T§ != null)
         {
            this.§`"T§.kill();
         }
         this.§`"T§ = §break use§(this.battleService.§#!o§().getObject(§break use§));
         var _loc4_:§each var if§ = §each var if§(this.battleService.§#!o§().getObject(§each var if§));
         _loc4_.init(param2,param1);
         this.§`"T§.§super each§(_loc4_,param3,this.sfxData.§default const include§);
         this.battleService.§override for native§(this.§`"T§);
      }
      
      private function §set implements§(param1:int) : Number
      {
         return 1000 * this.sfxData.§`B§.§set for in§.length / param1;
      }
      
      public function §import for break§(param1:Vector3) : void
      {
         if(this.§break var with§ != null)
         {
            this.§break var with§.kill();
         }
         var _loc2_:§!!c§ = §!!c§.create(this.sfxData.sound,§return for package§);
         this.§break var with§ = §8"F§.create(param1,_loc2_,0,0,this);
         this.battleService.§!O§(this.§break var with§);
      }
      
      public function §use for import§(param1:Vector3, param2:Vector3, param3:Vector3) : void
      {
         var _loc4_:§^",§ = null;
         var _loc5_:§""Q§ = null;
         if(param2 == null)
         {
            param2 = §0!Z§.§return set with§(param1,param3);
         }
         v.diff(param2,param1);
         if(v.dot(param3) > 0)
         {
            _loc4_ = §^",§(this.battleService.§#!o§().getObject(§^",§));
            _loc4_.init(param1,param2,this.sfxData.§7"^§,§package var throw§,§'",§,§throw const true§,§function§,§8f§);
            this.battleService.§override for native§(_loc4_);
            _loc5_ = §""Q§(this.battleService.§#!o§().getObject(§""Q§));
            _loc5_.init(param1,param2,this.sfxData.§default do§,§catch set dynamic§,§2-§,§[T§,§import const throw§,§import set for§);
            this.battleService.§override for native§(_loc5_);
         }
         this.§const const true§(param1);
         this.§,K§(param1,param2);
      }
      
      private function §,K§(param1:Vector3, param2:Vector3) : void
      {
         var _loc3_:§return var include§ = §return var include§(this.battleService.§#!o§().getObject(§return var include§));
         var _loc4_:§return var include§ = §return var include§(this.battleService.§#!o§().getObject(§return var include§));
         _loc3_.init(param1,0);
         _loc4_.init(param2,0);
         var _loc5_:§return catch§ = §return catch§(this.battleService.§#!o§().getObject(§return catch§));
         _loc5_.init(_loc3_,_loc4_,this.sfxData.§54§);
         this.battleService.§override for native§(_loc5_);
      }
      
      public function §const const true§(param1:Vector3) : void
      {
         var _loc2_:§break use§ = §break use§(this.battleService.§#!o§().getObject(§break use§));
         var _loc3_:§return var include§ = §return var include§(this.battleService.§#!o§().getObject(§return var include§));
         _loc3_.init(param1,0);
         _loc2_.init(_loc3_,this.sfxData.§while const default§);
         this.battleService.§override for native§(_loc2_);
      }
      
      public function §;j§(param1:Vector3, param2:Vector3) : void
      {
         if(param2 != null)
         {
            this.battleService.§catch include§().addDecal(param2,param1,§include default§,this.sfxData.§try for const§);
         }
      }
      
      public function §dynamic const override§() : void
      {
         if(this.§[!0§ != null)
         {
            this.§[!0§.kill();
            this.§[!0§ = null;
         }
         if(this.§`"T§ != null)
         {
            this.§`"T§.kill();
            this.§`"T§ = null;
         }
         if(this.§break var with§ != null)
         {
            this.§break var with§.kill();
            this.§break var with§ = null;
         }
      }
      
      public function §continue const with§(param1:§=!t§) : void
      {
         if(this.§[!0§ == param1)
         {
            this.§[!0§ = null;
         }
      }
      
      public function §null const try§(param1:§3"B§) : void
      {
         if(this.§break var with§ == param1)
         {
            this.§break var with§ = null;
         }
      }
      
      public function §implements const implements§(param1:Vector3, param2:Vector3, param3:Vector.<Vector3>, param4:Vector.<Body>) : void
      {
         var _loc5_:Body = null;
         var _loc6_:Tank = null;
         var _loc7_:RayIntersectionData = null;
         var _loc8_:Object3D = null;
         var _loc9_:Vector3D = null;
         §&"9§.x = param1.x;
         §&"9§.y = param1.y;
         §&"9§.z = param1.z;
         §?M§.x = param2.x - param1.x;
         §?M§.y = param2.y - param1.y;
         §?M§.z = param2.z - param1.z;
         §8!N§.copy(param2).subtract(param1).normalize();
         var _loc10_:int = 0;
         while(_loc10_ < param4.length)
         {
            _loc5_ = param4[_loc10_];
            if(_loc5_ != null && _loc5_.tank != null)
            {
               _loc6_ = _loc5_.tank;
               _loc7_ = §<H§(§&"9§,§?M§,_loc6_.§<M§());
               if(_loc7_ == null)
               {
                  §throw var§(param3[_loc10_],param1,§8!N§,§]"b§);
                  §false for while§.copy(§8!N§);
               }
               else
               {
                  _loc8_ = _loc7_.object;
                  §]"b§.copyFromVector3D(_loc8_.localToGlobal(_loc7_.point));
                  _loc9_ = _loc8_.localToGlobal(_loc7_.face.normal);
                  §false for while§.x = _loc9_.x - _loc8_.x;
                  §false for while§.y = _loc9_.y - _loc8_.y;
                  §false for while§.z = _loc9_.z - _loc8_.z;
               }
               this.§set for null§(§]"b§,§false for while§,§8!N§);
               this.§default set else§(§]"b§,§false for while§);
            }
            _loc10_++;
         }
      }
      
      private function §default set else§(param1:Vector3, param2:Vector3) : void
      {
         var _loc3_:§break use§ = §break use§(this.battleService.§#!o§().getObject(§break use§));
         var _loc4_:§"b§ = §"b§(this.battleService.§#!o§().getObject(§"b§));
         _loc4_.init(param1,param2,50);
         _loc3_.init(_loc4_,this.sfxData.§class for use§);
         this.battleService.§override for native§(_loc3_);
      }
      
      private function §set for null§(param1:Vector3, param2:Vector3, param3:Vector3) : void
      {
         var _loc4_:§switch var super§ = §switch var super§(this.battleService.§#!o§().getObject(§switch var super§));
         _loc4_.init(§return for const§,param1,§[#§(param2),this.sfxData.§override const set§,1);
         this.battleService.§catch include§().§override for native§(_loc4_);
         var _loc5_:§'!q§ = §'!q§(this.battleService.§#!o§().getObject(§'!q§));
         var _loc6_:§return var include§ = §return var include§(this.battleService.§#!o§().getObject(§return var include§));
         _loc6_.init(param1,30);
         _loc5_.init(§class const package§,§class const package§,this.sfxData.§+"P§,0,_loc6_,0.5,0.5,null,0);
         this.battleService.§catch include§().§override for native§(_loc5_);
         var _loc7_:§package var true§ = §package var true§(this.battleService.§#!o§().getObject(§package var true§));
         _loc7_.init(param1,param3,this.sfxData.§import for catch§);
         this.battleService.§catch include§().§override for native§(_loc7_);
      }
      
      public function §default set set§(param1:Vector3, param2:Vector3, param3:Vector3) : void
      {
         §8!N§.copy(param2).subtract(param1).normalize();
         this.§set for null§(param2,param3,§8!N§);
         this.§default set else§(param2,param3);
      }
   }
}

