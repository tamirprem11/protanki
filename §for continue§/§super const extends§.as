package §for continue§
{
   import alternativa.tanks.service.dailyquest.§6!A§;
   import alternativa.tanks.service.dailyquest.DailyQuestNotifierService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §super const extends§ extends Sprite
   {
      [Inject]
      public static var §9"5§:DailyQuestNotifierService;
      
      private static var §3"g§:Class = §<![§;
      
      private static var §extends if§:BitmapData = Bitmap(new §3"g§()).bitmapData;
      
      public function §super const extends§()
      {
         super();
         var _loc1_:Bitmap = new Bitmap(§extends if§);
         addChild(_loc1_);
         visible = false;
         §9"5§.addEventListener(§6!A§.§if set package§,this.§1%§);
         §9"5§.addEventListener(§6!A§.§,§,this.§null else§);
      }
      
      private function §null else§(param1:§6!A§) : void
      {
         visible = false;
      }
      
      private function §1%§(param1:§6!A§) : void
      {
         visible = true;
      }
   }
}

