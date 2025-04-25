package §use for package§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   
   public class §-E§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§native set break§;
      
      private var client:§;!@§ = §;!@§(this);
      
      private var modelId:Long = Long.getLong(1286074115,-176946994);
      
      private var §null for true§:Long = Long.getLong(343596326,-230405373);
      
      private var §null do§:ICodec;
      
      private var §7!k§:Long = Long.getLong(208555485,-6667003);
      
      private var §<@§:ICodec;
      
      private var §2!<§:Long = Long.getLong(154981282,1951339013);
      
      public function §-E§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §native set break§(IModel(this));
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§null for true§:
               this.client.die(int(this.§null do§.decode(param2)));
               break;
            case this.§7!k§:
               this.client.onDeathScheduled(int(this.§<@§.decode(param2)));
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

