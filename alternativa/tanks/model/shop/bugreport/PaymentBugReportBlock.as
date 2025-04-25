package alternativa.tanks.model.shop.bugreport
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import controls.TankWindowInner;
   import controls.base.DefaultButtonBase;
   import controls.base.LabelBase;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class PaymentBugReportBlock extends Sprite
   {
      public static var localeService:ILocaleService = OSGi.getInstance().getService(ILocaleService) as ILocaleService;
      
      public static const WINDOW_MARGIN:int = 11;
      
      public static const SPACE_MODULE:int = 7;
      
      private static const bitmapError:Class = PaymentBugReportBlock_bitmapError;
      
      private static const errorBd:BitmapData = new bitmapError().bitmapData;
      
      private var errorInner:TankWindowInner;
      
      public var errorButton:DefaultButtonBase;
      
      private var errorIcon:Bitmap;
      
      private var errorLabel:LabelBase;
      
      private var _height:Number;
      
      private var _width:Number;
      
      public function PaymentBugReportBlock()
      {
         super();
         this.errorInner = new TankWindowInner(0,0,TankWindowInner.TRANSPARENT);
         addChild(this.errorInner);
         this.errorIcon = new Bitmap(errorBd);
         addChild(this.errorIcon);
         this.errorLabel = new LabelBase();
         addChild(this.errorLabel);
         this.errorLabel.multiline = true;
         this.errorLabel.wordWrap = true;
         this.errorLabel.text = localeService.getText(TanksLocale.TEXT_PAYMENT_BUG_REPORT_INFO);
         this.errorButton = new DefaultButtonBase();
         this.errorButton.label = localeService.getText(TanksLocale.TEXT_PAYMENT_BUTTON_SEND_BUG_REPORT_TEXT);
         this.errorButton.addEventListener(MouseEvent.CLICK,this.§true for break§);
         addChild(this.errorButton);
         this.errorButton.y = SPACE_MODULE;
         this._height = 45;
         this.errorInner.height = this._height;
         this.errorIcon.x = WINDOW_MARGIN;
         this.errorIcon.y = int((this._height - this.errorIcon.height) * 0.5);
         this.errorLabel.x = this.errorIcon.x + this.errorIcon.width + WINDOW_MARGIN;
      }
      
      private function §true for break§(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("https://vk.com/protanki_official"),"_blank");
      }
      
      override public function get height() : Number
      {
         return this._height;
      }
      
      override public function set height(param1:Number) : void
      {
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = param1;
         this.errorInner.width = this._width;
         this.errorButton.x = this._width - this.errorButton.width - WINDOW_MARGIN;
         this.errorLabel.width = this.errorButton.x - this.errorLabel.x - WINDOW_MARGIN;
         this.errorLabel.y = int((this._height - this.errorLabel.height) * 0.5);
      }
   }
}

