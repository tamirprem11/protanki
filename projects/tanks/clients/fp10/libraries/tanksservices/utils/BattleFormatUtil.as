package projects.tanks.clients.fp10.libraries.tanksservices.utils
{
   import §&S§.§in const implements§;
   import alternativa.osgi.service.locale.ILocaleService;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class BattleFormatUtil
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      public function BattleFormatUtil()
      {
         super();
      }
      
      public function §extends null§(param1:§in const implements§, param2:Boolean) : Boolean
      {
         return param2 || param1 != §in const implements§.NONE;
      }
      
      public function §6"^§(param1:§in const implements§, param2:Boolean) : String
      {
         if(param2)
         {
            return this.§-!1§();
         }
         switch(param1)
         {
            case §in const implements§.NONE:
               return "";
            case §in const implements§.HORNET_RAILGUN:
               return localeService.getText(TanksLocale.TEXT_FORMAT_NAME_XP);
            case §in const implements§.WASP_RAILGUN:
               return localeService.getText(TanksLocale.TEXT_FORMAT_NAME_BR);
            case §in const implements§.HORNET_WASP_RAILGUN:
               return localeService.getText(TanksLocale.TEXT_FORMAT_NAME_XPBR);
            default:
               return "";
         }
      }
      
      public function §!"F§(param1:§in const implements§) : String
      {
         if(param1 == §in const implements§.NONE)
         {
            return localeService.getText(TanksLocale.TEXT_FORMAT_NAME_NONE);
         }
         return this.§6"^§(param1,false);
      }
      
      public function §-!1§() : String
      {
         return localeService.getText(TanksLocale.TEXT_FORMAT_NAME_PARKOUR);
      }
   }
}

