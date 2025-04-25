package §3g§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.money.§;!l§;
   import alternativa.tanks.service.money.IMoneyService;
   import assets.Diamond;
   import controls.Money;
   import controls.base.ThreeLineBigButton;
   import controls.labels.MouseDisabledLabel;
   import flash.display.Sprite;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §final const break§ extends ThreeLineBigButton implements §;!l§
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var moneyService:IMoneyService;
      
      private static const §8"9§:int = 16731648;
      
      private static const §null set§:int = 16777215;
      
      private var priceLabel:MouseDisabledLabel;
      
      private var crystals:int;
      
      public function §final const break§()
      {
         super();
         this.priceLabel = new MouseDisabledLabel();
         this.priceLabel.size = 11;
         super.setText(localeService.getText(TanksLocale.TEXT_DAILY_QUEST_CHANGE));
         moneyService.addListener(this);
      }
      
      public function showButtonWithCrystals(param1:int) : void
      {
         this.crystals = param1;
         var _loc2_:Diamond = new Diamond();
         _loc2_.y = 3;
         var _loc3_:Sprite = new Sprite();
         _loc3_.addChild(this.priceLabel);
         _loc3_.addChild(_loc2_);
         addChild(_loc3_);
         this.priceLabel.text = Money.numToString(param1,false);
         this.priceLabel.x = int(_width / 2 - (this.priceLabel.width + _loc2_.width) / 2);
         _loc2_.x = this.priceLabel.x + this.priceLabel.textWidth + 7;
         this.§in const get§();
         super.showInTwoRows(captionLabel,_loc3_);
      }
      
      public function §continue var true§() : void
      {
         super.showInOneRow(captionLabel);
      }
      
      public function crystalsChanged(param1:int) : void
      {
         this.§in const get§();
      }
      
      private function §in const get§() : void
      {
         this.priceLabel.textColor = moneyService.crystal < this.crystals ? uint(§8"9§) : uint(§null set§);
      }
      
      public function removeListeners() : void
      {
         moneyService.removeListener(this);
      }
   }
}

