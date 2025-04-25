package §with const catch§
{
   import alternativa.utils.filters.BCSHFilter;
   import §false const return§.§8"R§;
   import flash.filters.BitmapFilter;
   
   public class §+<§
   {
      private var brightness:Number;
      
      private var contrast:Number;
      
      private var saturation:Number;
      
      private var hue:Number;
      
      public function §+<§(param1:§8"R§)
      {
         super();
         this.brightness = param1.brightness;
         this.contrast = param1.contrast;
         this.saturation = param1.saturation;
         this.hue = param1.hue;
      }
      
      public function createFilter() : BitmapFilter
      {
         return BCSHFilter.createFilter(this.brightness,this.contrast,this.saturation,this.hue);
      }
   }
}

