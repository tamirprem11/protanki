package §#"a§
{
   import §1!r§.§##§;
   import §1!r§.§native var native§;
   import §3g§.§<?§;
   import §3g§.§final const break§;
   import alternativa.types.Long;
   import controls.TankWindowInner;
   import controls.base.ThreeLineBigButton;
   import §finally for else§.§case include§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §?!a§ extends Sprite
   {
      private const §default const in§:int = 10;
      
      private const §!"9§:int = 120;
      
      private const §^]§:int = 280;
      
      private const §5"]§:int = 4;
      
      private var §finally override§:TankWindowInner;
      
      private var §with while§:§0?§;
      
      private var § "`§:Bitmap;
      
      private var §^!m§:ThreeLineBigButton;
      
      private var §function var const§:§case include§;
      
      public function §?!a§(param1:§case include§)
      {
         super();
         this.§function var const§ = param1;
         this.§while const while§();
         this.§use for include§();
         this.§do for extends§();
         this.§8;§();
         this.§with for with§();
      }
      
      private function §while const while§() : void
      {
         this.§finally override§ = new TankWindowInner(0,0,TankWindowInner.GREEN);
         this.§finally override§.width = §use for var§.§package switch§;
         addChild(this.§finally override§);
      }
      
      private function §use for include§() : void
      {
         this.§ "`§ = new Bitmap();
         this.§ "`§.x = int(this.§finally override§.width / 2 - this.§^]§ / 2);
         this.§ "`§.y = this.§default const in§;
         this.§ "`§.bitmapData = this.§function var const§.image.data;
         this.§finally override§.addChild(this.§ "`§);
      }
      
      private function §do for extends§() : void
      {
         this.§with while§ = new §0?§(this.§function var const§);
         this.§with while§.x = this.§default const in§;
         this.§with while§.y = this.§!"9§ + this.§default const in§ * 2;
         this.§finally override§.addChild(this.§with while§);
      }
      
      private function §with for with§() : void
      {
         this.§^!m§ = this.§7!g§();
         addChild(this.§^!m§);
         this.§package const include§();
      }
      
      private function §7!g§() : ThreeLineBigButton
      {
         if(this.§function var const§.progress == this.§function var const§.finishCriteria)
         {
            return this.§%"9§();
         }
         return this.§true const false§();
      }
      
      private function §true const false§() : ThreeLineBigButton
      {
         var _loc1_:§final const break§ = new §final const break§();
         _loc1_.addEventListener(MouseEvent.CLICK,this.§const for break§);
         if(this.§function var const§.canSkipForFree)
         {
            _loc1_.§continue var true§();
         }
         else
         {
            _loc1_.showButtonWithCrystals(this.§function var const§.skipCost);
         }
         return ThreeLineBigButton(_loc1_);
      }
      
      private function §const for break§(param1:MouseEvent) : void
      {
         dispatchEvent(new §##§(§##§.DAILY_QUEST_CHANGE,this.§function var const§));
      }
      
      private function §%"9§() : ThreeLineBigButton
      {
         var _loc1_:ThreeLineBigButton = new §<?§();
         _loc1_.addEventListener(MouseEvent.CLICK,this.§-!b§);
         return _loc1_;
      }
      
      private function §-!b§(param1:MouseEvent) : void
      {
         this.§^!m§.removeEventListener(MouseEvent.CLICK,this.§-!b§);
         dispatchEvent(new §native var native§(§native var native§.DAILY_QUEST_GET_PRIZE,this.§function var const§));
      }
      
      private function §package const include§() : void
      {
         this.§^!m§.x = int(§use for var§.§package switch§ / 2 - this.§^!m§.width / 2);
         this.§^!m§.y = this.§finally override§.height + §use for var§.WINDOW_MARGIN - this.§5"]§;
      }
      
      private function §8;§() : void
      {
         this.§finally override§.height = this.§with while§.§,",§() + this.§!"9§ + this.§default const in§ * 3;
      }
      
      public function §switch set false§(param1:§case include§) : void
      {
         this.§function var const§ = param1;
         this.§ "`§.bitmapData = param1.image.data;
         this.§with while§.§switch for import§(param1);
         this.§8;§();
         this.§package const include§();
      }
      
      public function §-!g§(param1:int) : void
      {
         this.§finally override§.height = param1 - (§use for var§.WINDOW_MARGIN + this.§^!m§.height);
         var _loc2_:int = param1 - this.§final var get§();
         this.§with while§.§#R§(_loc2_);
         this.§^!m§.y = param1 - this.§^!m§.height - this.§5"]§;
      }
      
      public function §@"^§(param1:int) : void
      {
         this.§function var const§.canSkipForFree = false;
         this.§function var const§.skipCost = param1;
         §final const break§(this.§^!m§).showButtonWithCrystals(param1);
      }
      
      public function §,",§() : int
      {
         return this.§with while§.§,",§() + this.§final var get§();
      }
      
      private function §final var get§() : int
      {
         return this.§!"9§ + this.§default const in§ * 3 + §use for var§.WINDOW_MARGIN + this.§^!m§.height;
      }
      
      public function §+"D§() : Long
      {
         return this.§function var const§.questId;
      }
      
      public function §9"a§() : void
      {
         var _loc1_:§final const break§ = §final const break§(this.§^!m§);
         _loc1_.removeEventListener(MouseEvent.CLICK,this.§const for break§);
         _loc1_.removeListeners();
      }
      
      public function §?§() : Boolean
      {
         return this.§^!m§ is §final const break§;
      }
      
      public function §package set null§() : void
      {
         this.§^!m§.enabled = false;
      }
      
      public function §1"5§() : void
      {
         this.§^!m§.enabled = true;
      }
   }
}

