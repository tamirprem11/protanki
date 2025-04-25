package §3!J§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.battle.gui.chat.§@"N§;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser.IBlockUserService;
   
   public class §[!=§ implements §in const dynamic§
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var blockUserService:IBlockUserService;
      
      private var output:§@"N§;
      
      public function §[!=§(param1:§@"N§)
      {
         super();
         this.output = param1;
      }
      
      public function §finally const default§(param1:Array) : Boolean
      {
         if(param1.length == 0)
         {
            return false;
         }
         var _loc2_:String = param1[0];
         blockUserService.blockUser(_loc2_);
         this.output.§package throw§(localeService.getText(TanksLocale.TEXT_CHAT_PANEL_COMMAND_BLOCK,_loc2_));
         return true;
      }
   }
}

