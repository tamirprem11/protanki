package §%`§
{
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.display.usertitle.UserTitle;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoLabelUpdater;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.UserInfoLabelUpdaterEvent;
   
   public class §-"F§
   {
      [Inject]
      public static var userInfoService:IUserInfoService;
      
      public function §-"F§()
      {
         super();
      }
      
      [Obfuscation(rename="false")]
      public function objectLoadedPost(param1:ClientObject) : void
      {
         var _loc2_:IUserInfoLabelUpdater = userInfoService.getOrCreateUpdater(param1.id);
         param1.putParams(IUserInfoLabelUpdater,_loc2_);
         _loc2_.addEventListener(UserInfoLabelUpdaterEvent.CHANGE_PREMIUM_STATUS,this.onChangePremiumStatus);
         this.§import for extends§(_loc2_);
      }
      
      private function §import for extends§(param1:IUserInfoLabelUpdater) : void
      {
         var _loc2_:Tank = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(§catch set null§.§use var import§[param1.uid]).tank;
         var _loc3_:UserTitle = _loc2_.title;
         _loc3_.setPremium(param1.hasPremium());
      }
      
      private function onChangePremiumStatus(param1:UserInfoLabelUpdaterEvent) : void
      {
         var _loc2_:ClientObject = §catch set null§.§use var import§[param1.user];
         var _loc3_:IUserInfoLabelUpdater = this.§9,§(_loc2_);
         this.§import for extends§(_loc3_);
      }
      
      private function §9,§(param1:ClientObject) : IUserInfoLabelUpdater
      {
         return IUserInfoLabelUpdater(param1.getParams(IUserInfoLabelUpdater));
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:IUserInfoLabelUpdater = this.§9,§(param1);
         _loc2_.removeEventListener(UserInfoLabelUpdaterEvent.CHANGE_PREMIUM_STATUS,this.onChangePremiumStatus);
      }
   }
}

