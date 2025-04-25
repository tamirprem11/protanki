package projects.tanks.clients.flash.commons.services.notification.sound
{
   import flash.media.Sound;
   
   public class §each const final§ implements INotificationSoundService
   {
      private var _notificationSound:Sound;
      
      public function §each const final§()
      {
         super();
      }
      
      public function set notificationSound(param1:Sound) : void
      {
         this._notificationSound = param1;
      }
      
      public function playNotificationSound() : void
      {
         if(this._notificationSound != null)
         {
            this._notificationSound.play();
         }
      }
   }
}

