package platform.client.fp10.core.network.command.control.client
{
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.TypeCodecInfo;
   
   public class LogCommandCodec implements ICodec
   {
      private var intCodec:ICodec;
      
      private var stringCodec:ICodec;
      
      public function LogCommandCodec(param1:IProtocol)
      {
         super();
         this.init(param1);
      }
      
      public function init(param1:IProtocol) : void
      {
         this.intCodec = param1.getCodec(new TypeCodecInfo(int,false));
         this.stringCodec = param1.getCodec(new TypeCodecInfo(String,false));
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
         var _loc3_:LogCommand = LogCommand(param2);
         this.intCodec.encode(param1,_loc3_.level);
         this.stringCodec.encode(param1,_loc3_.channel);
         this.stringCodec.encode(param1,_loc3_.message);
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         return null;
      }
   }
}

