package alternativa.tanks.loader
{
   import alternativa.osgi.OSGi;
   import flash.display.Bitmap;
   
   public class LoaderTips implements ILoaderTipsService
   {
      public static var loader:ILoaderWindowService;
      
      public static const coldload1:Class = LoaderTips_coldload1;
      
      public static const coldload3:Class = LoaderTips_coldload3;
      
      public static const coldload4:Class = LoaderTips_coldload4;
      
      private static const coldload5:Class = LoaderTips_coldload5;
      
      private static const coldload6:Class = LoaderTips_coldload6;
      
      private static const coldload7:Class = LoaderTips_coldload7;
      
      private static const coldload8:Class = LoaderTips_coldload8;
      
      private static const coldload9:Class = LoaderTips_coldload9;
      
      private static const coldload10:Class = LoaderTips_coldload10;
      
      private static const coldload11:Class = LoaderTips_coldload11;
      
      private static const coldload12:Class = LoaderTips_coldload12;
      
      private static const coldload13:Class = LoaderTips_coldload13;
      
      private static const coldload14:Class = LoaderTips_coldload14;
      
      private static const coldload15:Class = LoaderTips_coldload15;
      
      private static const coldload16:Class = LoaderTips_coldload16;
      
      private static const coldload17:Class = LoaderTips_coldload17;
      
      private static const coldload18:Class = LoaderTips_coldload18;
      
      private static const coldload19:Class = LoaderTips_coldload19;
      
      private static const coldload21:Class = LoaderTips_coldload21;
      
      private static const coldload22:Class = LoaderTips_coldload22;
      
      private static const coldload23:Class = LoaderTips_coldload23;
      
      private static const coldload24:Class = LoaderTips_coldload24;
      
      private static const coldload25:Class = LoaderTips_coldload25;
      
      private static const coldloadEN1:Class = LoaderTips_coldloadEN1;
      
      private static const coldloadEN2:Class = LoaderTips_coldloadEN2;
      
      private static const coldloadEN3:Class = LoaderTips_coldloadEN3;
      
      private static const coldloadEN4:Class = LoaderTips_coldloadEN4;
      
      private static const coldloadEN5:Class = LoaderTips_coldloadEN5;
      
      private static const coldloadEN6:Class = LoaderTips_coldloadEN6;
      
      private static const coldloadEN7:Class = LoaderTips_coldloadEN7;
      
      private static const coldloadEN8:Class = LoaderTips_coldloadEN8;
      
      private static const coldloadEN9:Class = LoaderTips_coldloadEN9;
      
      private static const coldloadEN10:Class = LoaderTips_coldloadEN10;
      
      private static const coldloadEN11:Class = LoaderTips_coldloadEN11;
      
      private static const coldloadEN12:Class = LoaderTips_coldloadEN12;
      
      private static const coldloadEN13:Class = LoaderTips_coldloadEN13;
      
      private static const coldloadEN14:Class = LoaderTips_coldloadEN14;
      
      private static const coldloadEN15:Class = LoaderTips_coldloadEN15;
      
      private static const coldloadEN16:Class = LoaderTips_coldloadEN16;
      
      private static const coldloadEN17:Class = LoaderTips_coldloadEN17;
      
      private static const coldloadEN18:Class = LoaderTips_coldloadEN18;
      
      public static var items:Array = new Array(coldload1,coldload3,coldload4,coldload5,coldload6,coldload7,coldload8,coldload9,coldload10,coldload11,coldload12,coldload13,coldload14,coldload15,coldload16,coldload17,coldload18,coldload19,coldload21,coldload22,coldload23,coldload24,coldload25);
      
      public static var §1"F§:Array = new Array(coldloadEN1,coldloadEN2,coldloadEN3,coldloadEN4,coldloadEN5,coldloadEN6,coldloadEN7,coldloadEN8,coldloadEN9,coldloadEN10,coldloadEN11,coldloadEN12,coldloadEN13,coldloadEN14,coldloadEN15,coldloadEN16,coldloadEN17,coldloadEN18);
      
      public function LoaderTips()
      {
         loader = OSGi.getInstance().getService(ILoaderWindowService) as ILoaderWindowService;
         super();
      }
      
      public function getTip(param1:String) : void
      {
         var _loc2_:int = Math.floor(Math.random() * (param1.toLowerCase() == "ru" ? items.length : §1"F§.length));
         switch(param1.toLowerCase())
         {
            case "ru":
               loader.showTip(new Bitmap(new items[_loc2_]().bitmapData));
               break;
            case "en":
            case "pt_BR":
               loader.showTip(new Bitmap(new §1"F§[_loc2_]().bitmapData));
         }
      }
   }
}

