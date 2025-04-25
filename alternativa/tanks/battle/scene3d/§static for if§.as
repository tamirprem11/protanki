package alternativa.tanks.battle.scene3d
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Shadow;
   import alternativa.tanks.utils.MathUtils;
   import flash.utils.Dictionary;
   
   public class §static for if§
   {
      private static const §2!9§:Number = 7000;
      
      private static const §+W§:Number = 4000;
      
      private static const §switch const case§:Number = 2000;
      
      private static const §throw set null§:Number = 1000;
      
      private static const §while final§:Number = 0.01;
      
      private static const §!$§:Number = 60;
      
      private static const §[O§:Number = 20;
      
      private var camera:Camera3D;
      
      private const shadows:Dictionary = new Dictionary();
      
      private var nearDistance:Number = 4000;
      
      private var farDistance:Number = 7000;
      
      private var enabled:Boolean;
      
      private var color:int;
      
      private var alpha:Number = 0.85;
      
      public function §static for if§(param1:Camera3D)
      {
         super();
         this.camera = param1;
         this.§implements var dynamic§();
      }
      
      public function setup(param1:int) : void
      {
         this.color = param1;
      }
      
      public function add(param1:Shadow) : void
      {
         param1.color = this.color;
         param1.alpha = this.alpha;
         param1.nearDistance = this.nearDistance;
         param1.farDistance = this.farDistance;
         this.shadows[param1] = true;
         if(this.enabled)
         {
            this.camera.addShadow(param1);
         }
      }
      
      public function remove(param1:Shadow) : void
      {
         delete this.shadows[param1];
         if(this.enabled)
         {
            this.camera.removeShadow(param1);
         }
      }
      
      public function enable() : void
      {
         var _loc1_:* = undefined;
         if(!this.enabled)
         {
            this.enabled = true;
            for(_loc1_ in this.shadows)
            {
               this.camera.addShadow(_loc1_);
            }
         }
      }
      
      public function disable() : void
      {
         var _loc1_:* = undefined;
         if(this.enabled)
         {
            this.enabled = false;
            for(_loc1_ in this.shadows)
            {
               this.camera.removeShadow(_loc1_);
            }
         }
      }
      
      public function §static for true§(param1:Number) : void
      {
         this.§in false§(param1);
         this.§;"+§();
      }
      
      private function §in false§(param1:Number) : void
      {
         var _loc2_:Number = MathUtils.clamp((param1 - §[O§) / (§!$§ - §[O§),0,1);
         var _loc3_:Number = §throw set null§ + _loc2_ * (§+W§ - §throw set null§);
         this.nearDistance += (_loc3_ - this.nearDistance) * §while final§;
         var _loc4_:Number = §switch const case§ + _loc2_ * (§2!9§ - §switch const case§);
         this.farDistance += (_loc4_ - this.farDistance) * §while final§;
      }
      
      private function §;"+§() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = null;
         for(_loc2_ in this.shadows)
         {
            _loc2_.nearDistance = this.nearDistance;
            _loc2_.farDistance = this.farDistance;
         }
      }
      
      private function §implements var dynamic§() : void
      {
      }
   }
}

