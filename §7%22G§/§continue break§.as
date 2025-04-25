package §7"G§
{
   import flash.display.Bitmap;
   
   public class §continue break§ extends §]"§ implements §native set var§
   {
      private static const §?!G§:int = 21;
      
      private static const §include var use§:int = 9;
      
      private static const §""#§:Class = §44§;
      
      private var icon:Bitmap = new Bitmap(new §""#§().bitmapData);
      
      public function §continue break§()
      {
         super();
         addChild(this.icon);
         this.icon.y = §include var use§;
      }
      
      override protected function calculateWidth() : int
      {
         var _loc1_:int = 5;
         var _loc2_:int = labelRed.width > §4"+§.width ? int(labelRed.width) : int(§4"+§.width);
         labelRed.x = _loc1_ + _loc1_ + (_loc2_ - labelRed.width >> 1);
         this.icon.x = labelRed.x + _loc2_ + _loc1_;
         §4"+§.x = this.icon.x + §?!G§ + _loc1_ + (_loc2_ - §4"+§.width >> 1);
         return §4"+§.x + _loc2_ + _loc1_ + _loc1_;
      }
   }
}

