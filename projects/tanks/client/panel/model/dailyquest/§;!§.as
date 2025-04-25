package projects.tanks.client.panel.model.dailyquest
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   
   public class §;!§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§`"a§;
      
      private var client:§72§ = §72§(this);
      
      private var modelId:Long = Long.getLong(1302806391,660914812);
      
      public function §;!§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §`"a§(IModel(this));
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

