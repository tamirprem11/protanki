package alternativa.tanks.battle
{
   import §9"9§.§'"§;
   import §9"9§.§get for do§;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends var dynamic§;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.utils.GraphicsUtils;
   import alternativa.utils.TextureMaterialRegistry;
   import flash.display.BlendMode;
   import flash.utils.Dictionary;
   import §null var else§.§`"f§;
   import §null var else§.§case for false§;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   
   public class §true const§
   {
      private static const §import const const§:Number = 0.2;
      
      private static const §static const true§:Number = 1;
      
      private static const bias:Vector3 = new Vector3(100,0,0);
      
      private static const §if const function§:Vector3 = new Vector3();
      
      private static const §;n§:Vector3 = new Vector3();
      
      private var battleService:BattleService;
      
      private var dustSize:Number = 0;
      
      private var animation:§package var package§;
      
      private var tanks:Dictionary = new Dictionary();
      
      private var camera:§for for native§;
      
      private var nearDistance:Number;
      
      private var farDistance:Number;
      
      public var enabled:Boolean = true;
      
      private var intensity:Number;
      
      private var §import final§:Number;
      
      public function §true const§(param1:BattleService)
      {
         super();
         this.battleService = param1;
         this.camera = param1.§catch include§().§function var break§();
      }
      
      private static function §use var override§(param1:Vector3, param2:Number) : void
      {
         param1.x += (Math.random() - 0.5) * 2 * param2;
         param1.y += (Math.random() - 0.5) * 2 * param2;
         param1.z += (Math.random() - 0.5) * 2 * param2;
      }
      
      public function init(param1:MultiframeImageResource, param2:TextureMaterialRegistry, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.animation = GraphicsUtils.getTextureAnimationFromResource(param2,param1);
         this.farDistance = param3;
         this.nearDistance = param4;
         this.dustSize = param5;
         this.intensity = param6;
         this.§import final§ = param7;
      }
      
      public function §break const super§(param1:Tank) : void
      {
         this.tanks[param1] = param1.§package set catch§() / 600;
      }
      
      public function §break var case§(param1:Tank) : void
      {
         delete this.tanks[param1];
      }
      
      public function update() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:Tank = null;
         if(this.enabled && this.camera.softTransparency && this.camera.softTransparencyStrength > 0)
         {
            for(_loc1_ in this.tanks)
            {
               _loc2_ = _loc1_ as Tank;
               if(Boolean(_loc2_) && _loc2_.state == §extends var dynamic§.§<"]§)
               {
                  this.§dynamic try§(_loc2_,100,this.§import final§);
               }
            }
         }
      }
      
      public function §dynamic try§(param1:Tank, param2:Number = 100, param3:Number = 0.2) : void
      {
         var _loc4_:Number = Number(this.tanks[param1]);
         var _loc5_:§case for false§ = param1.§ "a§();
         var _loc6_:§case for false§ = param1.§^C§();
         if(_loc5_.§4,§ * _loc6_.§4,§ < 0)
         {
            param2 = 5;
         }
         var _loc7_:Matrix3 = param1.§<J§().baseMatrix;
         bias.x *= -1;
         _loc7_.transformVector(bias,§if const function§);
         this.§+"`§(_loc5_,_loc4_,§if const function§,param2,param3);
         bias.x *= -1;
         _loc7_.transformVector(bias,§if const function§);
         this.§+"`§(_loc6_,_loc4_,§if const function§,param2,param3);
      }
      
      private function §+"`§(param1:§case for false§, param2:Number, param3:Vector3, param4:Number, param5:Number) : void
      {
         var _loc6_:§`"f§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         while(_loc9_ < param1.§const const native§)
         {
            _loc6_ = param1.§@"D§[_loc9_];
            _loc7_ = _loc6_.speed;
            if(_loc7_ > param4 && Math.random() < param5)
            {
               _loc8_ = _loc7_ > 500 ? Number(1) : Number(0.3 + _loc7_ / 712);
               §;n§.copy(_loc6_.§true const else§());
               §use var override§(§;n§,50);
               param3.z = 100;
               §use var override§(param3,20);
               this.§+'§(param2,§;n§,param3,_loc8_);
            }
            _loc9_++;
         }
      }
      
      private function §+'§(param1:Number, param2:Vector3, param3:Vector3, param4:Number) : void
      {
         var _loc5_:§get for do§ = null;
         var _loc6_:§'"§ = null;
         var _loc7_:Number = NaN;
         if(this.enabled && this.camera.softTransparency && this.camera.softTransparencyStrength > 0)
         {
            _loc5_ = §get for do§(this.battleService.§#!o§().getObject(§get for do§));
            _loc5_.init(param2,param3,0.01);
            _loc6_ = §'"§(this.battleService.§#!o§().getObject(§'"§));
            _loc7_ = this.dustSize * param1 * (1 + §static const true§ * Math.random());
            _loc6_.init(_loc7_,_loc7_,this.animation,Math.random() * 2 * Math.PI,_loc5_,0.5,0.5,null,130,BlendMode.NORMAL,this.nearDistance,this.farDistance,this.intensity * param4 * this.camera.softTransparencyStrength,true);
            this.battleService.§catch include§().§override for native§(_loc6_);
         }
      }
   }
}

