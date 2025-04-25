package §7![§
{
   import § "V§.§?!l§;
   import § "V§.§implements var native§;
   import §5"D§.§function set if§;
   import §7!-§.§?"[§;
   import §9"9§.§'!q§;
   import §9"9§.§0"Q§;
   import §9"9§.§;"e§;
   import §9"9§.§break use§;
   import §9"9§.§return var include§;
   import §<"N§.§default const static§;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.engine3d.§2!W§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.utils.MathUtils;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import §true for package§.§5"b§;
   import §with const else§.§final var false§;
   
   public class §false for break§ extends §function set if§
   {
      private var weakening:§5"b§;
      
      private var sfxData:§<!&§;
      
      private var callback:§7!D§;
      
      private var §extends const do§:§final var false§;
      
      private var impactForce:Number;
      
      private var sprite:§2!W§;
      
      private var §else try§:§break use§;
      
      private var §0"T§:§;"e§;
      
      private var §#!<§:§?"[§;
      
      public function §false for break§(param1:§default const static§)
      {
         super(param1);
         this.sprite = new §2!W§(§true var native§.§9"?§,§true var native§.§9"?§);
         this.sprite.§]"B§ = true;
      }
      
      override protected function §`!t§() : §implements var native§
      {
         return §?!l§.INSTANCE;
      }
      
      public function init(param1:Number, param2:§final var false§, param3:§<!&§, param4:§5"b§, param5:§7!D§, param6:§?"[§) : void
      {
         this.impactForce = param1;
         this.§extends const do§ = param2;
         this.weakening = param4;
         this.sfxData = param3;
         this.callback = param5;
         this.§#!<§ = param6;
         this.sprite.§-c§(param3.§var var switch§);
         this.sprite.§set const const§(this.sprite.getNumFrames() * Math.random());
         this.sprite.alpha = 1;
         this.sprite.rotation = MathUtils.PI2 * Math.random();
         this.§else try§ = §break use§(battleService.§#!o§().getObject(§break use§));
         this.§0"T§ = §;"e§(battleService.§#!o§().getObject(§;"e§));
         this.§else try§.init(this.§0"T§,param3.§1"g§,§break use§.§>E§,true);
      }
      
      override public function §for var true§(param1:§'!L§, param2:Vector3, param3:Body, param4:int = -1) : void
      {
         super.§for var true§(param1,param2,param3,param4);
         battleService.§catch include§().addObject(this.sprite);
         battleService.§override for native§(this.§else try§);
      }
      
      override protected function §false set§() : Number
      {
         return this.§extends const do§.speed;
      }
      
      override protected function §import var in§() : Number
      {
         return this.weakening.§6u§();
      }
      
      override protected function §`"'§(param1:Body, param2:Vector3, param3:Vector3, param4:Number, param5:int) : void
      {
         var _loc6_:Tank = null;
         super.§`"'§(param1,param2,param3,param4,param5);
         var _loc7_:Number = this.weakening.§3;§(param4);
         this.§catch set if§(param2,_loc7_);
         var _loc8_:Boolean = true;
         if(§#",§.§extends for use§(param1))
         {
            _loc6_ = param1.tank;
            _loc6_.§class set set§(param2,param3,this.impactForce * _loc7_);
            if(this.callback)
            {
               this.callback.§ "R§(§throw for implements§(),param1,param2);
            }
         }
         else
         {
            if(Boolean(this.callback) && _loc8_)
            {
               this.callback.§return set use§(§throw for implements§(),param2);
            }
            this.§'!1§(param2);
         }
         this.destroy();
      }
      
      override public function render(param1:int, param2:int) : void
      {
         var _loc3_:Number = param2 / thousandth.getInt();
         this.sprite.update(_loc3_);
         this.sprite.x = §@"0§.x;
         this.sprite.y = §@"0§.y;
         this.sprite.z = §@"0§.z;
         this.sprite.rotation -= 3 * _loc3_;
         var _loc4_:Number = this.§extends const do§.distance - §switch if§;
         if(_loc4_ < §true var native§.§each set false§)
         {
            this.sprite.alpha = _loc4_ / §true var native§.§each set false§;
         }
         this.§0"T§.setPosition(§@"0§);
      }
      
      override protected function destroy() : void
      {
         super.destroy();
         battleService.§catch include§().removeObject(this.sprite);
         this.§extends const do§ = null;
         this.callback = null;
         §include const use§ = null;
         this.weakening = null;
         this.sfxData = null;
         this.sprite.material = null;
         this.sprite.colorTransform = null;
         this.§else try§.kill();
         this.§else try§ = null;
         this.§0"T§ = null;
      }
      
      override protected function §use const default§() : Number
      {
         return this.§extends const do§.shellRadius;
      }
      
      private function §catch set if§(param1:Vector3, param2:Number) : void
      {
         var _loc3_:§return var include§ = §return var include§(battleService.§#!o§().getObject(§return var include§));
         _loc3_.init(param1,§true var native§.§#"E§);
         var _loc4_:Number = §true var native§.§include const default§ * (1 + param2) / 2;
         var _loc5_:§'!q§ = §'!q§(battleService.§#!o§().getObject(§'!q§));
         _loc5_.init(_loc4_,_loc4_,this.sfxData.§,_§,MathUtils.PI2 * Math.random(),_loc3_,0.5,0.5);
         battleService.§override for native§(_loc5_);
         this.§@!b§(param1);
      }
      
      private function §@!b§(param1:Vector3) : void
      {
         var _loc2_:§break use§ = §break use§(battleService.§#!o§().getObject(§break use§));
         var _loc3_:§return var include§ = §return var include§(battleService.§#!o§().getObject(§return var include§));
         _loc3_.init(param1,§true var native§.§#"E§);
         _loc2_.init(_loc3_,this.sfxData.§do var override§);
         battleService.§override for native§(_loc2_);
      }
      
      private function §'!1§(param1:Vector3) : void
      {
         var _loc2_:§0"Q§ = null;
         if(GPUCapabilities.gpuEnabled)
         {
            _loc2_ = §0"Q§(battleService.§#!o§().getObject(§0"Q§));
            _loc2_.init(param1,this.sfxData.§try for const§,§#!!§,§true var native§.§false var import§,§true var native§.§3!G§,§true var native§.§else for use§);
            battleService.§override for native§(_loc2_);
         }
      }
   }
}

