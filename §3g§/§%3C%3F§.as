package §3g§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import controls.base.ThreeLineBigButton;
   import controls.labels.MouseDisabledLabel;
   import §extends false§.§set for package§;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §<?§ extends ThreeLineBigButton
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      private var priceLabel:MouseDisabledLabel;
      
      public function §<?§()
      {
         super();
         this.priceLabel = new MouseDisabledLabel();
         this.priceLabel.size = 11;
         setSkin(§set for package§.§get for if§);
         super.setText(localeService.getText(TanksLocale.TEXT_DAILY_QUEST_GET_PRIZE));
         super.showInOneRow(captionLabel);
      }
   }
}

