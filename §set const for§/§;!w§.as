package §set const for§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.TypeCodecInfo;
   import platform.client.models.commons.periodtime.TimePeriodModelCC;
   
   public class §;!w§ implements ICodec
   {
      public static var log:IClientLog = IClientLog(OSGi.getInstance().getService(IClientLog));
      
      private var §do for each§:ICodec;
      
      private var §catch const false§:ICodec;
      
      private var §for for override§:ICodec;
      
      private var §set set var§:ICodec;
      
      public function §;!w§()
      {
         super();
      }
      
      public function init(param1:IProtocol) : void
      {
         this.§do for each§ = param1.getCodec(new TypeCodecInfo(Boolean,false));
         this.§catch const false§ = param1.getCodec(new TypeCodecInfo(Boolean,false));
         this.§for for override§ = param1.getCodec(new TypeCodecInfo(int,false));
         this.§set set var§ = param1.getCodec(new TypeCodecInfo(int,false));
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         var _loc2_:TimePeriodModelCC = new TimePeriodModelCC();
         _loc2_.isEnabled = this.§do for each§.decode(param1) as Boolean;
         _loc2_.isTimeless = this.§catch const false§.decode(param1) as Boolean;
         _loc2_.timeLeftInSeconds = this.§for for override§.decode(param1) as int;
         _loc2_.timeToStartInSeconds = this.§set set var§.decode(param1) as int;
         return _loc2_;
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:TimePeriodModelCC = TimePeriodModelCC(param2);
         this.§do for each§.encode(param1,_loc3_.isEnabled);
         this.§catch const false§.encode(param1,_loc3_.isTimeless);
         this.§for for override§.encode(param1,_loc3_.timeLeftInSeconds);
         this.§set set var§.encode(param1,_loc3_.timeToStartInSeconds);
      }
   }
}

