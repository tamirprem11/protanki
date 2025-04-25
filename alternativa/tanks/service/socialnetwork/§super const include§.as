package alternativa.tanks.service.socialnetwork
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.EventDispatcher;
   
   public class §super const include§ extends EventDispatcher implements ISocialNetworkPanelService
   {
      public static var localeService:ILocaleService = OSGi.getInstance().getService(ILocaleService) as ILocaleService;
      
      private const VKONTAKTE:String = "vkontakte";
      
      private const FACEBOOK:String = "facebook";
      
      private var _passwordCreated:Boolean;
      
      private var §if var override§:Boolean;
      
      private var §4!Z§:Boolean;
      
      public function §super const include§()
      {
         super();
      }
      
      public function get passwordCreated() : Boolean
      {
         return this._passwordCreated;
      }
      
      public function set passwordCreated(param1:Boolean) : void
      {
         this._passwordCreated = param1;
      }
      
      public function set §super var throw§(param1:Boolean) : void
      {
         this.§if var override§ = param1;
      }
      
      public function set §default var override§(param1:Boolean) : void
      {
         this.§4!Z§ = param1;
      }
      
      public function §final set throw§(param1:String) : Boolean
      {
         switch(param1)
         {
            case this.VKONTAKTE:
               return true;
            default:
               return false;
         }
      }
      
      public function §dynamic for switch§(param1:String) : Boolean
      {
         switch(param1)
         {
            case this.VKONTAKTE:
               return this.§if var override§;
            case this.FACEBOOK:
               return this.§4!Z§;
            default:
               return false;
         }
      }
      
      public function §use const finally§(param1:String) : void
      {
         dispatchEvent(new SocialNetworkServiceEvent(SocialNetworkServiceEvent.CREATE_LINK,param1));
      }
      
      public function §case set finally§(param1:String) : void
      {
         dispatchEvent(new SocialNetworkServiceEvent(SocialNetworkServiceEvent.UNLINK,param1));
      }
      
      public function §set for§(param1:String) : void
      {
         if(param1 == this.VKONTAKTE)
         {
            this.§if var override§ = true;
         }
         else
         {
            this.§4!Z§ = true;
         }
         dispatchEvent(new SocialNetworkServiceEvent(SocialNetworkServiceEvent.LINK_SUCCESS,param1));
      }
      
      public function §#!§(param1:String) : void
      {
         if(param1 == this.VKONTAKTE)
         {
            this.§if var override§ = false;
         }
         else
         {
            this.§4!Z§ = false;
         }
         dispatchEvent(new SocialNetworkServiceEvent(SocialNetworkServiceEvent.UNLINK_SUCCESS,param1));
      }
   }
}

