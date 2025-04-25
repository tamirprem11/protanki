package alternativa.tanks.bonuses
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.scene3d.§set while§;
   
   public class GroundSpawnRenderer extends §super for static§ implements §set while§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private static const SCALE_SPEED:Number = 0.005;
      
      private var bonus:BattleBonus;
      
      private var param:Number;
      
      public function GroundSpawnRenderer(param1:§default const static§)
      {
         super(param1);
      }
      
      public function start(param1:BattleBonus) : void
      {
         this.bonus = param1;
         this.param = 0;
         param1.onRemove.add(this.destroy);
         param1.onPickup.add(this.destroy);
         param1.onDestroy.add(this.destroy);
         battleService.§catch include§().§@!X§(this,0);
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.param += SCALE_SPEED * param2;
         if(this.param > 1)
         {
            this.param = 1;
         }
         var _loc3_:BonusMesh = this.bonus.getBonusMesh();
         _loc3_.setScale(this.param);
         _loc3_.setAlpha(this.param);
         if(this.param == 1)
         {
            this.startFlashAnimation();
            this.destroy();
         }
      }
      
      private function startFlashAnimation() : void
      {
         var _loc1_:SpawnFlashRenderer = SpawnFlashRenderer(battleService.§#!o§().getObject(SpawnFlashRenderer));
         _loc1_.start(this.bonus);
      }
      
      private function destroy() : void
      {
         battleService.§catch include§().§use const else§(this,0);
         this.bonus.onRemove.remove(this.destroy);
         this.bonus.onPickup.remove(this.destroy);
         this.bonus.onDestroy.remove(this.destroy);
         this.bonus = null;
         recycle();
      }
   }
}

