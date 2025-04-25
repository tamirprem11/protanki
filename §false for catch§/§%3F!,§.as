package §false for catch§
{
   import alternativa.tanks.utils.BitMask;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §?!,§ implements §4"i§, §4R§
   {
      public static const §5?§:int = 0;
      
      public static const §dynamic set static§:int = 1;
      
      public static const §%Q§:int = 2;
      
      public static const §include function§:int = 3;
      
      public static const §implements continue§:int = 4;
      
      public static const §8A§:int = 5;
      
      public static const §2"F§:int = 6;
      
      public static const §include throw§:int = 7;
      
      public static const §for var class§:int = 8;
      
      public static const §implements for package§:int = 9;
      
      public static const §?!2§:int = 10;
      
      private static const §use include§:int = 1 << §?!2§ | 1 << §implements for package§ | 1 << §include throw§ | 1 << §for var class§;
      
      private var §catch for return§:Dictionary = new Dictionary();
      
      private var §0,§:BitMask = new BitMask(0);
      
      public function §?!,§()
      {
         super();
         this.§catch for return§[Keyboard.W] = §5?§;
         this.§catch for return§[Keyboard.S] = §dynamic set static§;
         this.§catch for return§[Keyboard.A] = §%Q§;
         this.§catch for return§[Keyboard.D] = §include function§;
         this.§catch for return§[Keyboard.Q] = §8A§;
         this.§catch for return§[Keyboard.E] = §implements continue§;
         this.§catch for return§[Keyboard.SHIFT] = §2"F§;
         this.§catch for return§[Keyboard.LEFT] = §include throw§;
         this.§catch for return§[Keyboard.RIGHT] = §for var class§;
         this.§catch for return§[Keyboard.UP] = §implements for package§;
         this.§catch for return§[Keyboard.DOWN] = §?!2§;
      }
      
      public function §%D§() : int
      {
         return this.§9G§(§5?§,§dynamic set static§);
      }
      
      public function §if var finally§() : int
      {
         return this.§9G§(§include function§,§%Q§);
      }
      
      public function §class for else§() : int
      {
         return this.§9G§(§implements continue§,§8A§);
      }
      
      public function §super if§() : Boolean
      {
         return this.§0,§.getBitValue(§2"F§) == 1;
      }
      
      public function §<"%§(param1:KeyboardEvent) : void
      {
         if(this.§catch for return§[param1.keyCode] != null)
         {
            this.§0,§.setBit(this.§catch for return§[param1.keyCode]);
         }
      }
      
      public function §function const package§(param1:KeyboardEvent) : void
      {
         if(this.§catch for return§[param1.keyCode] != null)
         {
            this.§0,§.clearBit(this.§catch for return§[param1.keyCode]);
         }
      }
      
      public function §finally var true§() : int
      {
         return this.§9G§(§include throw§,§for var class§);
      }
      
      public function §null const extends§() : int
      {
         return this.§9G§(§implements for package§,§?!2§);
      }
      
      public function isRotating() : Boolean
      {
         return this.§0,§.hasAnyBit(§use include§);
      }
      
      private function §9G§(param1:int, param2:int) : int
      {
         return this.§0,§.getBitValue(param1) - this.§0,§.getBitValue(param2);
      }
      
      public function reset() : void
      {
         this.§0,§.clear();
      }
   }
}

