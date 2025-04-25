package §#"F§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.TypeCodecInfo;
   import alternativa.types.Float;
   import alternativa.types.Short;
   import platform.core.general.resource.types.imageframe.ResourceImageFrameParams;
   
   public class §var var function§ implements ICodec
   {
      public static var log:IClientLog = IClientLog(OSGi.getInstance().getService(IClientLog));
      
      private var §6"]§:ICodec;
      
      private var §<[§:ICodec;
      
      private var §,"S§:ICodec;
      
      private var §try var get§:ICodec;
      
      public function §var var function§()
      {
         super();
      }
      
      public function init(param1:IProtocol) : void
      {
         this.§6"]§ = param1.getCodec(new TypeCodecInfo(Float,false));
         this.§<[§ = param1.getCodec(new TypeCodecInfo(int,false));
         this.§,"S§ = param1.getCodec(new TypeCodecInfo(int,false));
         this.§try var get§ = param1.getCodec(new TypeCodecInfo(Short,false));
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         var _loc2_:ResourceImageFrameParams = new ResourceImageFrameParams();
         _loc2_.fps = this.§6"]§.decode(param1) as Number;
         _loc2_.frameHeight = this.§<[§.decode(param1) as int;
         _loc2_.frameWidth = this.§,"S§.decode(param1) as int;
         _loc2_.numFrames = this.§try var get§.decode(param1) as int;
         return _loc2_;
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:ResourceImageFrameParams = ResourceImageFrameParams(param2);
         this.§6"]§.encode(param1,_loc3_.fps);
         this.§<[§.encode(param1,_loc3_.frameHeight);
         this.§,"S§.encode(param1,_loc3_.frameWidth);
         this.§try var get§.encode(param1,_loc3_.numFrames);
      }
   }
}

