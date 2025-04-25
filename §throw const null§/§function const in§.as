package §throw const null§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.utils.removeDisplayObject;
   import controls.TankWindow;
   import controls.base.DefaultButtonBase;
   import controls.base.LabelBase;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextFieldAutoSize;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.gui.DialogWindow;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   import services.alertservice.§if const finally§;
   
   public class §function const in§ extends DialogWindow
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var blurService:IBlurService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      private static const §static for native§:String = "{time}";
      
      private static const §super for each§:int = 25;
      
      private static const §in set with§:int = 6;
      
      private static const §3"P§:int = 15;
      
      private var §true class§:TankWindow;
      
      private var §const const import§:DefaultButtonBase;
      
      private var § e§:DefaultButtonBase;
      
      private var §7f§:LabelBase;
      
      private var §final const use§:LabelBase;
      
      private var _seconds:int;
      
      private var §switch var continue§:String;
      
      public function §function const in§()
      {
         super();
         this.§switch var continue§ = localeService.getText(TanksLocale.TEXT_REARM_PAUSE_ALERT);
         this.§true class§ = new TankWindow();
         addChild(this.§true class§);
         this.§7f§ = this.createLabel();
         this.§final const use§ = this.createLabel();
         this.§const const import§ = new DefaultButtonBase();
         this.§const const import§.label = §if const finally§.YES;
         addChild(this.§const const import§);
         this.§ e§ = new DefaultButtonBase();
         this.§ e§.label = §if const finally§.NO;
         addChild(this.§ e§);
         this.resize();
      }
      
      private function createLabel() : LabelBase
      {
         var _loc1_:LabelBase = null;
         _loc1_ = new LabelBase();
         _loc1_.y = §super for each§;
         _loc1_.autoSize = TextFieldAutoSize.LEFT;
         _loc1_.size = 14;
         _loc1_.width = 10;
         _loc1_.height = 10;
         _loc1_.multiline = true;
         addChild(_loc1_);
         return _loc1_;
      }
      
      public function set seconds(param1:int) : void
      {
         if(this._seconds == param1)
         {
            return;
         }
         this._seconds = param1;
         var _loc2_:int = this._seconds / 60;
         this._seconds -= _loc2_ * 60;
         var _loc3_:String = this._seconds < 10 ? "0" + this._seconds : this._seconds.toString();
         var _loc4_:Array = this.§switch var continue§.replace(§static for native§,_loc2_ + ":" + _loc3_).split("\n");
         this.§7f§.text = _loc4_[0];
         this.§final const use§.text = _loc4_[1];
      }
      
      public function show() : void
      {
         blurService.blurAllContent();
         this.resize();
         display.stage.addChild(this);
         display.stage.focus = this;
         this.setEvents();
      }
      
      private function resize() : void
      {
         var _loc1_:int = Math.max(this.§7f§.width + 2 * §super for each§,this.§final const use§.width + 2 * §super for each§);
         this.§true class§.width = Math.max(_loc1_,this.§ e§.width + this.§const const import§.width + §in set with§ + 2 * §super for each§);
         this.§true class§.x = -int(this.§true class§.width / 2);
         this.§7f§.x = -int(this.§7f§.width / 2);
         this.§final const use§.x = -int(this.§final const use§.width / 2);
         this.§final const use§.y = this.§7f§.y + this.§7f§.height;
         this.§const const import§.y = this.§final const use§.y + this.§final const use§.height + §3"P§;
         this.§ e§.y = this.§final const use§.y + this.§final const use§.height + §3"P§;
         this.§const const import§.x = -this.§const const import§.width - §in set with§ / 2;
         this.§ e§.x = §in set with§ / 2;
         this.§true class§.height = this.§ e§.y + this.§ e§.height + §super for each§;
         this.x = display.stage.stageWidth >> 1;
         this.y = display.stage.stageHeight - this.height >> 1;
      }
      
      private function setEvents() : void
      {
         this.§const const import§.addEventListener(MouseEvent.CLICK,this.§dynamic var if§);
         this.§ e§.addEventListener(MouseEvent.CLICK,this.§super final§);
         display.stage.addEventListener(Event.RESIZE,this.onStageResize);
         display.stage.addEventListener(KeyboardEvent.KEY_UP,this.§<j§);
      }
      
      private function §super final§(param1:MouseEvent = null) : void
      {
         dispatchEvent(new NotificationEndsPausedAlertEvent(NotificationEndsPausedAlertEvent.CLOSE_ALERT));
      }
      
      private function §dynamic var if§(param1:MouseEvent = null) : void
      {
         dispatchEvent(new NotificationEndsPausedAlertEvent(NotificationEndsPausedAlertEvent.RETURN_TO_BATTLE));
      }
      
      private function onStageResize(param1:Event) : void
      {
         this.resize();
      }
      
      private function §<j§(param1:KeyboardEvent) : void
      {
         if(AlertUtils.isCancelKey(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            this.§super final§();
         }
         if(AlertUtils.isConfirmationKey(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            this.§dynamic var if§();
         }
      }
      
      public function destroy() : void
      {
         this.removeEvents();
         blurService.unblurAllContent();
         removeDisplayObject(this);
         this.§true class§ = null;
         this.§const const import§ = null;
         this.§ e§ = null;
         this.§7f§ = null;
         this.§final const use§ = null;
      }
      
      private function removeEvents() : void
      {
         this.§const const import§.removeEventListener(MouseEvent.CLICK,this.§dynamic var if§);
         this.§ e§.removeEventListener(MouseEvent.CLICK,this.§super final§);
         display.stage.removeEventListener(Event.RESIZE,this.onStageResize);
         display.stage.removeEventListener(KeyboardEvent.KEY_UP,this.§<j§);
      }
   }
}

