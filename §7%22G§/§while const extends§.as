package §7"G§
{
   import alternativa.tanks.models.battle.gui.gui.statistics.field.§,"_§;
   import assets.icons.BattleInfoIcons;
   import controls.Label;
   import controls.resultassets.WhiteFrame;
   
   public class §while const extends§ extends §,"_§
   {
      private static const §-"K§:int = 9;
      
      private static const §include var use§:int = 10;
      
      private static const §const for in§:int = 9;
      
      private static const §dynamic const else§:int = 6;
      
      private static const §18§:int = 18;
      
      private var §var null§:WhiteFrame;
      
      public function §while const extends§(param1:int)
      {
         super(param1);
      }
      
      override protected function init() : void
      {
         this.§var null§ = new WhiteFrame();
         addChild(this.§var null§);
         if(§default continue§ > -1)
         {
            icon = new BattleInfoIcons();
            icon.type = §default continue§;
            addChild(icon);
            icon.x = §-"K§;
            icon.y = §include var use§;
         }
         label = new Label();
         label.color = 16777215;
         addChild(label);
         if(icon)
         {
            label.x = icon.x + icon.width + §const for in§;
         }
         else
         {
            label.x = §const for in§;
         }
         label.y = §dynamic const else§;
         label.size = §18§;
         label.bold = true;
         this.§for in§(0);
      }
      
      public function §for in§(param1:int) : void
      {
         text = param1.toString();
         this.§var null§.width = label.x + label.width + 10;
      }
   }
}

