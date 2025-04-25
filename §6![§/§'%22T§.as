package §6![§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.gui.icons.§,d§;
   import alternativa.tanks.gui.settings.SettingsWindow;
   import alternativa.tanks.help.IHelpService;
   import alternativa.tanks.service.socialnetwork.ISocialNetworkPanelService;
   import alternativa.tanks.service.socialnetwork.SocialNetworkServiceEvent;
   import alternativa.tanks.view.events.RefreshCaptchaClickedEvent;
   import alternativa.tanks.view.registration.CaptchaSection;
   import assets.icons.InputCheckIcon;
   import controls.DefaultIconButton;
   import controls.FBButton;
   import controls.TankWindowInner;
   import controls.VKButton;
   import controls.base.DefaultButtonBase;
   import controls.base.LabelBase;
   import controls.base.TankInput;
   import controls.containers.§#"7§;
   import controls.containers.§1"C§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.system.Capabilities;
   import flash.text.AntiAliasType;
   import forms.events.LoginFormEvent;
   import forms.registration.CallsignIconStates;
   import forms.registration.bubbles.EmailInvalidBubble;
   import forms.registration.bubbles.PasswordIsTooEasyBubble;
   import forms.registration.bubbles.PasswordsDoNotMatchBubble;
   import platform.clients.fp10.libraries.alternativapartners.service.IPartnerService;
   import projects.tanks.clients.flash.commons.services.validate.IValidateService;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.§]r§;
   import §while set false§.§2h§;
   
   public class §'"T§ extends §2h§
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var partnersService:IPartnerService;
      
      [Inject]
      public static var socialNetworkService:ISocialNetworkPanelService;
      
      [Inject]
      public static var validateService:IValidateService;
      
      [Inject]
      public static var helperService:IHelpService;
      
      private static const HELPER_GROUP_KEY:String = "ChangeHelpers";
      
      private static const PASSWORD_IS_TOO_EASY:int = 3;
      
      private static const PASSWORDS_DO_NOT_MATCH:int = 4;
      
      private static const ERROR_EMAIL_INVALID:int = 5;
      
      private static const §-!A§:int = 7;
      
      private static const INPUT_HEIGHT:int = 30;
      
      private static const forbiddenPasswords:Array = ["1234567890","123456789","12345678","1234567","123456","12345","1234","0123","01234","012345","0123456","01234567","012345678","0123456789","9876","98765","987654","9876543","98765432","987654321","9876543210","8765","87654","876543","8765432","87654321","876543210","7654","76543","765432","7654321","76543210","6543","65432","654321","6543210","5432","54321","543210","4321","43210","3210","1111","2222","3333","4444","5555","6666","7777","8888","9999","0000","11111","22222","33333","44444","55555","66666","77777","88888","99999","00000","111111","222222","333333","444444","555555","666666","777777","888888","999999","000000","1111111","2222222","3333333","4444444","5555555","6666666","7777777","8888888","9999999","0000000","11111111","22222222","33333333","44444444","55555555","66666666","77777777","88888888","99999999","00000000","111111111","222222222","333333333","444444444","555555555","666666666","777777777","888888888","999999999","000000000"
      ,"abcd","Jack","1234","snoopy","suzy","spike","1012","1234","pepper ","shelby","12345 ","54321 ","pass ","wolf","john","qqqq","aaaa","ZZZz","asdf","zxcv","asdf","zxcv","asdfgh","zxcvbn","1111","!!!!","4321","$#@!","1234","!@#$","12345","!@#$%","123456","!@#$%^","abcd","ABCD","qwerty1","QWERTY!","1q2w3e4r","1q2w3e","q1w2e3","q1w2e3r4","qweasd","QWEASD","asdzxc","ASDZXC","qweqwe","QWEQWE","asdasd","ASDASD","zxczxc","qwaszx","elite","ELITE","1qwerty","!QWERTY","black","blue","green","grey","yellow","orange","brown","support","Support","Topgun","topgun","help","Lame","hack","hunter","ranger","lamer","Lamer","hacker","Hacker","hack","summer","spring","autumn","winter","sunday","monday","tuesday","wednesda","thursday","friday","saturday","january","february","march","april","june","july","august","september","october","november","december","cool","lucky","korn ","fuck","Honda","mustang","pentium","mouse","stan","soccer","password","diablo","zoom","joker","nofear","unix","home","apache","holly"
      ,"q3rulez","pass123","magnum","mother","father","lisa","janet","helen","chocolate","Matrix","Gold","dollar","pussy","eminem","personal","zippo","jennifer","pepsi","clock","time","good","super","friend","angel","qwer","qwert","qwerty","homer","angle","johan","love","test","1q2w3e4r5t6y","31337","loll","gggg"];
      
      private static const VKONTAKTE:String = "vkontakte";
      
      private static const FACEBOOK:String = "facebook";
      
      private var pass1:TankInput;
      
      private var pass2:TankInput;
      
      private var emailInput:TankInput;
      
      private var realNameInput:TankInput;
      
      private var idNumberInput:TankInput;
      
      private var §for import§:DefaultButtonBase;
      
      private var pass1CheckIcon:InputCheckIcon;
      
      private var pass2CheckIcon:InputCheckIcon;
      
      private var emailCheckIcon:InputCheckIcon;
      
      private var passwordIsTooEasyBubble:PasswordIsTooEasyBubble;
      
      private var passwordsDoNotMatchBubble:PasswordsDoNotMatchBubble;
      
      private var errorEmailInvalodBubble:EmailInvalidBubble;
      
      private var §8!H§:DefaultButtonBase;
      
      private var §^!J§:Boolean;
      
      private var snButton:DefaultIconButton;
      
      private var snHasLinkLabel:LabelBase;
      
      private var §static set break§:DefaultButtonBase;
      
      private var §="$§:DefaultButtonBase;
      
      public var emailConfirmed:Boolean = false;
      
      public var initialRealName:String;
      
      public var initialIDNumber:String;
      
      private var §include var null§:DefaultButtonBase;
      
      private var currentSN:String;
      
      private var §include set set§:TankInput;
      
      private var §set use§:LabelBase;
      
      private var §try try§:InputCheckIcon;
      
      private var changePasswordButton:DefaultButtonBase;
      
      private var captchaSection:CaptchaSection;
      
      public function §'"T§(param1:String, param2:Boolean, param3:Boolean, param4:String, param5:String)
      {
         super();
         this.initialRealName = param4;
         this.initialIDNumber = param5;
         this.emailConfirmed = param2;
         var _loc6_:§1"C§ = new §1"C§();
         _loc6_.§1'§(MARGIN);
         _loc6_.y = 3 * MARGIN + INPUT_HEIGHT;
         if(!partnersService.isRunningInsidePartnerEnvironment())
         {
            if(param2)
            {
               _loc6_.addItem(this.§case const set§());
            }
            else
            {
               _loc6_.addItem(this.§""T§(param1));
               this.initEvents();
               this.createBubbles();
            }
         }
         if(socialNetworkService.§final set throw§(FACEBOOK) || socialNetworkService.§final set throw§(VKONTAKTE))
         {
            _loc6_.addItem(this.createSNPanel());
         }
         if(param3)
         {
            _loc6_.addItem(this.§do const for§(param1,param5,param4));
         }
         addChildAt(_loc6_,0);
      }
      
      private static function restoreInput(param1:Event) : void
      {
         var _loc2_:TankInput = param1.currentTarget as TankInput;
         _loc2_.validValue = true;
      }
      
      private static function isPasswordValid(param1:String) : Boolean
      {
         return param1 == "" || param1.length >= 4 && forbiddenPasswords.indexOf(param1.toLowerCase()) == -1;
      }
      
      private static function trimString(param1:String) : String
      {
         if(param1)
         {
            return param1.replace(/^\s+|\s+$/g,"");
         }
         return param1;
      }
      
      private function §do const for§(param1:String, param2:String, param3:String) : DisplayObject
      {
         var _loc5_:TankWindowInner = null;
         var _loc7_:LabelBase = null;
         var _loc4_:§1"C§ = new §1"C§();
         _loc4_.§1'§(§use const for§);
         _loc5_ = new TankWindowInner(SettingsWindow.§while set static§,0,TankWindowInner.TRANSPARENT);
         var _loc6_:LabelBase = new LabelBase();
         _loc6_.antiAliasType = AntiAliasType.ADVANCED;
         _loc6_.sharpness = -100;
         _loc6_.thickness = 100;
         _loc6_.text = "防沉迷验证登记";
         _loc5_.addChild(_loc6_);
         _loc4_.addItem(_loc6_);
         _loc7_ = new LabelBase();
         _loc5_.addChild(_loc7_);
         _loc7_.text = "您的真实姓名:";
         _loc7_.x = MARGIN;
         this.realNameInput = new TankInput();
         _loc5_.addChild(this.realNameInput);
         this.realNameInput.width = _loc5_.width - MARGIN * 3 - _loc7_.textWidth - 4;
         this.realNameInput.x = _loc7_.x + _loc7_.width + MARGIN;
         this.realNameInput.y = _loc5_.y + MARGIN;
         _loc7_.y = this.realNameInput.y + Math.round((this.realNameInput.height - _loc7_.textHeight) * 0.5) - 2;
         var _loc8_:LabelBase = new LabelBase();
         _loc5_.addChild(_loc8_);
         _loc8_.text = "身份证号码:";
         _loc8_.x = MARGIN;
         _loc8_.y = this.realNameInput.y + this.realNameInput.height + MARGIN + 6;
         this.idNumberInput = new TankInput();
         _loc5_.addChild(this.idNumberInput);
         this.idNumberInput.textField.text = param1;
         this.idNumberInput.x = this.realNameInput.x;
         this.idNumberInput.y = this.realNameInput.y + this.realNameInput.height + MARGIN;
         this.idNumberInput.width = this.realNameInput.width;
         this.idNumberInput.textField.text = param2 != null && param2 != "null" ? param2 : "";
         this.realNameInput.textField.text = param3 != null && param3 != "null" ? param3 : "";
         this.idNumberInput.addEventListener(LoginFormEvent.TEXT_CHANGED,this.validateAddictionID);
         this.realNameInput.addEventListener(LoginFormEvent.TEXT_CHANGED,this.validateRealName);
         this.§include var null§ = new DefaultButtonBase();
         this.§include var null§.label = localeService.getText(TanksLocale.TEXT_SETTINGS_BUTTON_SAVE_TEXT);
         this.§include var null§.addEventListener(MouseEvent.CLICK,this.§class for final§);
         _loc5_.height = MARGIN * 4 + 2 * this.realNameInput.height + this.§include var null§.height;
         this.§include var null§.x = SettingsWindow.§while set static§ - MARGIN - this.§include var null§.width;
         this.§include var null§.y = 3 * MARGIN + 2 * this.realNameInput.height;
         _loc5_.addChild(this.§include var null§);
         _loc4_.addItem(_loc5_);
         return _loc4_;
      }
      
      private function §case const set§() : TankWindowInner
      {
         var _loc1_:TankWindowInner = new TankWindowInner(SettingsWindow.§while set static§,2 * MARGIN + INPUT_HEIGHT,TankWindowInner.TRANSPARENT);
         this.§8!H§ = new DefaultButtonBase();
         this.§8!H§.width = 210;
         this.§8!H§.label = localeService.getText(TanksLocale.TEXT_SETTINGS_BUTTON_CHANGE_PASSWORD_TEXT);
         this.§8!H§.x = (SettingsWindow.§while set static§ - this.§8!H§.width) / 2;
         this.§8!H§.y = MARGIN;
         this.§8!H§.addEventListener(MouseEvent.CLICK,this.§function var static§);
         _loc1_.addChild(this.§8!H§);
         this.§5!C§(_loc1_);
         return _loc1_;
      }
      
      private function §""T§(param1:String) : TankWindowInner
      {
         var _loc2_:TankWindowInner = new TankWindowInner(SettingsWindow.§while set static§,INPUT_HEIGHT * 3 + 4 * MARGIN,TankWindowInner.TRANSPARENT);
         var _loc3_:§#"7§ = new §#"7§();
         _loc3_.§1'§(MARGIN);
         _loc3_.x = _loc3_.y = MARGIN;
         this.§set use§ = this.createLabel(localeService.getText(TanksLocale.TEXT_CURRENT_PASSWORD));
         var _loc4_:LabelBase = this.createLabel(localeService.getText(TanksLocale.TEXT_SETTINGS_NEW_PASSWORD_LABEL_TEXT));
         var _loc5_:LabelBase = this.createLabel(localeService.getText(TanksLocale.TEXT_SETTINGS_REENTER_PASSWORD_LABEL_TEXT));
         var _loc6_:int = (SettingsWindow.§while set static§ - this.§set use§.width - _loc4_.width - _loc5_.width - 7 * MARGIN) / 3 + 1;
         this.§include set set§ = new TankInput();
         this.§include set set§.hidden = true;
         this.§include set set§.width = _loc6_;
         this.§include set set§.maxChars = 20;
         this.§include set set§.validValue = true;
         this.pass1 = new TankInput();
         this.pass1.hidden = true;
         this.pass1.width = _loc6_;
         this.pass1.maxChars = 20;
         this.pass1.validValue = true;
         this.§include set set§.height = this.pass1.height;
         this.pass2 = new TankInput();
         this.pass2.hidden = true;
         this.pass2.width = _loc6_;
         this.pass2.maxChars = 20;
         this.pass2.validValue = true;
         if(localeService.language == §]r§.§@"h§)
         {
            this.pass1.x = -8;
            this.pass2.x = -10;
            if(this.§3Y§())
            {
               --this.§include set set§.x;
               this.pass1.x -= 6;
               this.pass2.x -= 10;
            }
         }
         _loc3_.addItem(this.§set use§);
         _loc3_.addItem(this.§include set set§);
         _loc3_.addItem(_loc4_);
         _loc3_.addItem(this.pass1);
         _loc3_.addItem(_loc5_);
         _loc3_.addItem(this.pass2);
         _loc3_.height = INPUT_HEIGHT;
         _loc2_.addChild(_loc3_);
         this.changePasswordButton = new DefaultButtonBase();
         this.changePasswordButton.label = localeService.getText(TanksLocale.TEXT_SETTINGS_CHANGE_PASSWORD_BUTTON);
         this.changePasswordButton.addEventListener(MouseEvent.CLICK,this.§function var var§);
         this.changePasswordButton.x = SettingsWindow.§while set static§ - MARGIN - this.changePasswordButton.width;
         this.changePasswordButton.y = 2 * MARGIN + INPUT_HEIGHT;
         _loc2_.addChild(this.changePasswordButton);
         this.§try try§ = new InputCheckIcon();
         this.§try try§.x = this.§include set set§.x + _loc6_ - this.§try try§.width / 2 - §-!A§;
         this.§try try§.y = this.§include set set§.y + MARGIN + §-!A§;
         this.§try try§.visible = false;
         this.§try try§.gotoAndStop(CallsignIconStates.CALLSIGN_ICON_STATE_INVALID);
         this.pass1CheckIcon = new InputCheckIcon();
         this.pass2CheckIcon = new InputCheckIcon();
         this.pass1CheckIcon.x = this.pass1.x + _loc6_ - this.pass1CheckIcon.width / 2 - §-!A§;
         this.pass1CheckIcon.y = this.pass1.y + MARGIN + §-!A§;
         this.pass1State = CallsignIconStates.CALLSIGN_ICON_STATE_OFF;
         this.pass2CheckIcon.x = this.pass2.x + _loc6_ - this.pass2CheckIcon.width / 2 - §-!A§;
         this.pass2CheckIcon.y = this.pass2.y + MARGIN + §-!A§;
         this.pass2State = CallsignIconStates.CALLSIGN_ICON_STATE_OFF;
         _loc2_.addChild(this.§try try§);
         _loc2_.addChild(this.pass1CheckIcon);
         _loc2_.addChild(this.pass2CheckIcon);
         var _loc7_:DisplayObject = this.§false class§(param1);
         _loc7_.height = INPUT_HEIGHT;
         _loc7_.x = MARGIN;
         _loc7_.y = _loc3_.height + this.changePasswordButton.height + 3 * MARGIN;
         _loc2_.addChild(_loc7_);
         this.emailCheckIcon = new InputCheckIcon();
         this.emailCheckIcon.x = this.emailInput.x + this.emailInput.width - this.emailCheckIcon.width / 2 - §-!A§;
         this.emailCheckIcon.y = _loc7_.y + §-!A§;
         this.emailState = CallsignIconStates.CALLSIGN_ICON_STATE_OFF;
         _loc2_.addChild(this.emailCheckIcon);
         this.§5!C§(_loc2_);
         return _loc2_;
      }
      
      private function §5!C§(param1:TankWindowInner) : void
      {
         var §8!V§:TankWindowInner = param1;
         var §&!9§:TankWindowInner = §8!V§;
         this.captchaSection = new CaptchaSection();
         this.captchaSection.§""6§();
         this.captchaSection.refreshButton.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            dispatchEvent(new RefreshCaptchaClickedEvent());
         });
         this.captchaSection.x = (§&!9§.width - this.captchaSection.width) / 2;
         this.captchaSection.y = MARGIN + §&!9§.height;
         this.captchaSection.visible = true;
         §&!9§.height += this.captchaSection.height + 2 * MARGIN;
         §&!9§.addChild(this.captchaSection);
         dispatchEvent(new RefreshCaptchaClickedEvent());
      }
      
      public function §>!K§(param1:Bitmap) : void
      {
         if(this.captchaSection)
         {
            this.captchaSection.captcha = param1;
         }
      }
      
      public function §else var do§() : String
      {
         if(this.captchaSection)
         {
            return this.captchaSection.captchaAnswer.value;
         }
         return "";
      }
      
      private function §3Y§() : Boolean
      {
         var _loc1_:String = Capabilities.os;
         return _loc1_.indexOf("Windows") >= 0 || _loc1_.indexOf("Mac") >= 0;
      }
      
      private function §false class§(param1:String) : DisplayObject
      {
         var _loc2_:§#"7§ = new §#"7§();
         _loc2_.§1'§(MARGIN);
         var _loc3_:LabelBase = this.createLabel(localeService.getText(TanksLocale.TEXT_SETTINGS_EMAIL_LABEL_TEXT));
         this.§for import§ = new DefaultButtonBase();
         this.§for import§.label = localeService.getText(TanksLocale.TEXT_SETTINGS_LINK_EMAIL_BUTTON);
         this.§for import§.addEventListener(MouseEvent.CLICK,this.§6V§);
         this.emailInput = new TankInput();
         this.emailInput.value = param1;
         this.emailInput.validValue = true;
         this.emailInput.width = SettingsWindow.§while set static§ - 4 * MARGIN - _loc3_.width - this.§for import§.width;
         if(localeService.language == §]r§.§@"h§)
         {
            this.emailInput.width += 3;
            if(this.§3Y§())
            {
               this.emailInput.width -= 4;
            }
         }
         _loc2_.addItem(_loc3_);
         _loc2_.addItem(this.emailInput);
         _loc2_.addItem(this.§for import§);
         return _loc2_;
      }
      
      private function createLabel(param1:String) : LabelBase
      {
         var _loc2_:LabelBase = new LabelBase();
         _loc2_.text = param1;
         _loc2_.y = Math.round((INPUT_HEIGHT - _loc2_.textHeight) * 0.5) - 2;
         return _loc2_;
      }
      
      private function §class for final§(param1:MouseEvent) : void
      {
         if(this.realName != "" && this.idNumber != "")
         {
            dispatchEvent(new §6!U§(§6!U§.§"l§));
         }
      }
      
      private function §6V§(param1:MouseEvent) : void
      {
         if(!this.emailConfirmed && this.email != null)
         {
            dispatchEvent(new §6!U§(§6!U§.SET_EMAIL));
         }
      }
      
      private function §function var var§(param1:MouseEvent = null) : void
      {
         if(this.emailConfirmed || !this.§include set set§.visible || this.§2!i§() == "" && this.password == "")
         {
            dispatchEvent(new §6!U§(§6!U§.CHANGE_PASSWORD));
         }
         else
         {
            dispatchEvent(new §6!U§(§6!U§.§!"c§));
         }
      }
      
      override public function show() : void
      {
         display.stage.addEventListener(Event.RESIZE,this.§!!S§);
         this.§!!S§();
         this.showHelpers();
      }
      
      override public function hide() : void
      {
         this.§2"g§();
         display.stage.removeEventListener(Event.RESIZE,this.§!!S§);
      }
      
      private function §2"g§() : void
      {
         helperService.hideHelper(HELPER_GROUP_KEY,PASSWORD_IS_TOO_EASY);
         helperService.hideHelper(HELPER_GROUP_KEY,PASSWORDS_DO_NOT_MATCH);
         helperService.hideHelper(HELPER_GROUP_KEY,ERROR_EMAIL_INVALID);
      }
      
      private function showHelpers() : void
      {
         if(this.emailInput != null)
         {
            this.§"f§();
         }
         if(!this.emailConfirmed && this.pass1 != null)
         {
            this.updatePasswordBlock();
         }
      }
      
      private function §"f§(param1:Event = null) : void
      {
         if(partnersService.isRunningInsidePartnerEnvironment() || this.emailConfirmed)
         {
            return;
         }
         var _loc2_:Boolean = true;
         if(this.emailInput.value.length > 0)
         {
            _loc2_ = validateService.isEmailValid(this.emailInput.value);
         }
         if(!_loc2_)
         {
            helperService.showHelper(HELPER_GROUP_KEY,ERROR_EMAIL_INVALID,true);
         }
         else
         {
            helperService.hideHelper(HELPER_GROUP_KEY,ERROR_EMAIL_INVALID);
         }
         if(_loc2_)
         {
            this.emailInput.validValue = true;
            this.emailState = this.emailInput.value == "" ? int(CallsignIconStates.CALLSIGN_ICON_STATE_OFF) : int(CallsignIconStates.CALLSIGN_ICON_STATE_VALID);
         }
         else
         {
            this.emailInput.validValue = false;
            this.emailState = CallsignIconStates.CALLSIGN_ICON_STATE_INVALID;
         }
         this.§for import§.enable = _loc2_;
      }
      
      private function updatePasswordBlock(param1:Event = null) : void
      {
         if(partnersService.isRunningInsidePartnerEnvironment() || this.emailConfirmed)
         {
            return;
         }
         this.pass1.validValue = isPasswordValid(this.pass1.value);
         this.pass1State = CallsignIconStates.CALLSIGN_ICON_STATE_INVALID;
         var _loc2_:Boolean = true;
         this.pass2.validValue = this.pass2.value == "" || this.pass1.value == this.pass2.value;
         this.pass2State = CallsignIconStates.CALLSIGN_ICON_STATE_INVALID;
         if(this.pass1.value == "")
         {
            this.pass1State = CallsignIconStates.CALLSIGN_ICON_STATE_OFF;
            _loc2_ = false;
         }
         else if(this.pass1.validValue)
         {
            this.pass1State = CallsignIconStates.CALLSIGN_ICON_STATE_VALID;
            _loc2_ = false;
         }
         if(this.pass2.value == "")
         {
            this.pass2State = CallsignIconStates.CALLSIGN_ICON_STATE_OFF;
         }
         else if(this.pass2.validValue)
         {
            this.pass2State = CallsignIconStates.CALLSIGN_ICON_STATE_VALID;
         }
         var _loc3_:* = !(_loc2_ || this.pass2.validValue);
         if(_loc2_)
         {
            helperService.showHelper(HELPER_GROUP_KEY,PASSWORD_IS_TOO_EASY,true);
         }
         else
         {
            helperService.hideHelper(HELPER_GROUP_KEY,PASSWORD_IS_TOO_EASY);
         }
         if(_loc3_)
         {
            helperService.showHelper(HELPER_GROUP_KEY,PASSWORDS_DO_NOT_MATCH,true);
         }
         else
         {
            helperService.hideHelper(HELPER_GROUP_KEY,PASSWORDS_DO_NOT_MATCH);
         }
         this.changePasswordButton.enable = this.pass1.value == this.pass2.value && this.pass1.validValue && this.pass2.validValue;
      }
      
      private function createSNPanel() : TankWindowInner
      {
         var _loc1_:LabelBase = null;
         var _loc2_:Bitmap = null;
         var _loc3_:Bitmap = null;
         var _loc4_:Boolean = false;
         var _loc5_:TankWindowInner = new TankWindowInner(SettingsWindow.§while set static§,0,TankWindowInner.TRANSPARENT);
         this.§^!J§ = socialNetworkService.§final set throw§(VKONTAKTE) && socialNetworkService.§final set throw§(FACEBOOK);
         var _loc6_:Sprite = new Sprite();
         if(this.§^!J§)
         {
            _loc1_ = new LabelBase();
            _loc1_.text = localeService.getText(TanksLocale.TEXT_SETTINGS_ACCOUNT_ACCESS);
            _loc1_.y = 5;
            _loc6_.addChild(_loc1_);
            _loc2_ = §,d§.§=!#§();
            _loc3_ = §,d§.§class set switch§();
            this.§static set break§ = new DefaultButtonBase();
            this.§="$§ = new DefaultButtonBase();
            _loc2_.y = _loc1_.y + _loc1_.height + MARGIN;
            _loc6_.addChild(_loc2_);
            this.§static set break§.label = socialNetworkService.§dynamic for switch§(VKONTAKTE) ? localeService.getText(TanksLocale.TEXT_SETTINGS_UNLINK) : localeService.getText(TanksLocale.TEXT_SETTINGS_LINK);
            this.§static set break§.y = _loc1_.y + _loc1_.height + MARGIN;
            this.§static set break§.x = _loc2_.x + _loc2_.width + MARGIN;
            _loc6_.addChild(this.§static set break§);
            _loc3_.x = this.§static set break§.x + this.§static set break§.width + 5 * MARGIN;
            _loc3_.y = _loc1_.y + _loc1_.height + MARGIN;
            _loc6_.addChild(_loc3_);
            this.§="$§.label = socialNetworkService.§dynamic for switch§(FACEBOOK) ? localeService.getText(TanksLocale.TEXT_SETTINGS_UNLINK) : localeService.getText(TanksLocale.TEXT_SETTINGS_LINK);
            this.§="$§.y = _loc1_.y + _loc1_.height + MARGIN;
            this.§="$§.x = _loc3_.x + _loc3_.width + MARGIN;
            _loc6_.addChild(this.§="$§);
            _loc1_.x = (_loc6_.width - _loc1_.width) / 2;
            this.§static set break§.addEventListener(MouseEvent.CLICK,this.§8"-§);
            this.§="$§.addEventListener(MouseEvent.CLICK,this.§with for super§);
         }
         else
         {
            this.currentSN = socialNetworkService.§final set throw§(VKONTAKTE) ? VKONTAKTE : FACEBOOK;
            _loc4_ = socialNetworkService.§dynamic for switch§(this.currentSN);
            this.snHasLinkLabel = new LabelBase();
            this.snHasLinkLabel.text = _loc4_ ? localeService.getText(TanksLocale.TEXT_SETTINGS_UNLINK_ACCOUNT) : localeService.getText(TanksLocale.TEXT_SETTINGS_LINK_ACCOUNT);
            _loc6_.addChild(this.snHasLinkLabel);
            this.snButton = this.currentSN == VKONTAKTE ? new VKButton() : new FBButton();
            this.snButton.width = 102;
            this.snButton.x = this.snHasLinkLabel.x + this.snHasLinkLabel.width + 5;
            this.snHasLinkLabel.y = this.snButton.y + 7;
            _loc6_.addChild(this.snButton);
            _loc6_.y = MARGIN;
            this.snButton.addEventListener(MouseEvent.CLICK,this.§implements while§);
         }
         _loc6_.x = (SettingsWindow.§while set static§ - _loc6_.width) / 2;
         _loc5_.height = _loc6_.height + 2 * MARGIN;
         _loc5_.addChild(_loc6_);
         socialNetworkService.addEventListener(SocialNetworkServiceEvent.UNLINK_SUCCESS,this.onUnlinkSuccess);
         socialNetworkService.addEventListener(SocialNetworkServiceEvent.LINK_SUCCESS,this.onLinkSuccess);
         return _loc5_;
      }
      
      private function onLinkSuccess(param1:SocialNetworkServiceEvent) : void
      {
         if(this.§^!J§)
         {
            this.§,s§(param1.socialNetworkId,true);
         }
         else
         {
            this.snHasLinkLabel.text = localeService.getText(TanksLocale.TEXT_SETTINGS_UNLINK_ACCOUNT);
            this.snButton.x = this.snHasLinkLabel.x + this.snHasLinkLabel.width + 5;
         }
      }
      
      private function onUnlinkSuccess(param1:SocialNetworkServiceEvent) : void
      {
         if(this.§^!J§)
         {
            this.§,s§(param1.socialNetworkId,false);
         }
         else
         {
            this.snHasLinkLabel.text = localeService.getText(TanksLocale.TEXT_SETTINGS_LINK_ACCOUNT);
            this.snButton.x = this.snHasLinkLabel.x + this.snHasLinkLabel.width + 5;
         }
      }
      
      private function §,s§(param1:String, param2:Boolean) : void
      {
         if(param1 == VKONTAKTE)
         {
            this.§static set break§.label = localeService.getText(param2 ? TanksLocale.TEXT_SETTINGS_UNLINK : TanksLocale.TEXT_SETTINGS_LINK);
         }
         else
         {
            this.§="$§.label = localeService.getText(param2 ? TanksLocale.TEXT_SETTINGS_UNLINK : TanksLocale.TEXT_SETTINGS_LINK);
         }
      }
      
      private function §implements while§(param1:MouseEvent) : void
      {
         this.§return finally§(this.currentSN);
      }
      
      private function §8"-§(param1:MouseEvent) : void
      {
         this.§return finally§(VKONTAKTE);
      }
      
      private function §with for super§(param1:MouseEvent) : void
      {
         this.§return finally§(FACEBOOK);
      }
      
      private function §return finally§(param1:String) : void
      {
         if(socialNetworkService.§dynamic for switch§(param1))
         {
            socialNetworkService.§case set finally§(param1);
         }
         else
         {
            socialNetworkService.§use const finally§(param1);
         }
      }
      
      private function initEvents() : void
      {
         this.pass1.addEventListener(FocusEvent.FOCUS_IN,restoreInput);
         this.pass2.addEventListener(FocusEvent.FOCUS_IN,restoreInput);
         this.emailInput.addEventListener(FocusEvent.FOCUS_IN,restoreInput);
         this.pass1.addEventListener(Event.CHANGE,this.updatePasswordBlock);
         this.pass1.addEventListener(FocusEvent.FOCUS_IN,this.updatePasswordBlock);
         this.pass2.addEventListener(Event.CHANGE,this.updatePasswordBlock);
         this.pass2.addEventListener(FocusEvent.FOCUS_IN,this.updatePasswordBlock);
         this.emailInput.addEventListener(FocusEvent.FOCUS_IN,this.§"f§);
         this.emailInput.addEventListener(Event.CHANGE,this.§"f§);
         this.§include set set§.addEventListener(FocusEvent.FOCUS_IN,this.§5!V§);
         this.§include set set§.addEventListener(Event.CHANGE,this.§5!V§);
      }
      
      private function validateRealName(param1:LoginFormEvent) : void
      {
         var _loc2_:String = null;
         if(this.realNameInput != null)
         {
            _loc2_ = trimString(this.realNameInput.textField.text);
            this.realNameInput.validValue = validateService.isChinaNameValid(_loc2_) || _loc2_.length == 0;
         }
      }
      
      private function validateAddictionID(param1:LoginFormEvent) : void
      {
         var _loc2_:String = null;
         if(this.idNumberInput != null)
         {
            _loc2_ = this.idNumberInput.textField.text;
            this.idNumberInput.validValue = validateService.isChinaCardIdValid(_loc2_) || _loc2_.length == 0;
         }
      }
      
      private function §function var static§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6!U§(§6!U§.§null var for§));
      }
      
      public function §`!g§() : void
      {
         this.§8!H§.enable = false;
         if(this.captchaSection)
         {
            this.captchaSection.setEnabled(false);
         }
      }
      
      private function §5!V§(param1:Event) : void
      {
         this.§try try§.visible = false;
         this.§include set set§.validValue = true;
      }
      
      public function §final for extends§() : void
      {
         this.§include set set§.validValue = false;
         this.§try try§.visible = true;
      }
      
      public function §5";§() : void
      {
         if(this.§set use§ != null)
         {
            this.§include set set§.visible = false;
            this.§set use§.visible = false;
         }
      }
      
      public function set pass1State(param1:int) : void
      {
         if(param1 == CallsignIconStates.CALLSIGN_ICON_STATE_OFF)
         {
            this.pass1CheckIcon.visible = false;
         }
         else
         {
            this.pass1CheckIcon.visible = true;
            this.pass1CheckIcon.gotoAndStop(param1);
         }
      }
      
      public function set pass2State(param1:int) : void
      {
         if(param1 == CallsignIconStates.CALLSIGN_ICON_STATE_OFF)
         {
            this.pass2CheckIcon.visible = false;
         }
         else
         {
            this.pass2CheckIcon.visible = true;
            this.pass2CheckIcon.gotoAndStop(param1);
         }
      }
      
      public function set emailState(param1:int) : void
      {
         if(param1 == CallsignIconStates.CALLSIGN_ICON_STATE_OFF)
         {
            this.emailCheckIcon.visible = false;
         }
         else
         {
            this.emailCheckIcon.visible = true;
            this.emailCheckIcon.gotoAndStop(param1);
         }
      }
      
      private function createBubbles() : void
      {
         this.passwordIsTooEasyBubble = new PasswordIsTooEasyBubble();
         this.passwordsDoNotMatchBubble = new PasswordsDoNotMatchBubble();
         this.errorEmailInvalodBubble = new EmailInvalidBubble();
         helperService.registerHelper(HELPER_GROUP_KEY,PASSWORD_IS_TOO_EASY,this.passwordIsTooEasyBubble,false);
         helperService.registerHelper(HELPER_GROUP_KEY,PASSWORDS_DO_NOT_MATCH,this.passwordsDoNotMatchBubble,false);
         helperService.registerHelper(HELPER_GROUP_KEY,ERROR_EMAIL_INVALID,this.errorEmailInvalodBubble,false);
      }
      
      private function §!!S§(param1:Event = null) : void
      {
         var _loc2_:int = 0;
         if(parent != null)
         {
            _loc2_ = INPUT_HEIGHT + 3 * MARGIN;
            if(this.passwordIsTooEasyBubble != null)
            {
               this.passwordIsTooEasyBubble.targetPoint = new Point(this.pass1CheckIcon.x + this.pass1CheckIcon.width / 2 + this.x + parent.x,_loc2_ + this.pass1CheckIcon.y + this.pass1CheckIcon.height / 2 + this.y + parent.y);
            }
            if(this.passwordsDoNotMatchBubble != null)
            {
               this.passwordsDoNotMatchBubble.targetPoint = new Point(this.pass2CheckIcon.x + this.pass2CheckIcon.width / 2 + this.x + parent.x,_loc2_ + this.pass2CheckIcon.y + this.pass2CheckIcon.height / 2 + this.y + parent.y);
            }
            if(this.errorEmailInvalodBubble != null)
            {
               this.errorEmailInvalodBubble.targetPoint = new Point(this.emailCheckIcon.x + this.emailCheckIcon.width / 2 + this.x + parent.x,_loc2_ + this.emailCheckIcon.y + this.emailCheckIcon.height / 2 + this.y + parent.y);
            }
         }
      }
      
      public function get password() : String
      {
         var _loc1_:String = "";
         if(!this.emailConfirmed)
         {
            if(this.pass1.textField.text)
            {
               if(this.pass1.textField.text == this.pass2.textField.text)
               {
                  _loc1_ = this.pass1.textField.text;
               }
            }
         }
         return _loc1_;
      }
      
      public function get email() : String
      {
         if(this.emailConfirmed)
         {
            return "";
         }
         if(this.emailInput.textField.text.indexOf("*") != -1)
         {
            return null;
         }
         return this.emailInput.textField.text;
      }
      
      public function get realName() : String
      {
         if(this.realNameInput != null && this.realNameInput.textField.text != null && trimString(this.realNameInput.textField.text).length > 0)
         {
            return this.realNameInput.textField.text;
         }
         return "";
      }
      
      public function get idNumber() : String
      {
         if(this.idNumberInput != null && this.idNumberInput.textField.text != null && trimString(this.idNumberInput.textField.text).length > 0)
         {
            return this.idNumberInput.textField.text;
         }
         return "";
      }
      
      public function §2!i§() : String
      {
         return this.§include set set§ != null ? this.§include set set§.value : "";
      }
      
      override public function destroy() : void
      {
         if(!this.emailConfirmed)
         {
            this.changePasswordButton.removeEventListener(MouseEvent.CLICK,this.§function var var§);
            this.§for import§.removeEventListener(MouseEvent.CLICK,this.§6V§);
            this.pass1.removeEventListener(FocusEvent.FOCUS_IN,restoreInput);
            this.pass2.removeEventListener(FocusEvent.FOCUS_IN,restoreInput);
            this.emailInput.removeEventListener(FocusEvent.FOCUS_IN,restoreInput);
            this.pass1.removeEventListener(Event.CHANGE,this.updatePasswordBlock);
            this.pass1.removeEventListener(FocusEvent.FOCUS_IN,this.updatePasswordBlock);
            this.pass2.removeEventListener(Event.CHANGE,this.updatePasswordBlock);
            this.pass2.removeEventListener(FocusEvent.FOCUS_IN,this.updatePasswordBlock);
            this.emailInput.removeEventListener(FocusEvent.FOCUS_IN,this.§"f§);
            this.emailInput.removeEventListener(Event.CHANGE,this.§"f§);
            this.§include set set§.removeEventListener(FocusEvent.FOCUS_IN,this.§5!V§);
            this.§include set set§.removeEventListener(Event.CHANGE,this.§5!V§);
         }
         if(this.§include var null§)
         {
            this.§include var null§.removeEventListener(MouseEvent.CLICK,this.§class for final§);
         }
         helperService.unregisterHelper(HELPER_GROUP_KEY,PASSWORD_IS_TOO_EASY);
         helperService.unregisterHelper(HELPER_GROUP_KEY,PASSWORDS_DO_NOT_MATCH);
         helperService.unregisterHelper(HELPER_GROUP_KEY,ERROR_EMAIL_INVALID);
         if(!this.emailConfirmed)
         {
            this.§include set set§.removeEventListener(FocusEvent.FOCUS_IN,this.§5!V§);
            this.§include set set§.removeEventListener(Event.CHANGE,this.§5!V§);
         }
         super.destroy();
      }
   }
}

