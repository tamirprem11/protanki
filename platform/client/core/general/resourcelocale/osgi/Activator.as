package platform.client.core.general.resourcelocale.osgi
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.codec.OptionalCodecDecorator;
   import alternativa.protocol.info.CollectionCodecInfo;
   import alternativa.protocol.info.TypeCodecInfo;
   import §in set import§.§+9§;
   import §in set import§.§9!Y§;
   import §in set import§.§]4§;
   import §in set import§.§const const var§;
   import §in set import§.§include set if§;
   import §in set import§.§use super§;
   import platform.client.core.general.resourcelocale.format.ImagePair;
   import platform.client.core.general.resourcelocale.format.LocalizedFileFormat;
   import platform.client.core.general.resourcelocale.format.StringPair;
   
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
         _loc2_ = new §const const var§();
         _loc3_.registerCodec(new TypeCodecInfo(ImagePair,false),_loc2_);
         _loc3_.registerCodec(new TypeCodecInfo(ImagePair,true),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §include set if§();
         _loc3_.registerCodec(new TypeCodecInfo(LocalizedFileFormat,false),_loc2_);
         _loc3_.registerCodec(new TypeCodecInfo(LocalizedFileFormat,true),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §]4§();
         _loc3_.registerCodec(new TypeCodecInfo(StringPair,false),_loc2_);
         _loc3_.registerCodec(new TypeCodecInfo(StringPair,true),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §+9§(false);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(ImagePair,false),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(ImagePair,false),true,1),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §+9§(true);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(ImagePair,true),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(ImagePair,true),true,1),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §9!Y§(false);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(LocalizedFileFormat,false),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(LocalizedFileFormat,false),true,1),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §9!Y§(true);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(LocalizedFileFormat,true),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(LocalizedFileFormat,true),true,1),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §use super§(false);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(StringPair,false),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(StringPair,false),true,1),new OptionalCodecDecorator(_loc2_));
         _loc2_ = new §use super§(true);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(StringPair,true),false,1),_loc2_);
         _loc3_.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(StringPair,true),true,1),new OptionalCodecDecorator(_loc2_));
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

