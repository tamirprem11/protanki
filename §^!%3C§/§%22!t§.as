package §^!<§
{
   import alternativa.model.IModel;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.services.ping.PingService;
   import com.alternativaplatform.client.models.core.users.model.timechecker.ITimeCheckerModelBase;
   import com.alternativaplatform.client.models.core.users.model.timechecker.TimeCheckerModelBase;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import services.alertservice.Alert;
   import services.alertservice.§if const finally§;
   
   public class §"!t§ extends TimeCheckerModelBase implements ITimeCheckerModelBase
   {
      [Inject]
      public static var §class for set§:PingService;
      
      private var lastTime:int;
      
      public function §"!t§()
      {
         super();
         _interfaces.push(IModel);
         _interfaces.push(ITimeCheckerModelBase);
      }
      
      public function ping() : void
      {
         this.lastTime = getTimer();
         Network(OSGi.getInstance().getService(INetworker)).send("battle;ping");
      }
      
      public function pong() : void
      {
         var timer:Timer;
         var ping_:int = getTimer() - this.lastTime;
         §class for set§.§do const extends§(ping_);
         timer = new Timer(500,1);
         timer.addEventListener(TimerEvent.TIMER_COMPLETE,function(param1:TimerEvent):void
         {
            ping();
         });
         timer.start();
      }
      
      public function §?B§(param1:ClientObject, param2:String) : void
      {
         var _loc3_:Alert = new Alert();
         _loc3_.showAlert(param2,Vector.<String>([§if const finally§.OK]));
      }
   }
}

