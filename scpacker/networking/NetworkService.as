package scpacker.networking
{
   import scpacker.networking.commands.Command;
   import scpacker.networking.commands.Type;
   
   public class NetworkService
   {
      public static var listeners:Vector.<INetworkListener>;
      
      public static const DELIM_COMMANDS_SYMBOL:String = "end~";
      
      public static const DELIM_ARGUMENTS_SYMBOL:String = ";";
      
      private var badRequest:String = "";
      
      public function NetworkService()
      {
         super();
         listeners = new Vector.<INetworkListener>();
      }
      
      public static function getType(param1:String) : Type
      {
         var _loc2_:Type = null;
         switch(param1)
         {
            case "auth":
               _loc2_ = Type.AUTH;
               break;
            case "registration":
               _loc2_ = Type.REGISTRATON;
               break;
            case "chat":
               _loc2_ = Type.CHAT;
               break;
            case "lobby":
               _loc2_ = Type.LOBBY;
               break;
            case "garage":
               _loc2_ = Type.GARAGE;
               break;
            case "battle":
               _loc2_ = Type.BATTLE;
               break;
            case "ping":
               _loc2_ = Type.PING;
               break;
            case "lobby_chat":
               _loc2_ = Type.LOBBY_CHAT;
               break;
            case "system":
               _loc2_ = Type.SYSTEM;
               break;
            case "restore":
               _loc2_ = Type.RESTORE;
               break;
            case "battle_select":
               _loc2_ = Type.BATTLE_SELECT;
               break;
            default:
               _loc2_ = Type.UNKNOWN;
         }
         return _loc2_;
      }
      
      public function protocolDecrypt(param1:String, param2:Network) : void
      {
         var _loc5_:Array = null;
         var _loc6_:Type = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:Command = null;
         param1 = this.badRequest + param1;
         var _loc3_:Array = param1.split(DELIM_COMMANDS_SYMBOL);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length - 1)
         {
            _loc5_ = _loc3_[_loc4_].split(DELIM_ARGUMENTS_SYMBOL);
            _loc6_ = getType(_loc5_[0]);
            if(_loc6_ == null || _loc6_ == Type.UNKNOWN)
            {
               throw new Error("Что то пошло не так  " + _loc5_[0]);
            }
            _loc7_ = "";
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc7_ += _loc5_[_loc8_] + DELIM_ARGUMENTS_SYMBOL;
               _loc8_++;
            }
            _loc9_ = new Command(_loc6_,_loc7_.split(DELIM_ARGUMENTS_SYMBOL),param1);
            this.sendRequestToAllListeners(_loc9_);
            _loc4_++;
         }
         this.badRequest = _loc3_[_loc3_.length - 1];
      }
      
      public function §`!n§(param1:String, param2:String) : Boolean
      {
         return param2 == param1.substring(param1.length - param2.length);
      }
      
      public function endWith(param1:String) : Boolean
      {
         return param1.charAt(param1.length - 1) == DELIM_COMMANDS_SYMBOL;
      }
      
      public function sendRequestToAllListeners(param1:Command) : void
      {
         var _loc2_:INetworkListener = null;
         for each(_loc2_ in listeners)
         {
            _loc2_.onData(param1);
         }
      }
      
      public function addListener(param1:INetworkListener) : void
      {
         listeners.push(param1);
      }
      
      public function removeListener(param1:INetworkListener) : void
      {
         var _loc3_:INetworkListener = null;
         var _loc2_:int = 0;
         for each(_loc3_ in listeners)
         {
            if(_loc3_ == param1)
            {
               break;
            }
            _loc2_++;
         }
         listeners.removeAt(_loc2_);
      }
   }
}

