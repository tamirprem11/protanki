package §9"9§
{
   import §<"N§.§default const static§;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   
   public class §switch var super§ extends §do for§
   {
      private static const §4Q§:Number = 3000;
      
      private static const §try for do§:Number = 1 / 5000;
      
      private static const v:Vector3 = new Vector3();
      
      public function §switch var super§(param1:§default const static§)
      {
         super(param1);
      }
      
      override public function play(param1:int, param2:§for for native§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Boolean = super.play(param1,param2);
         if(_loc4_)
         {
            v.reset(§="I§.x,§="I§.y,§="I§.z);
            _loc3_ = param2.position.distanceTo(v);
            if(_loc3_ > §4Q§)
            {
               scale += _loc3_ * §try for do§;
            }
            return true;
         }
         return false;
      }
   }
}

