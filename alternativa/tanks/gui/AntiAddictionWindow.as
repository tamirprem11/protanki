package alternativa.tanks.gui
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.locale.constants.TextConst;
   import controls.DefaultButton;
   import controls.TankWindow;
   import controls.base.LabelBase;
   import controls.base.TankInputBase;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class AntiAddictionWindow extends Sprite
   {
      private static const Watches3Hours:Class = AntiAddictionWindow_Watches3Hours;
      
      private static const Watches5Hours:Class = AntiAddictionWindow_Watches5Hours;
      
      private var window:TankWindow;
      
      private var okButton:DefaultButton;
      
      private var closeButton:DefaultButton;
      
      private var headerText:LabelBase;
      
      private var descText:LabelBase;
      
      public var realNameInput:TankInputBase;
      
      public var idCardInput:TankInputBase;
      
      private var watches:Bitmap;
      
      public var windowSize:Point;
      
      public function AntiAddictionWindow(param1:int)
      {
         super();
         this.windowSize = new Point(392,270);
         this.window = new TankWindow();
         this.window.width = this.windowSize.x;
         this.window.height = this.windowSize.y;
         var _loc2_:ILocaleService = ILocaleService(OSGi.getInstance().getService(ILocaleService));
         this.window.headerLang = _loc2_.getText(TextConst.GUI_LANG);
         this.watches = param1 >= 5 * 60 ? new Watches5Hours() : new Watches3Hours();
         this.watches.x = 12;
         this.watches.y = 34;
         this.window.addChild(this.watches);
         this.okButton = new DefaultButton();
         this.okButton.width = 115;
         this.okButton.height = 30;
         this.okButton.x = 160;
         this.okButton.y = 220;
         this.okButton.label = "确认";
         this.window.addChild(this.okButton);
         this.closeButton = new DefaultButton();
         this.closeButton.width = 96;
         this.closeButton.height = 30;
         this.closeButton.x = 290;
         this.closeButton.y = 220;
         this.closeButton.label = "取消";
         this.window.addChild(this.closeButton);
         this.realNameInput = new TankInputBase();
         this.realNameInput.label = "您的真实姓名:";
         this.realNameInput.x = 165;
         this.realNameInput.y = 30;
         this.window.addChild(this.realNameInput);
         this.idCardInput = new TankInputBase();
         this.idCardInput.label = "身份证号码:";
         this.idCardInput.x = 165;
         this.idCardInput.y = 70;
         this.window.addChild(this.idCardInput);
         this.idCardInput.addEventListener(FocusEvent.FOCUS_OUT,this.validateAddictionID);
         this.idCardInput.addEventListener(FocusEvent.FOCUS_IN,this.restoreInput);
         this.descText = new LabelBase();
         this.descText.text = param1 >= 5 * 60 ? "您已进入不健康游戏时间，为了您的健康，请您立即下线休息。\n如不下线，您的身体将受到损害，您的收益已降为零，直到您的累计下线时间满5小时后，才能恢复正常。" : "您已经进入疲劳游戏时间，您的游戏收益将降为正常值的50%，为了您的健康，请尽快下线休息，做适当身体活动，合理安排学习生活。";
         this.descText.x = 14;
         this.descText.y = 120;
         this.descText.wordWrap = true;
         this.descText.height = 80;
         this.descText.width = 370;
         this.window.addChild(this.descText);
         addChild(this.window);
         this.closeButton.addEventListener(MouseEvent.CLICK,this.onCancelClicked);
         this.okButton.addEventListener(MouseEvent.CLICK,this.onOkClicked);
      }
      
      private function restoreInput(param1:FocusEvent) : void
      {
         var _loc2_:TankInputBase = param1.currentTarget as TankInputBase;
         _loc2_.validValue = true;
      }
      
      private function validateAddictionID(param1:FocusEvent) : void
      {
         var _loc2_:int = 0;
         if(this.idCardInput != null)
         {
            _loc2_ = this.idCardInput.value.length;
            this.idCardInput.validValue = _loc2_ == 18;
         }
      }
      
      public function disableButtons() : void
      {
         this.okButton.enabled = false;
         this.closeButton.enabled = false;
      }
      
      public function enableButtons() : void
      {
         this.okButton.enabled = true;
         this.closeButton.enabled = true;
      }
      
      private function onCancelClicked(param1:Event) : void
      {
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function onOkClicked(param1:Event) : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}

