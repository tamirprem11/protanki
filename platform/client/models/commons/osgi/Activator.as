package platform.client.models.commons.osgi
{
   import §4;§.§4"6§;
   import §4;§.§8"g§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.codec.OptionalCodecDecorator;
   import alternativa.protocol.info.CollectionCodecInfo;
   import alternativa.protocol.info.EnumCodecInfo;
   import alternativa.protocol.info.TypeCodecInfo;
   import §final set function§.§""_§;
   import §final set function§.§extends var else§;
   import §final set function§.§var for finally§;
   import §final set function§.§with for final§;
   import platform.client.models.commons.description.DescriptionModelCC;
   import platform.client.models.commons.periodtime.TimePeriodModelCC;
   import platform.client.models.commons.types.Timestamp;
   import platform.client.models.commons.types.ValidationStatus;
   import §set const for§.§0"W§;
   import §set const for§.§;!w§;
   
   public class Activator implements IBundleActivator
   {
      public static var osgi:OSGi;
      
      public function Activator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         var _loc2_:ICodec = null;
         osgi = param1;
         var _loc3_:IProtocol = IProtocol(osgi.getService(IProtocol));
         _loc2_ = new §4"6§();
         _loc3_.registerCodec(new TypeCodecInfo(DescriptionModelCC,false),_loc2_);
         _loc3_.registerCodec(new TypeCodecInfo(DescriptionModelCC,true),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §;!w§();
         _loc3_.registerCodec(new TypeCodecInfo(TimePeriodModelCC,false),_loc2_);
         _loc3_.registerCodec(new TypeCodecInfo(TimePeriodModelCC,true),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §with for final§();
         _loc3_.registerCodec(new TypeCodecInfo(Timestamp,false),_loc2_);
         _loc3_.registerCodec(new TypeCodecInfo(Timestamp,true),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §""_§();
         _loc3_.registerCodec(new EnumCodecInfo(ValidationStatus,false),_loc2_);
         _loc3_.registerCodec(new EnumCodecInfo(ValidationStatus,true),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §8"g§(false);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(DescriptionModelCC,false),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(DescriptionModelCC,false),true,1),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §8"g§(true);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(DescriptionModelCC,true),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(DescriptionModelCC,true),true,1),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §0"W§(false);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(TimePeriodModelCC,false),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(TimePeriodModelCC,false),true,1),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §0"W§(true);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(TimePeriodModelCC,true),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(TimePeriodModelCC,true),true,1),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §extends var else§(false);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Timestamp,false),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Timestamp,false),true,1),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §extends var else§(true);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Timestamp,true),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Timestamp,true),true,1),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §var for finally§(false);
         _loc3_.registerCodec(new CollectionCodecInfo(new EnumCodecInfo(ValidationStatus,false),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new EnumCodecInfo(ValidationStatus,false),true,1),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §var for finally§(true);
         _loc3_.registerCodec(new CollectionCodecInfo(new EnumCodecInfo(ValidationStatus,true),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new EnumCodecInfo(ValidationStatus,true),true,1),new OptionalCodecDecorator(_loc2_));
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

