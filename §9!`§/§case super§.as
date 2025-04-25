package §9!`§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §case super§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§@!i§;
      
      private var client:§dynamic continue§ = §dynamic continue§(this);
      
      private var modelId:Long = Long.getLong(0,300090014);
      
      public function §case super§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §@!i§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §try set with§
      {
         return §try set with§(initParams[Model.object]);
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

