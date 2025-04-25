package platform.loading.codecs
{
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.TypeCodecInfo;
   import alternativa.types.Long;
   import platform.client.core.general.spaces.loading.modelconstructors.ModelData;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class ModelDataCodec implements ICodec
   {
      [Inject]
      public static var clientLog:IClientLog;
      
      [Inject]
      public static var modelRegister:ModelRegistry;
      
      private var longCodec:ICodec;
      
      public function ModelDataCodec()
      {
         super();
      }
      
      public function init(param1:IProtocol) : void
      {
         this.longCodec = param1.getCodec(new TypeCodecInfo(Long,false));
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:Long = Long(this.longCodec.decode(param1));
         if(_loc3_.low == 0 && _loc3_.high == 0)
         {
            return new ModelData(this.longCodec.decode(param1),_loc3_);
         }
         var _loc4_:ICodec = modelRegister.getModelConstructorCodec(_loc3_);
         if(_loc4_ == null)
         {
            throw new Error("Constructor codec not found for model " + _loc3_);
         }
         _loc2_ = _loc4_.decode(param1);
         return new ModelData(_loc2_,_loc3_);
      }
   }
}

