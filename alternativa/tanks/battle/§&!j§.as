package alternativa.tanks.battle
{
   public class §&!j§
   {
      public var r:int;
      
      public var g:int;
      
      public var b:int;
      
      public function §&!j§(param1:int)
      {
         super();
         this.setColor(param1);
      }
      
      private static function clamp(param1:int) : int
      {
         return param1 < 0 ? int(0) : int(param1);
      }
      
      private static function §do for default§(param1:int) : int
      {
         return param1 & 0xFF;
      }
      
      public function setColor(param1:int) : void
      {
         this.r = §do for default§(param1 >> 16);
         this.g = §do for default§(param1 >> 8);
         this.b = §do for default§(param1);
      }
      
      public function §with const final§() : int
      {
         return this.r << 16 | this.g << 8 | this.b;
      }
      
      public function subtract(param1:§&!j§) : void
      {
         this.r = clamp(this.r - param1.r);
         this.g = clamp(this.g - param1.g);
         this.b = clamp(this.b - param1.b);
      }
   }
}

