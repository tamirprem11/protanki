package alternativa.tanks.models.battle.battlefield
{
   import §class const catch§.§6!X§;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §6"#§
   {
      private var sound:Sound;
      
      private var §use const return§:§6!X§;
      
      private var §function const case§:SoundChannel;
      
      public function §6"#§(param1:Sound, param2:§6!X§)
      {
         super();
         this.sound = param1;
         this.§use const return§ = param2;
      }
      
      public function play(param1:Boolean) : void
      {
         if(param1)
         {
            if(this.§function const case§ == null)
            {
               this.§function const case§ = this.§use const return§.§const set const§(this.sound,0,100000,new SoundTransform(0.5));
            }
         }
         else if(this.§function const case§ != null)
         {
            this.§use const return§.§9^§(this.§function const case§);
            this.§function const case§ = null;
         }
      }
   }
}

