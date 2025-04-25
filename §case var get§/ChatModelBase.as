package §case var get§
{
   import §],§.§while var const§;
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   
   public class ChatModelBase extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:ChatModelServer;
      
      private var client:IChatModelBase = IChatModelBase(this);
      
      private var modelId:Long = Long.getLong(1896886505,1439133662);
      
      private var §true set for§:Long = Long.getLong(646043180,-1436998681);
      
      private var §6!Y§:ICodec;
      
      private var §switch for with§:ICodec;
      
      private var §final set break§:ICodec;
      
      private var §3>§:Long = Long.getLong(1034571197,-1592026199);
      
      private var §4p§:ICodec;
      
      private var §^F§:ICodec;
      
      private var §catch switch§:Long = Long.getLong(378844051,-1452201622);
      
      private var §use set function§:ICodec;
      
      private var §6W§:Long = Long.getLong(939004753,1106765308);
      
      private var §+"2§:ICodec;
      
      private var §else for class§:ICodec;
      
      private var §!"'§:ICodec;
      
      private var §const for catch§:Long = Long.getLong(750015069,1108412070);
      
      private var §native for var§:ICodec;
      
      public function ChatModelBase()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new ChatModelServer(IModel(this));
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§true set for§:
               this.client.addMessage(String(this.§6!Y§.decode(param2)),String(this.§switch for with§.decode(param2)),§while var const§(this.§final set break§.decode(param2)));
               break;
            case this.§3>§:
               this.client.§["'§(String(this.§4p§.decode(param2)),String(this.§^F§.decode(param2)));
               break;
            case this.§catch switch§:
               this.client.§package throw§(String(this.§use set function§.decode(param2)));
               break;
            case this.§6W§:
               this.client.§get var super§(String(this.§+"2§.decode(param2)),String(this.§else for class§.decode(param2)),§while var const§(this.§!"'§.decode(param2)));
               break;
            case this.§const for catch§:
               this.client.§%!v§(String(this.§native for var§.decode(param2)));
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

