package §each var class§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   
   public class §?3§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§function const super§;
      
      private var client:§package for try§ = §package for try§(this);
      
      private var modelId:Long = Long.getLong(432617209,-1426923357);
      
      private var §true var override§:Long = Long.getLong(1322262736,-1419663103);
      
      private var §1B§:ICodec;
      
      public function §?3§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §function const super§(IModel(this));
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§true var override§:
               this.client.showWeeklyQuestReward(this.§1B§.decode(param2) as Vector.<§8!`§>);
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

