package alternativa.tanks.models.battle.battlefield
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.geom.Matrix;
   
   public class §]]§
   {
      private static var §function import§:Class = §?"O§;
      
      private static var §`I§:BitmapData = Bitmap(new §function import§()).bitmapData;
      
      private static var §?7§:Class = §^a§;
      
      private static var §dynamic const continue§:BitmapData = Bitmap(new §?7§()).bitmapData;
      
      private static var §75§:Class = §set else§;
      
      private static var §-Z§:BitmapData = Bitmap(new §75§()).bitmapData;
      
      private static var §import set final§:Class = §final catch§;
      
      private static var §switch for dynamic§:BitmapData = Bitmap(new §import set final§()).bitmapData;
      
      private static var §try const throw§:Class = §break for with§;
      
      private static var §while var get§:BitmapData = Bitmap(new §try const throw§()).bitmapData;
      
      private static var §5!§:Class = §default var var§;
      
      private static var §else set set§:BitmapData = Bitmap(new §5!§()).bitmapData;
      
      private static var §false var do§:Class = §switch const true§;
      
      private static var §1!L§:BitmapData = Bitmap(new §false var do§()).bitmapData;
      
      private static var §true set function§:Class = §catch const final§;
      
      private static var §break for try§:BitmapData = Bitmap(new §true set function§()).bitmapData;
      
      public function §]]§()
      {
         super();
      }
      
      public static function draw(param1:Graphics, param2:int, param3:int) : void
      {
         var _loc4_:int = 4;
         §var const set§(param1,§`I§,_loc4_ - §`I§.width,_loc4_ - §`I§.height,§`I§.width,§`I§.height);
         §var const set§(param1,§dynamic const continue§,param2 - _loc4_,_loc4_ - §dynamic const continue§.height,§dynamic const continue§.width,§dynamic const continue§.height);
         §var const set§(param1,§-Z§,_loc4_ - §-Z§.width,param3 - _loc4_,§-Z§.width,§-Z§.height);
         §var const set§(param1,§switch for dynamic§,param2 - _loc4_,param3 - _loc4_,§switch for dynamic§.width,§switch for dynamic§.height);
         §var const set§(param1,§1!L§,_loc4_,_loc4_ - §1!L§.height,param2 - 2 * _loc4_,§1!L§.height);
         §var const set§(param1,§break for try§,_loc4_,param3 - _loc4_,param2 - 2 * _loc4_,§break for try§.height);
         §var const set§(param1,§while var get§,_loc4_ - §while var get§.width,_loc4_,§while var get§.width,param3 - 2 * _loc4_);
         §var const set§(param1,§else set set§,param2 - _loc4_,_loc4_,§else set set§.width,param3 - 2 * _loc4_);
      }
      
      private static function §var const set§(param1:Graphics, param2:BitmapData, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc7_:Matrix = new Matrix();
         _loc7_.tx = param3;
         _loc7_.ty = param4;
         param1.beginBitmapFill(param2,_loc7_);
         param1.drawRect(param3,param4,param5,param6);
         param1.endFill();
      }
   }
}

