package projects.tanks.clients.flash.commons.services.fullscreen
{
   import alternativa.osgi.service.display.IDisplay;
   import flash.display.StageDisplayState;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenService;
   
   public class FullscreenServiceImpl implements FullscreenService
   {
      private static const MOUSE_LOCK:String = "mouseLock";
      
      private static const STANDALONE:String = "StandAlone";
      
      private static const DESKTOP:String = "Desktop";
      
      private var _display:IDisplay;
      
      private var mouseLockDisabled:Boolean;
      
      private var standalone:Boolean;
      
      public function FullscreenServiceImpl(param1:IDisplay)
      {
         super();
         this._display = param1;
         this.mouseLockDisabled = this.checkIfMouseLockDisabled();
         this.standalone = Capabilities.playerType == STANDALONE || Capabilities.playerType == DESKTOP;
      }
      
      public function switchFullscreen() : void
      {
         if(this._display.stage.displayState == StageDisplayState.NORMAL)
         {
            this.activate();
         }
         else
         {
            this.deactivate();
         }
      }
      
      private function activate() : void
      {
         if(this.isAvailable())
         {
            this._display.stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
      }
      
      private function deactivate() : void
      {
         this._display.stage.displayState = StageDisplayState.NORMAL;
      }
      
      public function isAvailable() : Boolean
      {
         var _loc1_:Array = this.getFlashVersion();
         return int(_loc1_[0]) == 11 && int(_loc1_[1]) >= 3 || int(_loc1_[0]) > 11;
      }
      
      public function requestMouseLock() : void
      {
         if(this.isFullScreenNow() && this.isAvailable() && !this.isMouseLockDisabled())
         {
            this._display.stage["mouseLock"] = true;
         }
      }
      
      public function isFullScreenNow() : Boolean
      {
         return this._display.stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE;
      }
      
      public function isMouseLockDisabled() : Boolean
      {
         return this.mouseLockDisabled;
      }
      
      private function checkIfMouseLockDisabled() : Boolean
      {
         var _loc1_:Object = null;
         var _loc2_:String = this.getBrowserName();
         var _loc3_:String = Capabilities.os;
         if(this.standalone)
         {
            return false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < BlackList.LIST.length)
         {
            _loc1_ = BlackList.LIST[_loc4_];
            if(_loc2_.indexOf(_loc1_.browser) > -1 && _loc3_.indexOf(_loc1_.os) > -1)
            {
               return true;
            }
            _loc4_++;
         }
         return false;
      }
      
      private function getBrowserName() : String
      {
         var userAgent:String = null;
         var browser:String = null;
         try
         {
            userAgent = ExternalInterface.call("window.navigator.userAgent.toString");
            browser = "[Unknown Browser]";
            if(userAgent.indexOf("Safari") != -1)
            {
               browser = "Safari";
            }
            if(userAgent.indexOf("Firefox") != -1)
            {
               browser = "Firefox";
            }
            if(userAgent.indexOf("Chrome") != -1)
            {
               browser = "Chrome";
            }
            if(userAgent.indexOf("MSIE") != -1)
            {
               browser = "IE";
            }
            if(userAgent.indexOf("Opera") != -1)
            {
               browser = "Opera";
            }
            if(userAgent.indexOf("YaBrowser") != -1)
            {
               browser = "Yandex";
            }
         }
         catch(e:Error)
         {
            return "[No ExternalInterface]";
         }
         return browser;
      }
      
      private function getFlashVersion() : Array
      {
         return Capabilities.version.substr(Capabilities.version.indexOf(" ") + 1).split(",");
      }
      
      public function isMouseLocked() : Boolean
      {
         return this.isInFullscreen() ? Boolean(this._display.stage[MOUSE_LOCK]) : Boolean(false);
      }
      
      private function isInFullscreen() : Boolean
      {
         return this._display.stage.displayState != StageDisplayState.NORMAL;
      }
      
      public function isStandAlone() : Boolean
      {
         return this.standalone;
      }
   }
}

