package alternativa.tanks.models.battle.battlefield
{
   import flash.utils.getTimer;
   
   internal class §get const use§
   {
      private static const §implements finally§:int = 10;
      
      private var §%"i§:Number;
      
      private var _fps:Number;
      
      private var §^>§:Number;
      
      private var §extends for false§:Number;
      
      private var § "P§:int;
      
      private var §2!T§:int;
      
      private var §8!u§:int;
      
      private var §super set catch§:int;
      
      public function §get const use§()
      {
         super();
         this.reset();
      }
      
      public function get §^Q§() : Number
      {
         return this.§%"i§;
      }
      
      public function get fps() : Number
      {
         return this._fps;
      }
      
      public function get §8!S§() : Number
      {
         return this.§^>§;
      }
      
      public function get §^A§() : Number
      {
         return this.§extends for false§;
      }
      
      public function §catch true§() : Number
      {
         return 1000 / (this.§super set catch§ - this.§8!u§) * this.§ "P§;
      }
      
      public function get §?!A§() : int
      {
         return this.§ "P§;
      }
      
      public function get totalTime() : int
      {
         return this.§super set catch§ - this.§8!u§;
      }
      
      public function reset() : void
      {
         this.§2!T§ = 0;
         this.§%"i§ = 0;
         this._fps = 100;
         this.§^>§ = 100;
         this.§extends for false§ = 0;
         this.§ "P§ = 0;
         this.§8!u§ = getTimer();
         this.§super set catch§ = this.§8!u§;
      }
      
      public function update() : void
      {
         var _loc1_:int = getTimer();
         this.§case var continue§();
         if(this.§var extends§(_loc1_))
         {
            this.§while for true§(_loc1_);
            this.§?!S§();
            this.§super set catch§ = _loc1_;
         }
      }
      
      private function §case var continue§() : void
      {
         ++this.§ "P§;
         ++this.§2!T§;
      }
      
      private function §var extends§(param1:int) : Boolean
      {
         return this.§2!T§ >= §implements finally§ && param1 > this.§super set catch§;
      }
      
      private function §while for true§(param1:int) : void
      {
         this.§%"i§ = (param1 - this.§super set catch§) / this.§2!T§;
         this._fps = 1000 / this.§%"i§;
         this.§2!T§ = 0;
      }
      
      private function §?!S§() : void
      {
         this.§^>§ = Math.min(this.§^>§,this._fps);
         this.§extends for false§ = Math.max(this.§extends for false§,this._fps);
      }
   }
}

