package §const for import§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.locale.constants.TextConst;
   import controls.TankWindow;
   import controls.TextArea;
   import controls.ValidationIcon;
   import controls.base.DefaultButtonBase;
   import controls.base.LabelBase;
   import controls.base.TankInputBase;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.uidcheck.UidCheckService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.gui.DialogWindow;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   
   public class §if for try§ extends DialogWindow
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var §@!u§:UidCheckService;
      
      private static const §1!_§:int = 350;
      
      private static const §with for switch§:int = 600;
      
      private static const §try for use§:int = 11;
      
      private static const §final const function§:int = 5;
      
      private var window:TankWindow = new TankWindow(440,200);
      
      private var §do const if§:TextArea;
      
      private var §function set while§:TankInputBase;
      
      private var §import override§:LabelBase;
      
      private var sendButton:DefaultButtonBase;
      
      private var isUidValid:Boolean;
      
      private var uid:String;
      
      private var §for const while§:ValidationIcon;
      
      private var §super var switch§:uint;
      
      public function §if for try§()
      {
         super();
         addChild(this.window);
         display.stage.addEventListener(KeyboardEvent.KEY_UP,this.§%i§);
         var _loc1_:int = §try for use§;
         this.§each for while§(_loc1_);
         _loc1_ += this.§do const if§.height + §final const function§;
         this.§<"<§(_loc1_);
         _loc1_ += this.§function set while§.height + §final const function§;
         this.§finally super§(_loc1_);
         dialogService.addDialog(this);
      }
      
      private function §finally super§(param1:int) : void
      {
         var _loc2_:DefaultButtonBase = null;
         var _loc3_:int = 0;
         this.sendButton = new DefaultButtonBase();
         this.sendButton.label = localeService.getText(TextConst.TEXT_SEND_PRESENT_BUTTON);
         this.sendButton.x = §try for use§;
         this.sendButton.y = param1;
         this.sendButton.addEventListener(MouseEvent.CLICK,this.§for for implements§);
         this.sendButton.enable = false;
         this.window.addChild(this.sendButton);
         _loc2_ = new DefaultButtonBase();
         _loc2_.label = localeService.getText(TextConst.ALERT_ANSWER_CANCEL);
         _loc2_.x = §try for use§;
         _loc2_.y = param1;
         _loc2_.addEventListener(MouseEvent.CLICK,this.onCancelClick);
         this.window.addChild(_loc2_);
         _loc3_ = Math.max(this.sendButton.width,_loc2_.width);
         this.sendButton.width = _loc3_;
         _loc2_.width = _loc3_;
         var _loc4_:int = this.sendButton.height + 2 * §final const function§;
         var _loc5_:int = (width - 2 * _loc3_ - _loc4_) / 2;
         this.sendButton.x = _loc5_;
         _loc2_.x = width - _loc3_ - _loc5_;
      }
      
      private function §<"<§(param1:int) : void
      {
         this.§function set while§ = new TankInputBase();
         this.§function set while§.maxChars = 20;
         this.§function set while§.x = §try for use§;
         this.§function set while§.y = param1;
         this.§function set while§.width = this.window.width - 2 * §try for use§;
         this.§function set while§.addEventListener(FocusEvent.FOCUS_OUT,this.§super const return§);
         this.§function set while§.textField.addEventListener(Event.CHANGE,this.§^!7§);
         this.§function set while§.addEventListener(KeyboardEvent.KEY_UP,this.§throw const implements§);
         this.window.addChild(this.§function set while§);
         this.§import override§ = new §"_§(this.§function set while§.textField);
         this.§import override§.text = localeService.getText(TextConst.TEXT_PRESENT_RECIPIENT_NAME);
         this.§import override§.x = this.§function set while§.x + §final const function§;
         this.§import override§.y = this.§function set while§.y + §final const function§;
         this.window.addChild(this.§import override§);
         this.§for const while§ = new ValidationIcon();
         this.window.addChild(this.§for const while§);
         this.§for const while§.x = this.§function set while§.x + this.§function set while§.width - this.§for const while§.width - 15;
         this.§for const while§.y = param1 + §final const function§;
      }
      
      private function §each for while§(param1:int) : void
      {
         this.§do const if§ = new TextArea();
         this.§do const if§.maxChars = §1!_§;
         this.§do const if§.height = 106;
         this.§do const if§.width = this.window.width - 2 * §try for use§;
         this.§do const if§.x = §try for use§;
         this.§do const if§.y = param1;
         this.§do const if§.tf.addEventListener(Event.CHANGE,this.§?"X§);
         this.window.addChild(this.§do const if§);
         var _loc2_:LabelBase = new §"_§(this.§do const if§.tf);
         _loc2_.text = localeService.getText(TextConst.TEXT_TYPE_MESSAGE_WITH_PRESENT);
         _loc2_.x = this.§do const if§.x + §final const function§;
         _loc2_.y = this.§do const if§.y + §final const function§;
         this.window.addChild(_loc2_);
      }
      
      private function §throw const implements§(param1:KeyboardEvent) : void
      {
         if(AlertUtils.isConfirmationKey(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            this.§1!l§();
         }
      }
      
      private function §%i§(param1:KeyboardEvent) : void
      {
         if(AlertUtils.isCancelKey(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            this.§throw var default§();
         }
      }
      
      private function §^!7§(param1:Event) : void
      {
         this.isUidValid = false;
         this.sendButton.enable = false;
         this.§for const while§.startProgress();
         if(this.§function set while§.value.length > 0)
         {
            this.§import override§.visible = false;
         }
         clearTimeout(this.§super var switch§);
         this.§throw var case§();
         this.§super var switch§ = setTimeout(this.checkUid,§with for switch§);
      }
      
      private function §?"X§(param1:Event) : void
      {
         this.§throw var case§();
      }
      
      private function §for for implements§(param1:MouseEvent) : void
      {
         this.§1!l§();
      }
      
      private function §1!l§() : void
      {
         if(this.§0'§())
         {
            this.destroy();
            dispatchEvent(new SendPresentEvent(SendPresentEvent.SEND_PRESENT,this.uid,this.§do const if§.text));
         }
      }
      
      private function onCancelClick(param1:MouseEvent) : void
      {
         this.§throw var default§();
      }
      
      private function §throw var default§() : void
      {
         dispatchEvent(new Event(Event.CANCEL));
         this.destroy();
      }
      
      private function destroy() : void
      {
         this.sendButton.removeEventListener(MouseEvent.CLICK,this.§for for implements§);
         display.stage.removeEventListener(KeyboardEvent.KEY_UP,this.§%i§);
         this.§function set while§.removeEventListener(KeyboardEvent.KEY_UP,this.§throw const implements§);
         dialogService.removeDialog(this);
      }
      
      private function checkUid() : void
      {
         if(this.§function set while§.value.length == 0)
         {
            this.§for const while§.turnOff();
            this.§function set while§.validValue = true;
         }
         else
         {
            this.uid = this.§function set while§.value;
            §@!u§.exist(this.uid,this.§@!L§);
         }
      }
      
      private function §@!L§(param1:Boolean) : void
      {
         this.§function set while§.validValue = param1;
         this.isUidValid = param1;
         if(param1)
         {
            this.§for const while§.markAsValid();
            this.§throw var case§();
         }
         else
         {
            this.§for const while§.markAsInvalid();
         }
      }
      
      private function §throw var case§() : void
      {
         this.sendButton.enable = this.§0'§();
      }
      
      private function §0'§() : Boolean
      {
         return this.isUidValid && this.§5!^§();
      }
      
      private function §5!^§() : Boolean
      {
         return this.§do const if§.text.length > 0;
      }
      
      private function §super const return§(param1:Event) : void
      {
         if(this.§function set while§.value.length == 0)
         {
            this.§import override§.visible = true;
            this.§for const while§.turnOff();
            this.§function set while§.validValue = true;
            this.§throw var case§();
         }
      }
   }
}

