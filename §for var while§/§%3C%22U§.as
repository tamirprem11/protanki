package §for var while§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.CollectionCodecInfo;
   import alternativa.protocol.info.TypeCodecInfo;
   import platform.client.core.general.spaces.loading.dispatcher.types.ObjectsData;
   import platform.client.core.general.spaces.loading.modelconstructors.ModelData;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §<"U§ implements ICodec
   {
      public static var log:IClientLog = IClientLog(OSGi.getInstance().getService(IClientLog));
      
      private var §^2§:ICodec;
      
      private var §package catch§:ICodec;
      
      public function §<"U§()
      {
         super();
      }
      
      public function init(param1:IProtocol) : void
      {
         this.§^2§ = param1.getCodec(new CollectionCodecInfo(new TypeCodecInfo(ModelData,false),false,1));
         this.§package catch§ = param1.getCodec(new CollectionCodecInfo(new TypeCodecInfo(IGameObject,false),false,1));
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         var _loc2_:ObjectsData = new ObjectsData();
         _loc2_.modelsData = this.§^2§.decode(param1) as Vector.<ModelData>;
         _loc2_.objects = this.§package catch§.decode(param1) as Vector.<IGameObject>;
         return _loc2_;
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:ObjectsData = ObjectsData(param2);
         this.§^2§.encode(param1,_loc3_.modelsData);
         this.§package catch§.encode(param1,_loc3_.objects);
      }
   }
}

