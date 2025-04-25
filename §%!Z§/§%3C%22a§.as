package §%!Z§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §<"a§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§in var catch§;
      
      private var client:§9!F§ = §9!F§(this);
      
      private var modelId:Long = Long.getLong(479007306,2075268288);
      
      private var §return var finally§:Long = Long.getLong(1090794095,949129477);
      
      private var §]!Y§:ICodec;
      
      private var §;!x§:Long = Long.getLong(1558315722,-513756959);
      
      private var §-"M§:ICodec;
      
      private var §include const const§:ICodec;
      
      private var §set var each§:Long = Long.getLong(1130188491,-1001840691);
      
      private var §const break§:ICodec;
      
      private var §while for class§:ICodec;
      
      private var §switch for for§:ICodec;
      
      private var §^J§:ICodec;
      
      private var §-"N§:ICodec;
      
      private var §>"]§:Long = Long.getLong(1555952411,-2052736679);
      
      private var §function super§:ICodec;
      
      public function §<"a§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §in var catch§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §8"h§
      {
         return §8"h§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§return var finally§:
               this.client.§true for with§(String(this.§]!Y§.decode(param2)));
               break;
            case this.§;!x§:
               this.client.§package for implements§(String(this.§-"M§.decode(param2)),String(this.§include const const§.decode(param2)));
               break;
            case this.§set var each§:
               this.client.§[r§(String(this.§const break§.decode(param2)),Number(this.§while for class§.decode(param2)),Number(this.§switch for for§.decode(param2)),Number(this.§^J§.decode(param2)),String(this.§-"N§.decode(param2)));
               break;
            case this.§>"]§:
               this.client.§ "Z§(String(this.§function super§.decode(param2)));
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

