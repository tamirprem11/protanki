package §in set import§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.TypeCodecInfo;
   import platform.client.core.general.resourcelocale.format.StringPair;
   
   public class §]4§ implements ICodec
   {
      public static var log:IClientLog = IClientLog(OSGi.getInstance().getService(IClientLog));
      
      private var §native try§:ICodec;
      
      private var §while throw§:ICodec;
      
      public function §]4§()
      {
         super();
      }
      
      public function init(param1:IProtocol) : void
      {
         this.§native try§ = param1.getCodec(new TypeCodecInfo(String,false));
         this.§while throw§ = param1.getCodec(new TypeCodecInfo(String,false));
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         var _loc2_:StringPair = new StringPair();
         _loc2_.key = this.§native try§.decode(param1) as String;
         _loc2_.value = this.§while throw§.decode(param1) as String;
         return _loc2_;
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:StringPair = StringPair(param2);
         this.§native try§.encode(param1,_loc3_.key);
         this.§while throw§.encode(param1,_loc3_.value);
      }
   }
}

