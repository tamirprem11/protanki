package §do var dynamic§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §@!Q§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§class const dynamic§;
      
      private var client:§native const with§ = §native const with§(this);
      
      private var modelId:Long = Long.getLong(500772743,-1275562344);
      
      private var §finally set throw§:Long = Long.getLong(1132148565,-1228176022);
      
      private var §]!]§:Long = Long.getLong(1500025148,-1072265992);
      
      private var §use each§:Long = Long.getLong(815803475,677498549);
      
      private var §9"N§:ICodec;
      
      private var §super set do§:ICodec;
      
      private var §-![§:ICodec;
      
      private var §with var default§:Long = Long.getLong(815803475,677432898);
      
      private var §3a§:ICodec;
      
      private var §9!5§:Long = Long.getLong(1121481378,274069336);
      
      private var §-!l§:ICodec;
      
      private var §var set if§:ICodec;
      
      private var §#!i§:Long = Long.getLong(1056545941,1597681057);
      
      private var §="4§:ICodec;
      
      private var §+!g§:Long = Long.getLong(1235006804,1616331544);
      
      private var §static for null§:ICodec;
      
      private var §%E§:Long = Long.getLong(696094159,-894234735);
      
      private var §var const break§:ICodec;
      
      public function §@!Q§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §class const dynamic§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         var _loc3_:* = param1;
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

