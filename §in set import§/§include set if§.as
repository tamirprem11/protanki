package §in set import§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.CollectionCodecInfo;
   import alternativa.protocol.info.TypeCodecInfo;
   import platform.client.core.general.resourcelocale.format.ImagePair;
   import platform.client.core.general.resourcelocale.format.LocalizedFileFormat;
   import platform.client.core.general.resourcelocale.format.StringPair;
   
   public class §include set if§ implements ICodec
   {
      public static var log:IClientLog = IClientLog(OSGi.getInstance().getService(IClientLog));
      
      private var §break var§:ICodec;
      
      private var §`"`§:ICodec;
      
      public function §include set if§()
      {
         super();
      }
      
      public function init(param1:IProtocol) : void
      {
         this.§break var§ = param1.getCodec(new CollectionCodecInfo(new TypeCodecInfo(ImagePair,false),false,1));
         this.§`"`§ = param1.getCodec(new CollectionCodecInfo(new TypeCodecInfo(StringPair,false),false,1));
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         var _loc2_:LocalizedFileFormat = new LocalizedFileFormat();
         _loc2_.images = this.§break var§.decode(param1) as Vector.<ImagePair>;
         _loc2_.strings = this.§`"`§.decode(param1) as Vector.<StringPair>;
         return _loc2_;
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:LocalizedFileFormat = LocalizedFileFormat(param2);
         this.§break var§.encode(param1,_loc3_.images);
         this.§`"`§.encode(param1,_loc3_.strings);
      }
   }
}

