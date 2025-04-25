package alternativa.tanks.model.achievement
{
   import §1]§.§class for var§;
   import §1]§.§finally true§;
   import alternativa.tanks.service.achievement.IAchievementService;
   import flash.geom.Point;
   import platform.client.fp10.core.model.IObjectLoadListener;
   import projects.tanks.client.achievements.model.achievements.§continue super§;
   
   public class AchievementModel extends §class for var§ implements §finally true§, IAchievement, IObjectLoadListener
   {
      [Inject]
      public static var achievementService:IAchievementService;
      
      public function AchievementModel()
      {
         super();
      }
      
      public function completeAchievement(param1:§continue super§, param2:String, param3:int) : void
      {
         achievementService.completeAchievement(param1,param2,param3);
      }
      
      public function activateAchievement(param1:§continue super§) : void
      {
         achievementService.activateAchievement(param1);
      }
      
      public function setPanelPartition(param1:int) : void
      {
         achievementService.setPanelPartition(param1);
      }
      
      public function setGarageBuyButtonTargetPoint(param1:Point) : void
      {
         achievementService.setGarageBuyButtonTargetPoint(param1);
      }
      
      public function setBattleStartButtonTargetPoint(param1:Point) : void
      {
         achievementService.setBattleStartButtonTargetPoint(param1);
      }
      
      public function setPaymentResumeButtonTargetPoint(param1:Point) : void
      {
         achievementService.setPaymentResumeButtonTargetPoint(param1);
      }
      
      public function hideAllBubbles(param1:Boolean) : void
      {
         achievementService.hideAllBubbles(param1);
      }
      
      public function showStartButtonHelper() : void
      {
         achievementService.showStartButtonHelper();
      }
      
      public function hideStartButtonHelper() : void
      {
         achievementService.hideStartButtonHelper();
      }
      
      public function privateAchievementBubbleIsNotNeededAnymore() : void
      {
         achievementService.privateAchievementBubbleIsNotNeededAnymore();
      }
      
      public function objectLoaded() : void
      {
         achievementService.§else const include§(getInitParam().§return var use§);
      }
      
      public function objectLoadedPost() : void
      {
      }
      
      public function objectUnloaded() : void
      {
      }
      
      public function objectUnloadedPost() : void
      {
      }
   }
}

