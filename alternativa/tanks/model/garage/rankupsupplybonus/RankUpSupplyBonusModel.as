package alternativa.tanks.model.garage.rankupsupplybonus
{
   import alternativa.tanks.gui.RankUpSupplyBonusAlert;
   import projects.tanks.client.panel.model.garage.rankupsupplybonus.IRankUpSupplyBonusModelBase;
   import projects.tanks.client.panel.model.garage.rankupsupplybonus.RankUpSupplyBonusInfo;
   import projects.tanks.client.panel.model.garage.rankupsupplybonus.RankUpSupplyBonusModelBase;
   
   public class RankUpSupplyBonusModel extends RankUpSupplyBonusModelBase implements IRankUpSupplyBonusModelBase
   {
      public function RankUpSupplyBonusModel()
      {
         super();
      }
      
      public function showRankUpSupplyBonusAlerts(param1:Vector.<RankUpSupplyBonusInfo>) : void
      {
         var _loc2_:RankUpSupplyBonusInfo = null;
         for each(_loc2_ in param1)
         {
            new RankUpSupplyBonusAlert(_loc2_);
         }
      }
   }
}

