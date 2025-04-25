package §#"a§
{
   import §1!r§.§##§;
   import §1!r§.§^!K§;
   import §@"A§.§else var try§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.dailyquest.DailyQuestNotifierService;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.types.Long;
   import controls.base.DefaultButtonBase;
   import controls.base.LabelBase;
   import controls.timer.CountDownTimer;
   import controls.timer.CountDownTimerOnCompleteAfter;
   import §finally for else§.§case include§;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   import forms.TankWindowWithHeader;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.gui.DialogWindow;
   
   public class §use for var§ extends DialogWindow implements CountDownTimerOnCompleteAfter
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var moneyService:IMoneyService;
      
      [Inject]
      public static var §+!$§:DailyQuestNotifierService;
      
      public static const §package switch§:int = 280;
      
      public static const §%!h§:int = 310;
      
      public static const WINDOW_MARGIN:int = 11;
      
      private const §continue class§:int = 13;
      
      private const §const for include§:int = 1000;
      
      private var window:TankWindowWithHeader;
      
      private var closeButton:DefaultButtonBase;
      
      private var §null const true§:Vector.<§?!a§> = new Vector.<§?!a§>();
      
      private var infoLink:LabelBase;
      
      private var §false case§:§function const implements§;
      
      private var §0m§:CountDownTimer;
      
      private var §,!t§:Boolean;
      
      private var §default set dynamic§:Boolean;
      
      public function §use for var§()
      {
         super();
         this.§set const each§();
         this.§while set var§();
         this.§extends for each§();
         this.§dynamic for catch§();
      }
      
      private function §while set var§() : void
      {
         this.§false case§ = new §function const implements§();
         this.§false case§.x = WINDOW_MARGIN;
         this.§false case§.y = WINDOW_MARGIN;
         addChild(this.§false case§);
      }
      
      private function §set const each§() : void
      {
         this.window = TankWindowWithHeader.createWindow(TanksLocale.IMAGE_HEADER_NEWS,§package switch§ + WINDOW_MARGIN * 2,0);
         addChild(this.window);
      }
      
      private function §extends for each§() : void
      {
         this.closeButton = new DefaultButtonBase();
         this.closeButton.label = localeService.getText(TanksLocale.TEXT_CLOSE_LABEL);
         this.closeButton.addEventListener(MouseEvent.CLICK,this.onCloseButtonClick);
         this.window.addChild(this.closeButton);
      }
      
      private function §dynamic for catch§() : void
      {
         this.infoLink = new LabelBase();
         this.infoLink.htmlText = localeService.getText(TanksLocale.TEXT_DAILY_QUEST_INFORMATION);
         this.window.addChild(this.infoLink);
      }
      
      public function init(param1:Vector.<§case include§>) : void
      {
         §+!$§.hideNotification();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§`5§(param1[_loc2_],_loc2_);
            _loc2_++;
         }
         this.§continue for return§();
      }
      
      private function §`5§(param1:§case include§, param2:int) : void
      {
         var _loc3_:§?!a§ = new §?!a§(param1);
         _loc3_.addEventListener(§##§.DAILY_QUEST_CHANGE,this.§if var var§);
         _loc3_.x = §package switch§ * param2 + WINDOW_MARGIN + int(WINDOW_MARGIN / 2) * param2;
         _loc3_.y = WINDOW_MARGIN + §function const implements§.HEIGHT + WINDOW_MARGIN;
         this.§null const true§.push(_loc3_);
         this.window.addChild(_loc3_);
      }
      
      private function §if var var§(param1:§##§) : void
      {
         if(param1.§function var const§.canSkipForFree || moneyService.§",§(param1.§function var const§.skipCost))
         {
            this.§,!t§ = false;
            this.§#C§();
         }
         else
         {
            this.onCloseButtonClick();
         }
      }
      
      private function §#C§() : void
      {
         this.§continue var finally§();
         this.§[!T§();
      }
      
      private function §[!T§() : void
      {
         this.§0m§ = new CountDownTimer();
         this.§0m§.addListener(CountDownTimerOnCompleteAfter,this);
         this.§0m§.start(getTimer() + this.§const for include§);
         this.§default set dynamic§ = true;
      }
      
      private function §continue var finally§() : void
      {
         var _loc1_:§?!a§ = null;
         for each(_loc1_ in this.§null const true§)
         {
            if(_loc1_.§?§())
            {
               _loc1_.§package set null§();
            }
         }
      }
      
      public function § v§(param1:Long, param2:§case include§) : void
      {
         var _loc3_:§?!a§ = null;
         for each(_loc3_ in this.§null const true§)
         {
            if(_loc3_.§+"D§() == param1)
            {
               _loc3_.§switch set false§(param2);
            }
            if(_loc3_.§?§())
            {
               _loc3_.§@"^§(param2.skipCost);
            }
         }
         this.§continue for return§();
         this.§,!t§ = true;
         if(!this.§default set dynamic§)
         {
            this.§if var in§();
         }
      }
      
      private function §continue for return§() : void
      {
         var _loc1_:int = this.§function in§();
         this.§4!W§(_loc1_);
         this.§import var finally§();
         this.§true set else§(_loc1_);
      }
      
      private function §import var finally§() : void
      {
         var _loc1_:uint = this.§null const true§.length;
         this.window.width = _loc1_ * §package switch§ + WINDOW_MARGIN * 2 + int(WINDOW_MARGIN / 2) * (_loc1_ - 1);
         this.§,!n§();
      }
      
      private function §,!n§() : void
      {
         this.closeButton.x = int(this.window.width - this.closeButton.width - WINDOW_MARGIN);
         this.infoLink.x = WINDOW_MARGIN;
      }
      
      private function §function in§() : int
      {
         var _loc1_:§?!a§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§null const true§)
         {
            _loc2_ = Math.max(_loc2_,_loc1_.§,",§());
         }
         return _loc2_;
      }
      
      private function §4!W§(param1:int) : void
      {
         var _loc2_:§?!a§ = null;
         for each(_loc2_ in this.§null const true§)
         {
            _loc2_.§-!g§(param1);
         }
      }
      
      public function §2!h§() : void
      {
         this.window.width = §%!h§ + WINDOW_MARGIN * 2;
         this.§,!n§();
         var _loc1_:§native const native§ = new §native const native§();
         _loc1_.x = WINDOW_MARGIN;
         _loc1_.y = WINDOW_MARGIN + §function const implements§.HEIGHT + WINDOW_MARGIN;
         this.window.addChild(_loc1_);
         this.§true set else§(_loc1_.§,",§());
         this.§false case§.redraw(this.window.width - 2 * WINDOW_MARGIN);
      }
      
      public function §+!L§(param1:§else var try§) : void
      {
         this.§false case§.init(param1);
         this.§false case§.redraw(this.window.width - 2 * WINDOW_MARGIN);
      }
      
      private function §true set else§(param1:int) : void
      {
         this.window.height = this.§continue class§ + this.closeButton.height + WINDOW_MARGIN + param1 + WINDOW_MARGIN + §function const implements§.HEIGHT + WINDOW_MARGIN;
         this.closeButton.y = int(this.window.height - this.closeButton.height - WINDOW_MARGIN);
         this.infoLink.y = int(this.window.height - this.infoLink.height - WINDOW_MARGIN);
      }
      
      public function show() : void
      {
         dialogService.enqueueDialog(this);
      }
      
      public function takePrize(param1:Long) : void
      {
         this.§function const override§(param1);
         if(this.§null const true§.length > 0)
         {
            this.§native set import§();
            this.§continue for return§();
         }
         else
         {
            this.§2!h§();
         }
         this.§false case§.§1!d§(this.window.width - 2 * WINDOW_MARGIN);
         dialogService.centerDialog(this);
      }
      
      private function §function const override§(param1:Long) : void
      {
         var _loc2_:§?!a§ = null;
         for each(_loc2_ in this.§null const true§)
         {
            if(_loc2_.§+"D§() == param1)
            {
               this.§true set null§(_loc2_);
               this.window.removeChild(_loc2_);
               this.§null const true§.splice(this.§null const true§.indexOf(_loc2_),1);
               break;
            }
         }
      }
      
      private function §native set import§() : void
      {
         var _loc1_:§?!a§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§null const true§.length)
         {
            _loc1_ = this.§null const true§[_loc2_];
            _loc1_.x = §package switch§ * _loc2_ + WINDOW_MARGIN + int(WINDOW_MARGIN / 2) * _loc2_;
            _loc2_++;
         }
      }
      
      private function onCloseButtonClick(param1:MouseEvent = null) : void
      {
         this.removeListeners();
         this.§-§();
         dispatchEvent(new §^!K§(§^!K§.§>!F§));
         dialogService.removeDialog(this);
      }
      
      private function removeListeners() : void
      {
         var _loc1_:§?!a§ = null;
         this.closeButton.removeEventListener(MouseEvent.CLICK,this.onCloseButtonClick);
         for each(_loc1_ in this.§null const true§)
         {
            this.§true set null§(_loc1_);
         }
      }
      
      private function §true set null§(param1:§?!a§) : void
      {
         param1.removeEventListener(§##§.DAILY_QUEST_CHANGE,this.§if var var§);
         if(param1.§?§())
         {
            param1.§9"a§();
         }
      }
      
      override protected function cancelKeyPressed() : void
      {
         this.onCloseButtonClick();
      }
      
      override protected function confirmationKeyPressed() : void
      {
         this.onCloseButtonClick();
      }
      
      public function onCompleteAfter(param1:CountDownTimer, param2:Boolean) : void
      {
         this.§-§();
         if(this.§,!t§)
         {
            this.§if var in§();
         }
      }
      
      private function §-§() : void
      {
         if(this.§0m§ != null)
         {
            this.§0m§.removeListener(CountDownTimerOnCompleteAfter,this);
            this.§0m§.destroy();
            this.§default set dynamic§ = false;
         }
      }
      
      private function §if var in§() : void
      {
         var _loc1_:§?!a§ = null;
         for each(_loc1_ in this.§null const true§)
         {
            if(_loc1_.§?§())
            {
               _loc1_.§1"5§();
            }
         }
      }
      
      override public function get width() : Number
      {
         return this.window.width;
      }
   }
}

