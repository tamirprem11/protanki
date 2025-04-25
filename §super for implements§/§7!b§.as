package §super for implements§
{
   import §9"9§.§%"^§;
   import §9"9§.§=!t§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import §]l§.§const const set§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.engine3d.§2!W§;
   import §default var get§.§3!O§;
   
   public class §7!b§ extends §super for static§ implements §=!t§
   {
      private static const §8!K§:Matrix4 = new Matrix4();
      
      private static const § !P§:Matrix4 = new Matrix4();
      
      private static const §break set with§:Vector3 = new Vector3();
      
      private static const §#"`§:Vector3 = new Vector3();
      
      private static const direction:Vector3 = new Vector3();
      
      private static const §default return§:Vector3 = new Vector3();
      
      private static const §?"_§:Number = 0.1;
      
      private static const §in for get§:Number = 100;
      
      private var container:§3!O§;
      
      private var §while var do§:§8&§;
      
      private var §static const for§:§2!W§;
      
      private var §@`§:§2!W§;
      
      private var turret:Object3D;
      
      private var §extends const native§:Vector3 = new Vector3();
      
      private var §,"D§:Object3D;
      
      private var §3A§:Number = 0;
      
      private var show:Boolean;
      
      private var dead:Boolean;
      
      private var time:int;
      
      private var mode:§const const set§;
      
      private var sfxData:§break const switch§;
      
      private var hitPoint:Vector3 = new Vector3();
      
      private var § !?§:Vector3 = new Vector3();
      
      private var targetPoint:Vector3 = new Vector3();
      
      private var §%]§:Number;
      
      private var §'!9§:Boolean;
      
      private var isLocal:Boolean;
      
      public function §7!b§(param1:§default const static§)
      {
         super(param1);
         this.§while var do§ = new §8&§();
         this.§while var do§.init(§>R§.§if do§,100);
         this.§static const for§ = new §2!W§(§>R§.§native for use§,§>R§.§native for use§);
         this.§@`§ = new §2!W§(§>R§.§^l§,§>R§.§^l§);
         this.§@`§.originY = 0.5;
      }
      
      public function §[`§(param1:§break const switch§, param2:Object3D, param3:Vector3) : void
      {
         this.isLocal = true;
         this.init(param1,param2,param3);
      }
      
      public function §set const switch§(param1:§break const switch§, param2:Object3D, param3:Vector3) : void
      {
         this.isLocal = false;
         this.init(param1,param2,param3);
      }
      
      public function §const const function§(param1:§const const set§, param2:Object3D = null, param3:Vector3 = null) : void
      {
         var _loc4_:Number = NaN;
         this.§'!9§ = false;
         if(param2 != null)
         {
            if(this.§,"D§ == param2)
            {
               if(this.isLocal && this.targetPoint != null)
               {
                  this.§ !?§.copy(this.targetPoint);
               }
               else
               {
                  this.§ !?§.copy(this.hitPoint);
               }
               _loc4_ = this.§ !?§.distanceToSquared(param3);
               if(_loc4_ > §in for get§)
               {
                  this.§'!9§ = true;
                  this.§%]§ = 0;
               }
            }
            this.hitPoint.copy(param3);
         }
         if(this.mode != param1 || this.§,"D§ != param2)
         {
            this.§,"D§ = param2;
            this.mode = param1;
            switch(param1)
            {
               case §const const set§.IDLE:
                  this.§]"c§();
                  break;
               case §const const set§.HEALING:
                  this.§class set else§();
                  break;
               case §const const set§.DAMAGING:
                  this.§;!d§();
            }
            this.§3A§ = 0;
         }
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         if(this.show)
         {
            this.§3A§ += §>R§.§in return§ * param1 / 1000;
            if(this.§3A§ > 1)
            {
               this.§3A§ = 1;
            }
         }
         else
         {
            this.§3A§ -= §>R§.§in return§ * param1 / 1000;
            if(this.§3A§ <= 0)
            {
               if(this.dead)
               {
                  return false;
               }
            }
         }
         this.updateVisibility();
         this.time += param1;
         var _loc3_:int = this.§>"b§();
         if(this.mode == §const const set§.DAMAGING || this.mode == §const const set§.HEALING)
         {
            this.§@!$§();
            this.§0!7§(param2,param1,_loc3_);
         }
         return true;
      }
      
      private function init(param1:§break const switch§, param2:Object3D, param3:Vector3) : void
      {
         this.sfxData = param1;
         this.turret = param2;
         this.§extends const native§.copy(param3);
         this.mode = §const const set§.OFF;
         this.§3A§ = 0;
         this.show = true;
         this.dead = false;
         this.time = 0;
         this.updateVisibility();
      }
      
      private function §@!$§() : void
      {
         if(this.targetPoint == null)
         {
            this.targetPoint = new Vector3();
         }
         if(this.§'!9§)
         {
            this.§6"9§();
         }
         else
         {
            this.targetPoint.copy(this.hitPoint);
         }
      }
      
      private function §>"b§() : int
      {
         §8!K§.setMatrix(this.turret.x,this.turret.y,this.turret.z,this.turret.rotationX,this.turret.rotationY,this.turret.rotationZ);
         §8!K§.transformVector(this.§extends const native§,§#"`§);
         this.§static const for§.x = §#"`§.x;
         this.§static const for§.y = §#"`§.y;
         this.§static const for§.z = §#"`§.z;
         var _loc1_:int = this.§static const for§.§;!z§() * this.time / 1000;
         this.§static const for§.§set const const§(_loc1_);
         return _loc1_;
      }
      
      private function §6"9§() : void
      {
         this.§%]§ += §?"_§;
         if(this.§%]§ >= 1)
         {
            this.§%]§ = 1;
            this.§'!9§ = false;
         }
         Vector3.interpolate(this.§%]§,this.§ !?§,this.hitPoint,this.targetPoint);
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
      }
      
      public function destroy() : void
      {
         this.container.removeChild(this.§while var do§);
         this.§while var do§.setMaterialToAllFaces(null);
         this.container.removeChild(this.§@`§);
         this.§@`§.clear();
         this.container.removeChild(this.§static const for§);
         this.§static const for§.clear();
         this.container = null;
         this.sfxData = null;
         this.turret = null;
         this.§,"D§ = null;
         this.targetPoint = null;
         recycle();
      }
      
      public function stop() : void
      {
         this.dead = true;
         this.show = false;
      }
      
      public function kill() : void
      {
         this.dead = true;
         this.show = false;
         this.§3A§ = 0;
      }
      
      private function §0!7§(param1:§for for native§, param2:int, param3:int) : void
      {
         this.§@`§.§set const const§(param3);
         § !P§.setMatrix(this.§,"D§.x,this.§,"D§.y,this.§,"D§.z,this.§,"D§.rotationX,this.§,"D§.rotationY,this.§,"D§.rotationZ);
         § !P§.transformVector(this.targetPoint,§break set with§);
         direction.diff(§break set with§,§#"`§);
         var _loc4_:Number = direction.length() - §>R§.§continue set var§;
         if(_loc4_ < 0)
         {
            _loc4_ = 10;
         }
         this.§while var do§.update(param2,_loc4_);
         direction.normalize();
         §break set with§.x = §#"`§.x + _loc4_ * direction.x;
         §break set with§.y = §#"`§.y + _loc4_ * direction.y;
         §break set with§.z = §#"`§.z + _loc4_ * direction.z;
         this.§@`§.x = §break set with§.x;
         this.§@`§.y = §break set with§.y;
         this.§@`§.z = §break set with§.z;
         §default return§.x = param1.x;
         §default return§.y = param1.y;
         §default return§.z = param1.z;
         §%"^§.§true var throw§(this.§while var do§,§#"`§,direction,§default return§);
      }
      
      private function updateVisibility() : void
      {
         this.§while var do§.alpha = this.§3A§;
         this.§static const for§.alpha = this.§3A§;
         this.§@`§.alpha = this.§3A§;
         var _loc1_:Number = §>R§.§with var case§ + (1 - §>R§.§with var case§) * this.§3A§;
         this.§while var do§.scaleX = _loc1_;
         this.§static const for§.scaleX = _loc1_;
         this.§static const for§.scaleY = _loc1_;
         this.§static const for§.scaleZ = _loc1_;
         this.§@`§.scaleX = _loc1_;
         this.§@`§.scaleY = _loc1_;
         this.§@`§.scaleZ = _loc1_;
      }
      
      private function hide() : void
      {
         this.show = false;
      }
      
      private function §]"c§() : void
      {
         if(this.container != null)
         {
            this.container.removeChild(this.§while var do§);
            this.container.removeChild(this.§@`§);
            this.container.addChild(this.§static const for§);
            this.§static const for§.§-c§(this.sfxData.§static true§);
            this.§static const for§.§set const const§(0);
         }
      }
      
      private function §class set else§() : void
      {
         if(this.container != null)
         {
            this.container.addChild(this.§static const for§);
            this.container.addChild(this.§while var do§);
            this.container.addChild(this.§@`§);
            this.§while var do§.§9!§(this.sfxData.§^"-§,1);
            this.§static const for§.§-c§(this.sfxData.§6!P§);
            this.§static const for§.§set const const§(0);
            this.§@`§.§-c§(this.sfxData.§case var case§);
            this.§@`§.§set const const§(0);
         }
      }
      
      private function §;!d§() : void
      {
         if(this.container != null)
         {
            this.container.addChild(this.§static const for§);
            this.container.addChild(this.§while var do§);
            this.container.addChild(this.§@`§);
            this.§while var do§.§9!§(this.sfxData.§ ]§,-1);
            this.§static const for§.§-c§(this.sfxData.§else return§);
            this.§static const for§.§set const const§(0);
            this.§@`§.§-c§(this.sfxData.§=!V§);
            this.§@`§.§set const const§(0);
         }
      }
   }
}

