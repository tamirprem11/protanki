package §const for import§
{
   import controls.base.LabelBase;
   import flash.events.FocusEvent;
   import flash.text.TextField;
   import forms.ColorConstants;
   
   public class §"_§ extends LabelBase
   {
      private var input:TextField;
      
      public function §"_§(param1:TextField)
      {
         super();
         this.input = param1;
         param1.addEventListener(FocusEvent.FOCUS_IN,this.§-j§);
         param1.addEventListener(FocusEvent.FOCUS_OUT,this.§continue true§);
         mouseEnabled = false;
         color = ColorConstants.LIST_LABEL_HINT;
      }
      
      private function §-j§(param1:FocusEvent) : void
      {
         visible = false;
      }
      
      private function §continue true§(param1:FocusEvent) : void
      {
         if(this.input.text.length == 0)
         {
            visible = true;
         }
      }
   }
}

