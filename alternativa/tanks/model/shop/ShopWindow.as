package alternativa.tanks.model.shop
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.model.shop.bugreport.PaymentBugReportBlock;
   import alternativa.tanks.model.shop.items.crystallitem.CrystalPackageItem;
   import alternativa.tanks.model.shop.items.premuimitem.PremiumPackageItem;
   import controls.TankWindow;
   import controls.base.DefaultButtonBase;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.gui.DialogWindow;
   
   public class ShopWindow extends DialogWindow
   {
      public static var localeService:ILocaleService = OSGi.getInstance().getService(ILocaleService) as ILocaleService;
      
      public static const WINDOW_PADDING:int = 11;
      
      public static const WINDOW_WIDTH:int = 915;
      
      public static const SPACE_MODULE:int = 7;
      
      public static var haveDoubleCrystalls:Boolean = false;
      
      private var tankWindow:TankWindow = new TankWindow();
      
      private var categories:ShopCategorysView = new ShopCategorysView();
      
      private var bugReportBlock:PaymentBugReportBlock;
      
      public var header:ShowWindowHeader = new ShowWindowHeader();
      
      private var closeButton:DefaultButtonBase;
      
      public function ShopWindow()
      {
         super();
         addChild(this.tankWindow);
         this.tankWindow.width = WINDOW_WIDTH;
         this.tankWindow.height = 691;
         this.header.x = WINDOW_PADDING;
         this.header.y = WINDOW_PADDING;
         this.header.resize(WINDOW_WIDTH - WINDOW_PADDING * 2);
         this.closeButton = new DefaultButtonBase();
         this.closeButton.tabEnabled = false;
         this.closeButton.label = localeService.getText(TanksLocale.TEXT_FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT);
         this.closeButton.x = this.tankWindow.width - this.closeButton.width - 2 * WINDOW_PADDING;
         this.closeButton.y = this.tankWindow.height - this.closeButton.height - WINDOW_PADDING;
         this.closeButton.addEventListener(MouseEvent.CLICK,this.onClickClose);
         addChild(this.closeButton);
         this.bugReportBlock = new PaymentBugReportBlock();
         this.bugReportBlock.x = WINDOW_PADDING;
         this.bugReportBlock.y = this.closeButton.y - WINDOW_PADDING - this.bugReportBlock.height;
         this.bugReportBlock.width = this.tankWindow.width - WINDOW_PADDING - this.bugReportBlock.x;
         addChild(this.bugReportBlock);
         this.tankWindow.addChild(this.categories);
         this.tankWindow.addChild(this.header);
         this.categories.x = WINDOW_PADDING;
         this.categories.y = this.header.y + this.header.height + SPACE_MODULE - 2;
         display.stage.addEventListener(Event.RESIZE,this.render);
         this.render();
         dialogService.addDialog(this);
      }
      
      public function render(param1:Event = null) : void
      {
         this.categories.render(WINDOW_WIDTH - WINDOW_PADDING * 2,this.bugReportBlock.y - this.categories.y - WINDOW_PADDING);
      }
      
      private function onClickClose(param1:MouseEvent = null) : void
      {
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function addCategory(param1:String, param2:String, param3:String) : void
      {
         this.categories.addCategory(new ShopCategoryView(param1,param2,param3));
         this.categories.render(this.tankWindow.width - WINDOW_PADDING * 2,this.bugReportBlock.y - this.categories.y - WINDOW_PADDING);
      }
      
      public function addItem(param1:String, param2:String, param3:Object) : void
      {
         if(param2.indexOf("crystal") >= 0)
         {
            this.categories.addItem(param1,new CrystalPackageItem(param2,param3));
         }
         else
         {
            this.categories.addItem(param1,new PremiumPackageItem(param2,param3));
         }
         this.categories.render(this.tankWindow.width - WINDOW_PADDING * 2,this.bugReportBlock.y - this.categories.y - WINDOW_PADDING);
      }
   }
}

