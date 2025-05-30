package alternativa.tanks.help
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.locale.constants.TextConst;
   
   public class FriendsHelper extends PanelBubbleHelper
   {
      public function FriendsHelper(param1:Number, param2:Number, param3:Number)
      {
         super(param1,param2,param3);
         var _loc4_:ILocaleService = ILocaleService(OSGi.getInstance().getService(ILocaleService));
         text = _loc4_.getText(TextConst.STRING_FRIENDS_MENU);
         arrowLehgth = int(_loc4_.getText(TextConst.STRING_FRIENDS_MENU_ARROW_LENGTH));
         arrowAlign = HelperAlign.TOP_CENTER;
      }
   }
}

