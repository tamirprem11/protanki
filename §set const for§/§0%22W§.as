package §set const for§
{
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.codec.OptionalCodecDecorator;
   import alternativa.protocol.impl.LengthCodecHelper;
   import alternativa.protocol.info.TypeCodecInfo;
   import platform.client.models.commons.periodtime.TimePeriodModelCC;
   
   public class §0"W§ implements ICodec
   {
      private var elementCodec:ICodec;
      
      private var §super const for§:Boolean;
      
      public function §0"W§(param1:Boolean)
      {
         super();
         this.§super const for§ = param1;
      }
      
      public function init(param1:IProtocol) : void
      {
         this.elementCodec = param1.getCodec(new TypeCodecInfo(TimePeriodModelCC,false));
         if(this.§super const for§)
         {
            this.elementCodec = new OptionalCodecDecorator(this.elementCodec);
         }
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         var _loc2_:int = LengthCodecHelper.decodeLength(param1);
         var _loc3_:Vector.<TimePeriodModelCC> = new Vector.<TimePeriodModelCC>(_loc2_,true);
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_] = TimePeriodModelCC(this.elementCodec.decode(param1));
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
         var _loc3_:TimePeriodModelCC = null;
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc4_:Vector.<TimePeriodModelCC> = Vector.<TimePeriodModelCC>(param2);
         var _loc5_:int = int(_loc4_.length);
         LengthCodecHelper.encodeLength(param1,_loc5_);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            this.elementCodec.encode(param1,_loc4_[_loc6_]);
            _loc6_++;
         }
      }
   }
}

