package §;",§
{
   import § "V§.§?!l§;
   import § "V§.§implements var native§;
   import §5"D§.§for const import§;
   import §7!-§.§?"[§;
   import §9"9§.§!!c§;
   import §9"9§.§%"^§;
   import §9"9§.§'!q§;
   import §9"9§.§8"F§;
   import §9"9§.§;"e§;
   import §9"9§.§break use§;
   import §9"9§.§return var include§;
   import §<"N§.§default const static§;
   import §<"N§.§if continue§;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.collision.CollisionDetector;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.engine3d.§2!W§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.shared.§override for class§;
   import §dynamic package§.§]"P§;
   import flash.media.Sound;
   import §package function§.§case const while§;
   import §true for package§.§5"b§;
   
   public class §-!s§ extends §for const import§
   {
      public static const §9"?§:Number = 300;
      
      public static const §include const default§:Number = 266;
      
      public static const §package var throw§:Number = 100;
      
      private static const §switch set throw§:Number = 80;
      
      private static const §native var extends§:Number = 300;
      
      private static const §8!T§:int = 6;
      
      private static const §"!,§:Vector3 = new Vector3();
      
      private static const §'!Z§:Vector3 = new Vector3();
      
      private static const §final set super§:Vector3 = new Vector3();
      
      private var sfxData:§1n§;
      
      private var callback:§if for§;
      
      private var impactPoints:Vector.<Vector3>;
      
      private var §return set const§:§case const while§;
      
      private var sprite:§2!W§;
      
      private var weakening:§5"b§;
      
      private var §native set function§:int;
      
      private var §final set const§:§include const null§;
      
      private var impactForce:Number;
      
      private var §implements include§:§break use§;
      
      private var §0"T§:§;"e§;
      
      private var §#!<§:§?"[§;
      
      public function §-!s§(param1:§default const static§)
      {
         super(param1);
         this.sprite = new §2!W§(§9"?§,§9"?§);
         this.sprite.§]"B§ = true;
         this.§final set const§ = new §include const null§(§package var throw§,§native var extends§);
         this.impactPoints = new Vector.<Vector3>();
      }
      
      override protected function §`!t§() : §implements var native§
      {
         return §?!l§.INSTANCE;
      }
      
      public function init(param1:Number, param2:§case const while§, param3:§1n§, param4:§5"b§, param5:§if for§, param6:§?"[§) : void
      {
         this.impactForce = param1;
         this.§return set const§ = param2;
         this.sfxData = param3;
         this.weakening = param4;
         this.callback = param5;
         this.§#!<§ = param6;
         this.sprite.rotation = 2 * Math.PI * Math.random();
         this.sprite.§-c§(param3.§var var switch§);
         this.sprite.§set const const§(this.sprite.getNumFrames() * Math.random());
         this.§final set const§.setMaterialToAllFaces(param3.§0!D§);
         this.§native set function§ = 0;
         this.impactPoints.length = 0;
         this.§implements include§ = §break use§(battleService.§#!o§().getObject(§break use§));
         this.§0"T§ = §;"e§(battleService.§#!o§().getObject(§;"e§));
         this.§implements include§.init(this.§0"T§,param3.§3_§,§break use§.§>E§,true);
      }
      
      override public function §for var true§(param1:§'!L§, param2:Vector3, param3:Body, param4:int = -1) : void
      {
         super.§for var true§(param1,param2,param3,param4);
         var _loc5_:§,6§ = battleService.§catch include§();
         _loc5_.addObject(this.sprite);
         _loc5_.addObject(this.§final set const§);
         _loc5_.§5!O§(this.§final set const§);
         _loc5_.§override for native§(this.§implements include§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Body = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Vector3 = null;
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         if(§switch if§ >= this.§return set const§.shotDistance)
         {
            this.destroy();
            return;
         }
         var _loc9_:CollisionDetector = battleService.§try var final§().§`"N§();
         var _loc10_:Number = this.§return set const§.shellSpeed * param1;
         §8!j§.copy(§;!e§);
         while(_loc10_ > 0)
         {
            _loc3_ = -1;
            _loc4_ = _loc10_;
            if(_loc9_.raycast(§;!e§,§set for final§,§]"P§.WEAPON,_loc10_,this,§2!5§))
            {
               _loc2_ = §2!5§.shape.body;
               _loc3_ = §2!5§.t;
               if(§#",§.§extends for use§(_loc2_))
               {
                  this.impactPoints.push(§2!5§.position.clone().add(§2!5§.normal));
                  this.§null var finally§(_loc2_,§2!5§.position,§set for final§,§switch if§ + _loc3_,this.impactPoints);
                  return;
               }
               _loc4_ = _loc3_;
               §final set super§.copy(§2!5§.position);
               §"!,§.copy(§2!5§.normal);
            }
            _loc5_ = 0;
            while(_loc5_ < §8!T§)
            {
               _loc6_ = §,"C§[_loc5_];
               if(_loc9_.raycast(_loc6_,§set for final§,§]"P§.WEAPON,_loc4_,this,§2!5§))
               {
                  _loc2_ = §2!5§.shape.body;
                  §]h§.copy(§;!e§).addScaled(§2!5§.t,§set for final§);
                  _loc7_ = §#",§.§extends for use§(_loc2_) && !this.§#"h§(§;!e§,§]h§);
                  if(_loc7_)
                  {
                     this.impactPoints.push(§]h§.clone());
                     this.§null var finally§(_loc2_,§]h§,§set for final§,§switch if§ + §2!5§.t,this.impactPoints);
                     return;
                  }
               }
               _loc6_.addScaled(_loc4_,§set for final§);
               _loc5_++;
            }
            if(_loc3_ > -1)
            {
               §switch if§ += _loc3_;
               _loc10_ -= _loc3_;
               if(this.§native set function§ >= this.§return set const§.maxRicochetCount)
               {
                  _loc8_ = this.weakening.§3;§(§switch if§);
                  this.impactPoints.push(§final set super§.clone());
                  this.§&!7§(§"!,§,_loc8_,_loc2_);
                  return;
               }
               ++this.§native set function§;
               §;!e§.addScaled(_loc3_,§set for final§);
               this.§-!i§(§"!,§);
               this.§^">§(§;!e§);
               this.impactPoints.push(§;!e§.clone());
            }
            else
            {
               §switch if§ += _loc10_;
               §;!e§.addScaled(_loc10_,§set for final§);
               _loc10_ = 0;
            }
         }
      }
      
      private function §&!7§(param1:Vector3, param2:Number = 1, param3:Body = null) : void
      {
         var _loc4_:Vector3 = this.impactPoints[this.impactPoints.length - 1];
         _loc4_.addScaled(0.1,param1);
         var _loc5_:Boolean = true;
         this.§catch set if§(_loc4_);
         if(Boolean(this.callback) && _loc5_)
         {
            this.callback.§return set use§(§throw for implements§(),this.impactPoints);
         }
         this.destroy();
      }
      
      private function §#"h§(param1:Vector3, param2:Vector3) : Boolean
      {
         return §override for class§.§[c§(param1,param2);
      }
      
      private function §-!i§(param1:Vector3) : void
      {
         §;!e§.addScaled(0.1,param1);
         §set for final§.addScaled(-2 * §set for final§.dot(param1),param1);
         §dynamic var§(§;!e§,§set for final§);
      }
      
      override public function render(param1:int, param2:int) : void
      {
         this.sprite.x = §@"0§.x;
         this.sprite.y = §@"0§.y;
         this.sprite.z = §@"0§.z;
         this.sprite.update(param2 / 1000);
         var _loc3_:Number = this.weakening.§3;§(§switch if§);
         var _loc4_:Number = §9"?§ * _loc3_;
         this.sprite.width = _loc4_;
         this.sprite.height = _loc4_;
         this.sprite.rotation -= 0.003 * param2;
         var _loc5_:Vector3 = battleService.§catch include§().§function var break§().position;
         §%"^§.§true var throw§(this.§final set const§,§@"0§,§set for final§,_loc5_);
         var _loc6_:Number = §;!e§.x - _loc5_.x;
         var _loc7_:Number = §;!e§.y - _loc5_.y;
         var _loc8_:Number = §;!e§.z - _loc5_.z;
         var _loc9_:Number = _loc6_ * _loc6_ + _loc7_ * _loc7_ + _loc8_ * _loc8_;
         if(_loc9_ > 0.00001)
         {
            _loc9_ = 1 / Math.sqrt(_loc9_);
            _loc6_ *= _loc9_;
            _loc7_ *= _loc9_;
            _loc8_ *= _loc9_;
         }
         var _loc10_:Number = _loc6_ * §set for final§.x + _loc7_ * §set for final§.y + _loc8_ * §set for final§.z;
         if(_loc10_ < 0)
         {
            _loc10_ = -_loc10_;
         }
         if(_loc10_ > 0.5)
         {
            this.§final set const§.alpha = 2 * (1 - _loc10_) * _loc3_;
         }
         else
         {
            this.§final set const§.alpha = _loc3_;
         }
         this.§0"T§.setPosition(§@"0§);
      }
      
      override protected function destroy() : void
      {
         super.destroy();
         var _loc1_:§,6§ = battleService.§catch include§();
         _loc1_.removeObject(this.sprite);
         this.sprite.material = null;
         _loc1_.removeObject(this.§final set const§);
         this.§final set const§.setMaterialToAllFaces(null);
         _loc1_.§3"E§(this.§final set const§);
         §include const use§ = null;
         this.§return set const§ = null;
         this.sfxData = null;
         this.weakening = null;
         this.callback = null;
         this.§implements include§.kill();
         this.§implements include§ = null;
         this.§0"T§ = null;
      }
      
      override public function considerBody(param1:Body) : Boolean
      {
         return super.considerBody(param1) || this.§native set function§ > 0;
      }
      
      private function §catch set if§(param1:Vector3) : void
      {
         var _loc2_:§if continue§ = battleService.§#!o§();
         var _loc3_:§return var include§ = §return var include§(_loc2_.getObject(§return var include§));
         var _loc4_:int = 50;
         _loc3_.init(param1,_loc4_);
         var _loc5_:§'!q§ = §'!q§(_loc2_.getObject(§'!q§));
         var _loc6_:Number = Math.random() * Math.PI * 2;
         var _loc7_:int = 0;
         _loc5_.init(§include const default§,§include const default§,this.sfxData.§,_§,_loc6_,_loc3_,0.5,0.5,null,_loc7_);
         battleService.§override for native§(_loc5_);
         this.§import var throw§(this.sfxData.explosionSound,param1);
         this.§@!b§(param1);
      }
      
      private function §@!b§(param1:Vector3) : void
      {
         var _loc2_:§break use§ = §break use§(battleService.§#!o§().getObject(§break use§));
         var _loc3_:§return var include§ = §return var include§(battleService.§#!o§().getObject(§return var include§));
         _loc3_.init(param1,50);
         _loc2_.init(_loc3_,this.sfxData.§class for use§);
         battleService.§override for native§(_loc2_);
      }
      
      private function §return for dynamic§(param1:Vector3) : void
      {
         var _loc2_:§break use§ = §break use§(battleService.§#!o§().getObject(§break use§));
         var _loc3_:§return var include§ = §return var include§(battleService.§#!o§().getObject(§return var include§));
         _loc3_.init(param1,50);
         _loc2_.init(_loc3_,this.sfxData.§default const null§);
         battleService.§override for native§(_loc2_);
      }
      
      private function §import var throw§(param1:Sound, param2:Vector3) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:§!!c§ = null;
         var _loc5_:§8"F§ = null;
         if(param1 != null)
         {
            _loc3_ = 0.8;
            _loc4_ = §!!c§.create(param1,_loc3_);
            _loc5_ = §8"F§.create(param2,_loc4_);
            battleService.§!O§(_loc5_);
         }
      }
      
      private function §null var finally§(param1:Body, param2:Vector3, param3:Vector3, param4:Number, param5:Vector.<Vector3>) : void
      {
         this.§catch set if§(param2);
         var _loc6_:Number = this.weakening.§3;§(param4);
         var _loc7_:Tank = param1.tank;
         _loc7_.§class set set§(param2,param3,_loc6_ * this.impactForce);
         this.§ "R§(param1,param5);
         this.destroy();
      }
      
      private function § "R§(param1:Body, param2:Vector.<Vector3>) : void
      {
         if(this.callback)
         {
            this.callback.§ "R§(§throw for implements§(),param1,param2);
         }
      }
      
      private function §^">§(param1:Vector3) : void
      {
         var _loc2_:§if continue§ = battleService.§#!o§();
         var _loc3_:§return var include§ = §return var include§(_loc2_.getObject(§return var include§));
         var _loc4_:int = 50;
         _loc3_.init(param1,_loc4_);
         var _loc5_:§'!q§ = §'!q§(_loc2_.getObject(§'!q§));
         _loc5_.init(§switch set throw§,§switch set throw§,this.sfxData.§8"N§,Math.random() * Math.PI * 2,_loc3_,0.5,0.5);
         battleService.§override for native§(_loc5_);
         this.§import var throw§(this.sfxData.ricochetSound,param1);
         this.§return for dynamic§(param1);
      }
      
      override protected function §>";§() : Boolean
      {
         var _loc1_:CollisionDetector = battleService.§try var final§().§`"N§();
         §'!Z§.diff(§;!e§,§#!!§);
         var _loc2_:Number = §'!Z§.length();
         §'!Z§.normalize();
         return this.§break for static§(§'!Z§,_loc2_,_loc1_);
      }
      
      private function §break for static§(param1:Vector3, param2:Number, param3:CollisionDetector) : Boolean
      {
         if(param3.raycast(§#!!§,param1,§]"P§.WEAPON,param2,this,§2!5§))
         {
            this.impactPoints.push(§2!5§.position.clone());
            if(§#",§.§extends for use§(§2!5§.shape.body))
            {
               this.§null var finally§(§2!5§.shape.body,§2!5§.position,param1,0,this.impactPoints);
               return true;
            }
            if(this.§native set function§ >= this.§return set const§.maxRicochetCount)
            {
               this.§&!7§(§2!5§.normal);
               return true;
            }
            ++this.§native set function§;
            §;!e§.copy(§2!5§.position);
            this.§-!i§(§2!5§.normal);
            this.§^">§(§2!5§.position);
            return false;
         }
         return this.§=$§(param1,param2,param3);
      }
      
      private function §=$§(param1:Vector3, param2:Number, param3:CollisionDetector) : Boolean
      {
         var _loc4_:Vector3 = null;
         var _loc5_:Body = null;
         §dynamic var§(§#!!§,param1);
         var _loc6_:int = 0;
         while(_loc6_ < §8!T§)
         {
            _loc4_ = §,"C§[_loc6_];
            if(param3.raycast(_loc4_,§set for final§,§]"P§.WEAPON,param2,this,§2!5§))
            {
               _loc5_ = §2!5§.shape.body;
               if(§#",§.§extends for use§(_loc5_))
               {
                  §]h§.copy(§#!!§).addScaled(§2!5§.t,param1);
                  this.impactPoints.push(§]h§.clone());
                  this.§null var finally§(_loc5_,§]h§,param1,0,this.impactPoints);
                  return true;
               }
            }
            _loc6_++;
         }
         return false;
      }
      
      override protected function §use const default§() : Number
      {
         return this.§return set const§.shellRadius;
      }
      
      override protected function § !`§() : int
      {
         return §8!T§;
      }
   }
}

