package §?!h§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   
   public class §4!1§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§8!§;
      
      private var client:§package try§ = §package try§(this);
      
      private var modelId:Long = Long.getLong(1428989873,1951780812);
      
      private var §catch try§:Long = Long.getLong(810018451,-1328707173);
      
      private var §-!Z§:ICodec;
      
      private var §+f§:ICodec;
      
      private var §null const use§:ICodec;
      
      private var §5V§:Long = Long.getLong(826886748,-1809986386);
      
      private var §3!w§:ICodec;
      
      public function §4!1§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §8!§(IModel(this));
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§catch try§:
               break;
            case this.§5V§:
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

