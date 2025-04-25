package alternativa.tanks.locale.ru
{
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.locale.constants.ImageConst;
   import flash.display.BitmapData;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class Image
   {
      private static const newPresents:Class;
      
      private static const bitmapReferalHeader:Class = Image_bitmapReferalHeader;
      
      public static const REFERAL_WINDOW_HEADER_IMAGE:BitmapData = new bitmapReferalHeader().bitmapData;
      
      private static const helpMouseMini:Class = Image_helpMouseMini;
      
      private static const IMAGE_HELP_MOUSE_MINI:BitmapData = new helpMouseMini().bitmapData;
      
      private static const helpControlsMini:Class = Image_helpControlsMini;
      
      private static const IMAGE_HELP_CONTROLS_MINI:BitmapData = new helpControlsMini().bitmapData;
      
      private static const addCrystalls:Class = Image_addCrystalls;
      
      private static const IMAGE_GARAGE_ADD_MORE_CRYSTALS:BitmapData = new addCrystalls().bitmapData;
      
      private static const friendsHeader:Class = Image_friendsHeader;
      
      private static const IMAGE_FRIENDS_HEADER:BitmapData = new friendsHeader().bitmapData;
      
      private static const welcomeBack:Class = Image_welcomeBack;
      
      private static const IMAGE_WELCOME_BACK_HEADER:BitmapData = new welcomeBack().bitmapData;
      
      private static const newsHeader:Class = Image_newsHeader;
      
      private static const IMAGE_NEWS_HEADER:BitmapData = new newsHeader().bitmapData;
      
      private static const controlsHelp:Class = §get const static§;
      
      private static const FULL_BATTLE_HELP:BitmapData = new controlsHelp().bitmapData;
      
      public function Image()
      {
         super();
      }
      
      public static function init(param1:ILocaleService) : void
      {
         param1.setImage(ImageConst.REFERAL_WINDOW_HEADER_IMAGE,Image.REFERAL_WINDOW_HEADER_IMAGE);
         param1.setImage(TanksLocale.IMAGE_HELP_CONTROLS_MINI,Image.IMAGE_HELP_CONTROLS_MINI);
         param1.setImage(TanksLocale.IMAGE_HELP_MOUSE_MINI,Image.IMAGE_HELP_MOUSE_MINI);
         param1.setImage(TanksLocale.IMAGE_GARAGE_ADD_MORE_CRYSTALS,Image.IMAGE_GARAGE_ADD_MORE_CRYSTALS);
         param1.setImage(ImageConst.IMAGE_FRIENDS_HEADER,Image.IMAGE_FRIENDS_HEADER);
         param1.setImage(ImageConst.IMAGE_WELCOME_BACK_HEADER,Image.IMAGE_WELCOME_BACK_HEADER);
         param1.setImage(ImageConst.IMAGE_NEWS_HEADER,Image.IMAGE_NEWS_HEADER);
         param1.setImage(TanksLocale.IMAGE_FULL_BATTLE_HELP,Image.FULL_BATTLE_HELP);
      }
   }
}

