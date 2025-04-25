package platform.client.fp10.core.protocol.codec
{
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.TypeCodecInfo;
   import alternativa.types.Long;
   import platform.client.fp10.core.registry.SpaceRegistry;
   import platform.client.fp10.core.type.IGameObject;
   import platform.client.fp10.core.type.impl.NotLoadedGameObject;
   
   public class GameObjectCodec implements ICodec
   {
      [Inject]
      public static var spaceRegistry:SpaceRegistry;
      
      private var longCodec:ICodec;
      
      public function GameObjectCodec()
      {
         super();
      }
      
      public function init(param1:IProtocol) : void
      {
         this.longCodec = param1.getCodec(new TypeCodecInfo(Long,false));
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
         this.longCodec.encode(param1,IGameObject(param2).id);
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         var _loc2_:Long = Long(this.longCodec.decode(param1));
         var _loc3_:IGameObject = spaceRegistry.currentSpace.getObject(_loc2_);
         if(_loc3_ != null)
         {
            return _loc3_;
         }
         return new NotLoadedGameObject(_loc2_,spaceRegistry.currentSpace);
      }
   }
}

