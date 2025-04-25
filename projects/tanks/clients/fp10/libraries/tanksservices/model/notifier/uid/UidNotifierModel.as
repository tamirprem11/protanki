package projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.uid
{
   import alternativa.osgi.OSGi;
   import flash.utils.Dictionary;
   import projects.tanks.client.tanksservices.model.notifier.uid.UidNotifierData;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.UserRefresh;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.listener.UserNotifier;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.UserInfoConsumer;
   
   public class UidNotifierModel implements UserRefresh
   {
      private var data:Dictionary = new Dictionary();
      
      public function UidNotifierModel()
      {
         super();
      }
      
      public function setUid(param1:Vector.<UidNotifierData>) : void
      {
         var _loc2_:UidNotifierData = null;
         for each(_loc2_ in param1)
         {
            this.setAndUpdateConsumer(_loc2_);
         }
      }
      
      private function setAndUpdateConsumer(param1:UidNotifierData) : void
      {
         var _loc2_:UserInfoConsumer = null;
         var _loc3_:String = param1.userId;
         this.data[_loc3_] = param1.uid;
         var _loc4_:UserNotifier = UserNotifier(OSGi.getInstance().getService(UserNotifier));
         if(_loc4_.hasDataConsumer(_loc3_))
         {
            _loc2_ = _loc4_.getDataConsumer(_loc3_);
            _loc2_.setUid(param1.uid);
         }
      }
      
      public function refresh(param1:String, param2:UserInfoConsumer) : void
      {
         if(param1 in this.data)
         {
            param2.setUid(this.data[param1]);
         }
      }
      
      public function remove(param1:String) : void
      {
         delete this.data[param1];
      }
   }
}

