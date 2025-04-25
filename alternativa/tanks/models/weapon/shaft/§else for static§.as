package alternativa.tanks.models.weapon.shaft
{
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.battle.objects.tank.tankskin.§8!x§;
   import alternativa.tanks.camera.§for for native§;
   
   public class §else for static§ extends §case const var§ implements §do for switch§
   {
      private static const §implements const static§:Number = 5 * 0.001;
      
      private static const ALPHA_SPEED:Number = 5 * 0.001;
      
      private static const §use var try§:Number = Math.PI / 2;
      
      private var camera:§for for native§;
      
      private var skin:§8!x§;
      
      private var §case implements§:Number;
      
      public function §else for static§(param1:§for for native§)
      {
         super();
         this.camera = param1;
         this.§case implements§ = §use var try§;
      }
      
      public function setSkin(param1:§8!x§) : void
      {
         this.skin = param1;
      }
      
      public function §function set get§(param1:Number) : void
      {
         this.§case implements§ = param1;
      }
      
      public function start() : void
      {
         §try var final§().§finally var false§(this);
      }
      
      public function stop() : void
      {
         §try var final§().§<!3§(this);
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         this.camera.fov += §implements const static§ * param2;
         if(this.camera.fov > this.§case implements§)
         {
            this.camera.fov = this.§case implements§;
         }
         var _loc3_:Number = this.skin.§2"d§();
         _loc3_ += ALPHA_SPEED * param2;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         this.skin.setAlpha(_loc3_);
         if(this.camera.fov == this.§case implements§ && _loc3_ == 1)
         {
            this.stop();
         }
      }
   }
}

