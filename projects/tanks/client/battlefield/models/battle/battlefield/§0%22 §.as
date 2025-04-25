package projects.tanks.client.battlefield.models.battle.battlefield
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import §catch const package§.§implements package§;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §0" § extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§-+§;
      
      private var client:§2"L§ = §2"L§(this);
      
      private var modelId:Long = Long.getLong(1723277227,1936126557);
      
      private var §catch var if§:Long = Long.getLong(1285984840,1983429603);
      
      private var §8`§:Long = Long.getLong(1210824392,-987670337);
      
      private var §switch set switch§:Long = Long.getLong(180030714,353397522);
      
      private var §#"2§:ICodec;
      
      private var §get for var§:Long = Long.getLong(711773257,1091256454);
      
      private var §continue var get§:ICodec;
      
      public function §0" §()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §-+§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §implements package§
      {
         return §implements package§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§catch var if§:
            case this.§8`§:
            case this.§switch set switch§:
               break;
            case this.§get for var§:
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

