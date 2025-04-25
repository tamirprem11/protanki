package alternativa
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.ClientLog;
   import alternativa.osgi.service.clientlog.DeprecatedClientLogWrapper;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.command.CommandService;
   import alternativa.osgi.service.command.impl.CommandServiceImpl;
   import alternativa.osgi.service.command.impl.DefaultCommands;
   import alternativa.osgi.service.command.impl.OSGiCommands;
   import alternativa.osgi.service.console.Console;
   import alternativa.osgi.service.console.ConsoleLogTarget;
   import alternativa.osgi.service.console.IConsole;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.dump.DumpService;
   import alternativa.osgi.service.dump.IDumpService;
   import alternativa.osgi.service.launcherparams.ILauncherParams;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.Logger;
   import alternativa.osgi.service.network.INetworkService;
   import alternativa.osgi.service.network.NetworkService;
   import alternativa.startup.ConnectionParameters;
   import alternativa.startup.IClientConfigurator;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class ClientConfigurator implements IClientConfigurator
   {
      protected var osgi:OSGi;
      
      private var console:IConsole;
      
      private var conAlignShortcutH:KeyboardShortcut;
      
      private var conAlignShortcutV:KeyboardShortcut;
      
      private var commandService:CommandServiceImpl;
      
      private var logService:LogService;
      
      public function ClientConfigurator()
      {
         super();
      }
      
      public function start(param1:DisplayObjectContainer, param2:ILauncherParams, param3:ConnectionParameters, param4:Vector.<String>) : void
      {
         this.osgi = OSGi.getInstance();
         this.commandService = new CommandServiceImpl();
         this.osgi.registerService(CommandService,this.commandService);
         this.initClientLog();
         this.initConsole(param1.stage,param2);
         this.osgi.registerService(ILauncherParams,param2);
         this.osgi.registerService(IDisplay,new Display(param1));
         this.osgi.registerService(INetworkService,new NetworkService(param3));
         var _loc5_:IDumpService = new DumpService(this.osgi);
         this.osgi.registerService(IDumpService,_loc5_);
         this.registerCommand(this.osgi,this.commandService);
      }
      
      private function registerCommand(param1:OSGi, param2:CommandService) : void
      {
         new DefaultCommands(param2);
         new OSGiCommands(param1,param2);
      }
      
      private function initClientLog() : void
      {
         this.logService = LogService(this.osgi.getService(LogService));
         this.osgi.registerService(IClientLog,new ClientLog(this.logService));
         OSGi.clientLog = new DeprecatedClientLogWrapper(this.logService);
      }
      
      private function storeStartupLog(param1:Vector.<String>) : void
      {
         var _loc2_:String = null;
         var _loc3_:LogService = LogService(this.osgi.getService(LogService));
         var _loc4_:Logger = _loc3_.getLogger("startup");
         for each(_loc2_ in param1)
         {
            _loc4_.info(_loc2_);
         }
      }
      
      private function initConsole(param1:Stage, param2:ILauncherParams) : void
      {
         if(this.console)
         {
            return;
         }
         this.console = this.createConsole(param1);
         this.osgi.registerService(IConsole,this.console);
         this.logService.addLogTarget(new ConsoleLogTarget(this.commandService,this.console,param2));
         this.configureConsole(param1,this.console,"show,ha,va,w,h,alpha");
      }
      
      protected function createConsole(param1:Stage) : IConsole
      {
         return new Console(this.commandService,param1,50,100,1,1);
      }
      
      private function configureConsole(param1:Stage, param2:IConsole, param3:String) : void
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:Array = param3.split(",");
         var _loc7_:Object = {};
         for each(_loc4_ in _loc6_)
         {
            _loc5_ = _loc4_.split(":");
            _loc7_[_loc5_[0]] = _loc5_[1];
         }
         if(_loc7_["show"] != null)
         {
            param2.show();
         }
         if(_loc7_["ha"] != null)
         {
            param2.horizontalAlignment = int(_loc7_["ha"]);
         }
         if(_loc7_["va"] != null)
         {
            param2.vericalAlignment = int(_loc7_["va"]);
         }
         if(_loc7_["w"] != null)
         {
            param2.width = int(_loc7_["w"]);
         }
         if(_loc7_["h"] != null)
         {
            param2.height = int(_loc7_["h"]);
         }
         if(_loc7_["alpha"] != null)
         {
            param2.executeCommand("con_alpha " + _loc7_["alpha"]);
         }
         this.conAlignShortcutH = this.parseShortcut(_loc7_["hsw"],Keyboard.LEFT,false,true,true);
         this.conAlignShortcutV = this.parseShortcut(_loc7_["vsw"],Keyboard.UP,false,true,true);
         param1.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey,true);
      }
      
      private function parseShortcut(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean) : KeyboardShortcut
      {
         if(param1 == null)
         {
            return new KeyboardShortcut(param2,param3,param4,param5);
         }
         return new KeyboardShortcut(parseInt(param1),param1.indexOf("a") > -1,param1.indexOf("c") > -1,param1.indexOf("s") > -1);
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case this.conAlignShortcutH.keyCode:
               if(this.conAlignShortcutH.altKey == param1.altKey && this.conAlignShortcutH.shiftKey == param1.shiftKey && this.conAlignShortcutH.ctrlKey == param1.ctrlKey)
               {
                  if(this.console.horizontalAlignment == 1)
                  {
                     this.console.horizontalAlignment = 2;
                  }
                  else
                  {
                     this.console.horizontalAlignment = 1;
                  }
               }
               break;
            case this.conAlignShortcutV.keyCode:
               if(this.conAlignShortcutV.altKey == param1.altKey && this.conAlignShortcutV.shiftKey == param1.shiftKey && this.conAlignShortcutV.ctrlKey == param1.ctrlKey)
               {
                  if(this.console.vericalAlignment == 1)
                  {
                     this.console.vericalAlignment = 2;
                  }
                  else
                  {
                     this.console.vericalAlignment = 1;
                  }
               }
         }
      }
   }
}

class KeyboardShortcut
{
   public var keyCode:int;
   
   public var altKey:Boolean;
   
   public var ctrlKey:Boolean;
   
   public var shiftKey:Boolean;
   
   public function KeyboardShortcut(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
   {
      super();
      this.keyCode = param1;
      this.altKey = param2;
      this.ctrlKey = param3;
      this.shiftKey = param4;
   }
}
