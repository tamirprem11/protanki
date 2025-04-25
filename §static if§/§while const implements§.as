package §static if§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.TypeCodecInfo;
   import platform.client.core.general.socialnetwork.models.socialnetworkparameters.SocialNetworkParametersCC;
   
   public class §while const implements§ implements ICodec
   {
      public static var log:IClientLog = IClientLog(OSGi.getInstance().getService(IClientLog));
      
      private var §`!j§:ICodec;
      
      private var §>j§:ICodec;
      
      public function §while const implements§()
      {
         super();
      }
      
      public function init(param1:IProtocol) : void
      {
         this.§`!j§ = param1.getCodec(new TypeCodecInfo(Boolean,false));
         this.§>j§ = param1.getCodec(new TypeCodecInfo(Boolean,false));
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         var _loc2_:SocialNetworkParametersCC = new SocialNetworkParametersCC();
         _loc2_.hasOwnPaymentSystem = this.§`!j§.decode(param1) as Boolean;
         _loc2_.hasSocialFunction = this.§>j§.decode(param1) as Boolean;
         return _loc2_;
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:SocialNetworkParametersCC = SocialNetworkParametersCC(param2);
         this.§`!j§.encode(param1,_loc3_.hasOwnPaymentSystem);
         this.§>j§.encode(param1,_loc3_.hasSocialFunction);
      }
   }
}

