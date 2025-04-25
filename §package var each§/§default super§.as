package §package var each§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §default super§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§return for implements§;
      
      private var client:§>"U§ = §>"U§(this);
      
      private var modelId:Long = Long.getLong(0,300090019);
      
      public function §default super§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §return for implements§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §for implements§
      {
         return §for implements§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         var _loc3_:* = param1;
         var _loc4_:int = 0;
         switch(0)
         {
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

