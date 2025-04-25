package §0! §
{
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.codec.OptionalCodecDecorator;
   import alternativa.protocol.impl.LengthCodecHelper;
   import alternativa.protocol.info.TypeCodecInfo;
   import flash.utils.Dictionary;
   
   public class §const var finally§ implements ICodec
   {
      private var keyCodec:ICodec;
      
      private var valueCodec:ICodec;
      
      private var §#x§:Boolean;
      
      private var §false var finally§:Boolean;
      
      public function §const var finally§(param1:Boolean, param2:Boolean)
      {
         super();
         this.§#x§ = param1;
         this.§false var finally§ = param2;
      }
      
      public function init(param1:IProtocol) : void
      {
         this.keyCodec = param1.getCodec(new TypeCodecInfo(String,false));
         if(this.§#x§)
         {
            this.keyCodec = new OptionalCodecDecorator(this.keyCodec);
         }
         this.valueCodec = param1.getCodec(new TypeCodecInfo(String,false));
         if(this.§false var finally§)
         {
            this.valueCodec = new OptionalCodecDecorator(this.valueCodec);
         }
      }
      
      public function decode(param1:ProtocolBuffer) : Object
      {
         var _loc2_:int = LengthCodecHelper.decodeLength(param1);
         var _loc3_:Dictionary = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[this.keyCodec.decode(param1)] = this.valueCodec.decode(param1);
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function encode(param1:ProtocolBuffer, param2:Object) : void
      {
         var _loc3_:* = undefined;
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc4_:Dictionary = Dictionary(param2);
         var _loc5_:int = 0;
         for(_loc3_ in _loc4_)
         {
            _loc5_++;
         }
         LengthCodecHelper.encodeLength(param1,_loc5_);
         for(_loc3_ in _loc4_)
         {
            this.keyCodec.encode(param1,_loc3_);
            this.valueCodec.encode(param1,_loc4_[_loc3_]);
         }
      }
   }
}

