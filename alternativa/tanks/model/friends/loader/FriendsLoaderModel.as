package alternativa.tanks.model.friends.loader
{
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.gui.friends.FriendsWindow;
   import alternativa.tanks.gui.friends.FriendsWindowState;
   import forms.events.MainButtonBarEvents;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import services.buttonbar.IButtonBarService;
   
   public class FriendsLoaderModel
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var friendInfoService:IFriendInfoService;
      
      [Inject]
      public static var buttonBarService:IButtonBarService;
      
      private var friendsWindow:FriendsWindow;
      
      public function FriendsLoaderModel()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.friendsWindow = new FriendsWindow();
      }
      
      public function objectLoaded() : void
      {
         buttonBarService.addEventListener(MainButtonBarEvents.PANEL_BUTTON_PRESSED,this.onButtonBarButtonClick);
      }
      
      private function onButtonBarButtonClick(param1:MainButtonBarEvents) : void
      {
         if(param1.typeButton == MainButtonBarEvents.FRIENDS)
         {
            Network(OSGi.getInstance().getService(INetworker)).send("lobby;showFriends");
         }
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         this.friendsWindow.destroy();
         buttonBarService.removeEventListener(MainButtonBarEvents.PANEL_BUTTON_PRESSED,this.onButtonBarButtonClick);
      }
      
      public function onUsersLoaded() : void
      {
         if(friendInfoService.newIncomingFriendsLength > 0)
         {
            this.friendsWindow.show(FriendsWindowState.INCOMING);
         }
         else
         {
            this.friendsWindow.show(FriendsWindowState.ACCEPTED);
         }
      }
   }
}

