package scpacker.networking
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.bg.IBackgroundService;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.Socket;
   import flash.utils.ByteArray;
   import platform.client.fp10.core.network.connection.ConnectionCloseStatus;
   import platform.client.fp10.core.network.handler.OnConnectionClosedServiceListener;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.service.errormessage.IErrorMessageService;
   import platform.client.fp10.core.service.errormessage.errors.ConnectionClosedError;
   
   public class Network extends NetworkService
   {
      public static var modelRegistry:ModelRegistry = OSGi.getInstance().getService(ModelRegistry) as ModelRegistry;
      
      private var socket:Socket;
      
      private var keys:Array = new Array(1,2,3,4,5,6,7,8,9);
      
      private var lastKey:int = 1;
      
      public var AESDecrypter:*;
      
      public var AESKey:String = "F54BF833E76C15A12B7977CF5858FB96";
      
      public var iv:int = 1;
      
      public var connectionListener:Function;
      
      private var buffer:ByteArray = new ByteArray();
      
      private var §!!U§:Boolean = false;
      
      public function Network()
      {
         super();
         this.socket = new Socket();
      }
      
      public function connect(param1:String, param2:int) : void
      {
         this.socket.connect(param1,param2);
         this.socket.addEventListener(ProgressEvent.SOCKET_DATA,this.onDataSocket);
         this.socket.addEventListener(Event.CONNECT,this.onConnected);
         this.socket.addEventListener(Event.CLOSE,this.onCloseConnecting);
         this.socket.addEventListener(IOErrorEvent.IO_ERROR,this.ioError);
         this.socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityError);
      }
      
      public function destroy() : void
      {
         this.socket.removeEventListener(ProgressEvent.SOCKET_DATA,this.onDataSocket);
         this.socket.removeEventListener(Event.CONNECT,this.onConnected);
         this.socket.removeEventListener(Event.CLOSE,this.onCloseConnecting);
         this.socket.removeEventListener(IOErrorEvent.IO_ERROR,this.ioError);
         this.socket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityError);
      }
      
      public function addEventListener(param1:INetworkListener) : void
      {
         addListener(param1);
      }
      
      public function removeEventListener(param1:INetworkListener) : void
      {
         removeListener(param1);
      }
      
      public function send(param1:String) : void
      {
         try
         {
            param1 = this.AESDecrypter == null ? this.crypt(param1) : this.AESDecrypter.encrypt(param1,this.AESKey);
            param1 += DELIM_COMMANDS_SYMBOL;
            this.socket.writeUTFBytes(param1);
            this.socket.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      private function crypt(param1:String) : String
      {
         var _loc2_:int = (this.lastKey + 1) % this.keys.length;
         if(_loc2_ <= 0)
         {
            _loc2_ = 1;
         }
         this.lastKey = _loc2_;
         var _loc3_:Array = param1.split("");
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_[_loc4_] = String.fromCharCode(param1.charCodeAt(_loc4_) + (_loc2_ + 1));
            _loc4_++;
         }
         return _loc2_ + _loc3_.join("");
      }
      
      private function onConnected(param1:Event) : void
      {
         if(this.connectionListener != null)
         {
            this.connectionListener.call();
         }
      }
      
      private function onDataSocket(param1:Event) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:int = int(this.socket.bytesAvailable);
         this.socket.readBytes(_loc2_,0,_loc3_);
         var _loc4_:String = _loc2_.readUTFBytes(_loc3_);
         protocolDecrypt(_loc4_,this);
         _loc2_.clear();
         this.socket.flush();
      }
      
      public function onCloseConnecting(param1:Event) : void
      {
         var _loc2_:Object = null;
         this.socket.flush();
         this.socket.close();
         var _loc3_:int = 0;
         while(_loc3_ < IDisplay(OSGi.getInstance().getService(IDisplay)).mainContainer.numChildren)
         {
            IDisplay(OSGi.getInstance().getService(IDisplay)).mainContainer.removeChildAt(1);
            _loc3_++;
         }
         IBackgroundService(OSGi.getInstance().getService(IBackgroundService)).drawBg();
         IBackgroundService(OSGi.getInstance().getService(IBackgroundService)).showBg();
         for each(_loc2_ in OSGi.getInstance().serviceList)
         {
            if(_loc2_ is OnConnectionClosedServiceListener)
            {
               OnConnectionClosedServiceListener(_loc2_).onConnectionClosed(ConnectionCloseStatus.CLOSED_BY_SERVER);
            }
         }
         IBackgroundService(OSGi.getInstance().getService(IBackgroundService)).drawBg();
         IBackgroundService(OSGi.getInstance().getService(IBackgroundService)).showBg();
         IErrorMessageService(OSGi.getInstance().getService(IErrorMessageService)).showMessage(new ConnectionClosedError(ConnectionCloseStatus.CLOSED_BY_SERVER));
      }
      
      private function ioError(param1:Event) : void
      {
         this.socket.flush();
         this.socket.close();
         IErrorMessageService(OSGi.getInstance().getService(IErrorMessageService)).showMessage(new ConnectionClosedError(ConnectionCloseStatus.CONNECTION_ERROR));
         IBackgroundService(OSGi.getInstance().getService(IBackgroundService)).drawBg();
         IBackgroundService(OSGi.getInstance().getService(IBackgroundService)).showBg();
      }
      
      private function securityError(param1:Event) : void
      {
         this.socket.flush();
         this.socket.close();
         IErrorMessageService(OSGi.getInstance().getService(IErrorMessageService)).showMessage(new ConnectionClosedError(ConnectionCloseStatus.CLOSED_BY_SERVER));
         IBackgroundService(OSGi.getInstance().getService(IBackgroundService)).drawBg();
         IBackgroundService(OSGi.getInstance().getService(IBackgroundService)).showBg();
      }
      
      public function socketConnected() : Boolean
      {
         return this.socket.connected;
      }
   }
}

