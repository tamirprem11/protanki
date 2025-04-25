package §9!D§
{
   import §],§.§while var const§;
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class § "#§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§class var in§;
      
      private var client:§?L§ = §?L§(this);
      
      private var modelId:Long = Long.getLong(375259874,-2064506790);
      
      private var §false var native§:Long = Long.getLong(113336798,-635616124);
      
      private var §super set while§:ICodec;
      
      private var §0"+§:Long = Long.getLong(113336798,-648481992);
      
      private var §default for continue§:ICodec;
      
      private var §'!o§:Long = Long.getLong(1656540814,-150441162);
      
      private var §2W§:ICodec;
      
      private var §>!f§:ICodec;
      
      private var §"!R§:ICodec;
      
      private var §-[§:Long = Long.getLong(93222359,396117780);
      
      private var §class for get§:ICodec;
      
      private var §return var var§:ICodec;
      
      private var §class const final§:Long = Long.getLong(1109525934,-1995327689);
      
      private var §super const null§:Long = Long.getLong(1209531510,1444573534);
      
      private var §true for override§:ICodec;
      
      private var §>,§:ICodec;
      
      private var §static var override§:Long = Long.getLong(1944648201,859419652);
      
      private var §if var each§:ICodec;
      
      private var §<",§:ICodec;
      
      public function § "#§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §class var in§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §;!;§
      {
         return §;!;§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§false var native§:
               this.client.pointCaptureStarted(§while var const§(this.§super set while§.decode(param2)));
               break;
            case this.§0"+§:
               this.client.pointCaptureStopped(§while var const§(this.§default for continue§.decode(param2)));
               break;
            case this.§'!o§:
               this.client.setPointProgress(int(this.§2W§.decode(param2)),Number(this.§>!f§.decode(param2)),Number(this.§"!R§.decode(param2)));
               break;
            case this.§-[§:
               this.client.setPointState(int(this.§class for get§.decode(param2)),§3"Q§(this.§return var var§.decode(param2)));
               break;
            case this.§class const final§:
               this.client.§5!@§();
               break;
            case this.§super const null§:
               this.client.tankEnteredPointZone(int(this.§true for override§.decode(param2)),String(this.§>,§.decode(param2)));
               break;
            case this.§static var override§:
               this.client.tankLeftPointZone(int(this.§if var each§.decode(param2)),String(this.§<",§.decode(param2)));
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

