package controls
{
   [Embed(source="/_assets/assets.swf", symbol="symbol1")]
   public class RedButton extends ColorButton
   {
      public function RedButton()
      {
         super();
         setStyle(RED);
         labelColor = 16777215;
      }
   }
}

