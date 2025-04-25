package platform.clients.fp10.libraries.alternativaprotocolflash
{
   import §&&§.§8@§;
   import §&&§.§throw var implements§;
   import §1!N§.§%W§;
   import §1!N§.§%c§;
   import §1!N§.§1"G§;
   import §1!N§.§8@§;
   import §1!N§.§else set switch§;
   import §1!N§.§throw var implements§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.codec.OptionalCodecDecorator;
   import alternativa.protocol.impl.Protocol;
   import alternativa.protocol.info.CollectionCodecInfo;
   import alternativa.protocol.info.TypeCodecInfo;
   import alternativa.types.Byte;
   import alternativa.types.Float;
   import alternativa.types.Long;
   import alternativa.types.Short;
   import alternativa.types.UByte;
   import alternativa.types.UShort;
   
   public class Activator implements IBundleActivator
   {
      public static var osgi:OSGi;
      
      public function Activator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         var codec:ICodec = null;
         var _osgi:OSGi = param1;
         osgi = _osgi;
         var protocol:IProtocol = Protocol.defaultInstance;
         codec = new §else set switch§(false);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(String,false),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(String,false),true,1),new OptionalCodecDecorator(codec));
         codec = new §else set switch§(true);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(String,true),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(String,true),true,1),new OptionalCodecDecorator(codec));
         codec = new §1"G§(false);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Byte,false),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Byte,false),true,1),new OptionalCodecDecorator(codec));
         codec = new §1"G§(true);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Byte,true),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Byte,true),true,1),new OptionalCodecDecorator(codec));
         codec = new §%c§(false);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Float,false),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Float,false),true,1),new OptionalCodecDecorator(codec));
         codec = new §%c§(true);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Float,true),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Float,true),true,1),new OptionalCodecDecorator(codec));
         codec = new §1!N§.§8@§(false);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(int,false),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(int,false),true,1),new OptionalCodecDecorator(codec));
         codec = new §1!N§.§8@§(true);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(int,true),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(int,true),true,1),new OptionalCodecDecorator(codec));
         codec = new §%W§(false);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Long,false),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Long,false),true,1),new OptionalCodecDecorator(codec));
         codec = new §%W§(true);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Long,true),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Long,true),true,1),new OptionalCodecDecorator(codec));
         codec = new §1!N§.§throw var implements§(false);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Short,false),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Short,false),true,1),new OptionalCodecDecorator(codec));
         codec = new §1!N§.§throw var implements§(true);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Short,true),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(Short,true),true,1),new OptionalCodecDecorator(codec));
         codec = new §&&§.§8@§(false);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(UShort,false),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(UShort,false),true,1),new OptionalCodecDecorator(codec));
         codec = new §&&§.§8@§(true);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(UShort,true),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(UShort,true),true,1),new OptionalCodecDecorator(codec));
         codec = new §&&§.§throw var implements§(false);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(UByte,false),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(UByte,false),true,1),new OptionalCodecDecorator(codec));
         codec = new §&&§.§throw var implements§(true);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(UByte,true),false,1),codec);
         protocol.registerCodec(new CollectionCodecInfo(new TypeCodecInfo(UByte,true),true,1),new OptionalCodecDecorator(codec));
         osgi.injectService(IClientLog,function(param1:Object):void
         {
            Protocol.clientLog = IClientLog(param1);
         },function():IClientLog
         {
            return Protocol.clientLog;
         });
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

