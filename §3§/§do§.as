package §3§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.TypeCodecInfo;
   import alternativa.types.Long;
   import platform.client.core.general.spaces.loading.modelconstructors.ModelData;
   
   public class §do§ implements ICodec
   {
      public static var log:IClientLog = IClientLog(OSGi.getInstance().getService(IClientLog));
      
      private var §null const include§:ICodec;
      
      private var §extends for get§:ICodec;
      
      public function §do§()
      {
         super();
      }
      
      public function init(param1:IProtocol) : void
      {
         this.§null const include§ = param1.getCodec(new TypeCodecInfo(Object,false));
         this.§extends for get§ = param1.getCodec(new TypeCodecInfo(Long,false));
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         var _loc2_:ModelData = new ModelData();
         _loc2_.data = this.§null const include§.decode(param1) as Object;
         _loc2_.id = this.§extends for get§.decode(param1) as Long;
         return _loc2_;
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:ModelData = ModelData(param2);
         this.§null const include§.encode(param1,_loc3_.data);
         this.§extends for get§.encode(param1,_loc3_.id);
      }
   }
}

