package alternativa.tanks.bonuses
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.scene3d.§set while§;
   import flash.geom.ColorTransform;
   
   public class BonusPickupAnimation extends §super for static§ implements §set while§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private static const PICKUP_ANIMATION_TIME:int = 2000;
      
      private static const FLASH_DURATION:int = 300;
      
      private static const ALPHA_DURATION:int = PICKUP_ANIMATION_TIME - FLASH_DURATION;
      
      private static const MAX_ADDITIVE_VALUE:int = 204;
      
      private static const ADDITIVE_SPEED_UP:Number = Number(MAX_ADDITIVE_VALUE) / FLASH_DURATION;
      
      private static const ADDITIVE_SPEED_DOWN:Number = Number(MAX_ADDITIVE_VALUE) / (PICKUP_ANIMATION_TIME - FLASH_DURATION);
      
      private static const UP_SPEED:Number = 300;
      
      private static const ANGLE_SPEED:Number = 2;
      
      private var bonusMesh:BonusMesh;
      
      private var colorTransform:ColorTransform = new ColorTransform();
      
      private var animationTime:int;
      
      private var additiveValue:int;
      
      public function BonusPickupAnimation(param1:§default const static§)
      {
         super(param1);
      }
      
      public function start(param1:BonusMesh) : void
      {
         this.bonusMesh = param1;
         this.bonusMesh.setColorTransform(this.colorTransform);
         this.animationTime = PICKUP_ANIMATION_TIME;
         this.additiveValue = 0;
         battleService.§catch include§().§@!X§(this,0);
      }
      
      public function render(param1:int, param2:int) : void
      {
         if(this.animationTime > 0)
         {
            this.playAnimation(param2);
         }
         else
         {
            this.destroy();
         }
      }
      
      private function playAnimation(param1:int) : void
      {
         var _loc2_:Number = param1 / 1000;
         this.bonusMesh.addZ((UP_SPEED * this.animationTime / PICKUP_ANIMATION_TIME + UP_SPEED * 0.1) * _loc2_);
         this.bonusMesh.addRotationZ((ANGLE_SPEED * this.animationTime / PICKUP_ANIMATION_TIME + ANGLE_SPEED * 0.1) * _loc2_);
         if(this.animationTime > PICKUP_ANIMATION_TIME - FLASH_DURATION)
         {
            this.additiveValue += ADDITIVE_SPEED_UP * param1;
            if(this.additiveValue > MAX_ADDITIVE_VALUE)
            {
               this.additiveValue = MAX_ADDITIVE_VALUE;
            }
         }
         else
         {
            this.additiveValue -= ADDITIVE_SPEED_DOWN * param1;
            if(this.additiveValue < 0)
            {
               this.additiveValue = 0;
            }
         }
         this.colorTransform.redOffset = this.additiveValue;
         this.colorTransform.blueOffset = this.additiveValue;
         this.colorTransform.greenOffset = this.additiveValue;
         if(this.animationTime < ALPHA_DURATION)
         {
            this.bonusMesh.setAlpha(this.animationTime / ALPHA_DURATION);
         }
         this.animationTime -= param1;
      }
      
      private function destroy() : void
      {
         this.bonusMesh.setColorTransform(null);
         this.bonusMesh.removeFromScene();
         this.bonusMesh.recycle();
         this.bonusMesh = null;
         battleService.§catch include§().§use const else§(this,0);
         recycle();
      }
   }
}

