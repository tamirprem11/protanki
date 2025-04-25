package §final set function§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.TypeCodecInfo;
   import alternativa.types.Byte;
   import alternativa.types.Short;
   import platform.client.models.commons.types.Timestamp;
   
   public class §with for final§ implements ICodec
   {
      public static var log:IClientLog = IClientLog(OSGi.getInstance().getService(IClientLog));
      
      private var §import var with§:ICodec;
      
      private var §7'§:ICodec;
      
      private var §!!t§:ICodec;
      
      private var §native for set§:ICodec;
      
      private var §9y§:ICodec;
      
      private var §6"P§:ICodec;
      
      public function §with for final§()
      {
         super();
      }
      
      public function init(param1:IProtocol) : void
      {
         this.§import var with§ = param1.getCodec(new TypeCodecInfo(Byte,false));
         this.§7'§ = param1.getCodec(new TypeCodecInfo(Byte,false));
         this.§!!t§ = param1.getCodec(new TypeCodecInfo(Byte,false));
         this.§native for set§ = param1.getCodec(new TypeCodecInfo(Byte,false));
         this.§9y§ = param1.getCodec(new TypeCodecInfo(Byte,false));
         this.§6"P§ = param1.getCodec(new TypeCodecInfo(Short,false));
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         var _loc2_:Timestamp = new Timestamp();
         _loc2_.day = this.§import var with§.decode(param1) as int;
         _loc2_.hours = this.§7'§.decode(param1) as int;
         _loc2_.minutes = this.§!!t§.decode(param1) as int;
         _loc2_.month = this.§native for set§.decode(param1) as int;
         _loc2_.seconds = this.§9y§.decode(param1) as int;
         _loc2_.year = this.§6"P§.decode(param1) as int;
         return _loc2_;
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:Timestamp = Timestamp(param2);
         this.§import var with§.encode(param1,_loc3_.day);
         this.§7'§.encode(param1,_loc3_.hours);
         this.§!!t§.encode(param1,_loc3_.minutes);
         this.§native for set§.encode(param1,_loc3_.month);
         this.§9y§.encode(param1,_loc3_.seconds);
         this.§6"P§.encode(param1,_loc3_.year);
      }
   }
}

