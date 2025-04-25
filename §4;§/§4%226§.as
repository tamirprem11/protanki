package §4;§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.TypeCodecInfo;
   import platform.client.models.commons.description.DescriptionModelCC;
   
   public class §4"6§ implements ICodec
   {
      public static var log:IClientLog = IClientLog(OSGi.getInstance().getService(IClientLog));
      
      private var §for const case§:ICodec;
      
      private var §if const else§:ICodec;
      
      public function §4"6§()
      {
         super();
      }
      
      public function init(param1:IProtocol) : void
      {
         this.§for const case§ = param1.getCodec(new TypeCodecInfo(String,true));
         this.§if const else§ = param1.getCodec(new TypeCodecInfo(String,true));
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         var _loc2_:DescriptionModelCC = new DescriptionModelCC();
         _loc2_.description = this.§for const case§.decode(param1) as String;
         _loc2_.name = this.§if const else§.decode(param1) as String;
         return _loc2_;
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:DescriptionModelCC = DescriptionModelCC(param2);
         this.§for const case§.encode(param1,_loc3_.description);
         this.§if const else§.encode(param1,_loc3_.name);
      }
   }
}

