package scpacker.networking.connecting
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.network.INetworkService;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class ServerConnectionServiceImpl implements ServerConnectionService
   {
      public static var networkService:INetworkService;
      
      private var networker:Network;
      
      private var connectionListener:Function;
      
      public function ServerConnectionServiceImpl()
      {
         super();
      }
      
      public function connect(param1:Function) : void
      {
         this.networker = new Network();
         this.connectionListener = param1;
         networkService = OSGi.getInstance().getService(INetworkService) as INetworkService;
         this.networker.connectionListener = param1;
         var _loc2_:String = networkService.controlServerAddress;
         var _loc3_:int = networkService.controlServerPorts[0];
         this.networker.connect(_loc2_,_loc3_);
         OSGi.getInstance().registerService(INetworker,this.networker);
      }
   }
}

