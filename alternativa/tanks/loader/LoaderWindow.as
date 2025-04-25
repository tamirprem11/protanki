package alternativa.tanks.loader
{
   import alternativa.init.TanksServicesActivator;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.utils.TransparentJPG;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class LoaderWindow extends Sprite implements ILoaderWindowService
   {
      private static const showDelay:int = 1000;
      
      private static const hideDelay:int = 10000;
      
      private static const nextTipDelay:int = 9000;
      
      private static const WindowRGB:Class = LoaderWindow_WindowRGB;
      
      private static const WindowRGBChina:Class = LoaderWindow_WindowRGBChina;
      
      private static const WindowAlpha:Class = LoaderWindow_WindowAlpha;
      
      private static const ProcessBar:Class = LoaderBar;
      
      private var layer:DisplayObjectContainer;
      
      private var windowBmp:Bitmap;
      
      private var tipBlock:TipBlock;
      
      private const bar:MovieClip = new ProcessBar();
      
      private var showTimer:Timer;
      
      private var hideTimer:Timer;
      
      private var nextTipTimer:Timer;
      
      private var resourcesId:Array;
      
      private var lock:Boolean = false;
      
      private var tips:Array = [];
      
      public function LoaderWindow()
      {
         super();
         this.layer = (TanksServicesActivator.osgi.getService(IDisplay) as IDisplay).systemUILayer;
         this.resourcesId = new Array();
         var _loc1_:BitmapData = this.getLoaderBackgroundBitmap(TanksServicesActivator.osgi.getService(ILocaleService) as ILocaleService);
         this.windowBmp = TransparentJPG.createImageFromRGBAndAlpha(_loc1_,new WindowAlpha().bitmapData);
         addChild(this.windowBmp);
         this.tipBlock = new TipBlock();
         addChild(this.tipBlock);
         this.bar.x = 10;
         this.bar.y = 239;
         addChild(this.bar);
         this.showTimer = new Timer(showDelay,1);
         this.hideTimer = new Timer(hideDelay,1);
         this.nextTipTimer = new Timer(nextTipDelay,1);
         this.showTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onShowTimerComplemete);
         this.hideTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onHideTimerComplemete);
         this.nextTipTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onNextTipTimerComplete);
      }
      
      private function getLoaderBackgroundBitmap(param1:ILocaleService) : BitmapData
      {
         if(param1.language == "cn")
         {
            return new WindowRGBChina().bitmapData;
         }
         return new WindowRGB().bitmapData;
      }
      
      public function setBatchIdForProcess(param1:int, param2:Object) : void
      {
      }
      
      public function showTip(param1:DisplayObject) : void
      {
         this.tips.push(param1);
      }
      
      private function onNextTipTimerComplete(param1:TimerEvent) : void
      {
         var _loc2_:ILoaderTipsService = OSGi.getInstance().getService(ILoaderTipsService) as ILoaderTipsService;
         (OSGi.getInstance().getService(IClientLog) as IClientLog).log("loader","==\nLoaderWindow::onNextTipTimerComplete %1\n==",getTimer());
         if(this.tips[0] is DisplayObject)
         {
            this.tipBlock.showTip(this.tips.shift());
         }
         if(_loc2_ != null)
         {
            _loc2_.getTip(ILocaleService(OSGi.getInstance().getService(ILocaleService)).language);
         }
         this.nextTipTimer.stop();
         this.nextTipTimer.reset();
         this.nextTipTimer.start();
      }
      
      public function processStarted(param1:Object) : void
      {
         this.hideTimer.stop();
         if(this.resourcesId.indexOf(param1) == -1)
         {
            this.resourcesId.push(param1);
         }
         if(!this.lock && !this.showTimer.running && !this.layer.contains(this))
         {
            this.showTimer.reset();
            this.showTimer.start();
         }
      }
      
      public function showLoaderWindow() : void
      {
         (OSGi.getInstance().getService(IClientLog) as IClientLog).log("loader","==\nLoaderWindow::showLoaderWindow %1\n==",getTimer());
         this.onShowTimerComplemete();
      }
      
      public function hideLoaderWindow() : void
      {
         (OSGi.getInstance().getService(IClientLog) as IClientLog).log("loader","==\nLoaderWindow::hideLoaderWindow %1\n==",getTimer());
         this.showTimer.stop();
         this.onHideTimerComplemete();
      }
      
      public function lockLoaderWindow() : void
      {
         if(!this.lock)
         {
            this.lock = true;
            this.showTimer.stop();
            this.hideTimer.stop();
         }
      }
      
      public function unlockLoaderWindow() : void
      {
         if(this.lock)
         {
            this.lock = false;
         }
      }
      
      private function onShowTimerComplemete(param1:TimerEvent = null) : void
      {
         this.showTimer.stop();
         this.show();
      }
      
      private function onHideTimerComplemete(param1:TimerEvent = null) : void
      {
         this.hideTimer.stop();
         this.hide();
      }
      
      private function show() : void
      {
         if(!this.layer.contains(this))
         {
            this.layer.addChild(this);
            stage.addEventListener(Event.RESIZE,this.align);
            this.align();
            this.nextTipTimer.start();
            this.onNextTipTimerComplete(null);
         }
      }
      
      private function hide() : void
      {
         if(this.layer.contains(this))
         {
            stage.removeEventListener(Event.RESIZE,this.align);
            this.layer.removeChild(this);
            this.nextTipTimer.stop();
         }
         dispatchEvent(new §#c§(§#c§.§break for finally§));
      }
      
      private function align(param1:Event = null) : void
      {
         this.x = stage.stageWidth - this.windowBmp.width >>> 1;
         this.y = stage.stageHeight - this.windowBmp.height >>> 1;
      }
      
      public function §]e§() : Boolean
      {
         return this.nextTipTimer.running;
      }
   }
}

