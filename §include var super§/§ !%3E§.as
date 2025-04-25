package §include var super§
{
   import §!4§.§["^§;
   import §6!b§.§break const in§;
   import §6!b§.§if var default§;
   
   public class § !>§ extends §break const in§
   {
      public var §use const false§:int = 10;
      
      public function § !>§()
      {
         super();
         §7!Q§ = 6;
      }
      
      public function addLine(param1:§if var default§) : void
      {
         var _loc2_:§if var default§ = null;
         §var static§(param1);
         if(container.numChildren > this.§use const false§)
         {
            _loc2_ = §throw for super§();
            if(_loc2_ != null)
            {
               _loc2_.removeEventListener(§["^§.§-p§,this.§super const catch§);
               _loc2_.removeEventListener(§["^§.§default const final§,this.updateUid);
            }
         }
         param1.addEventListener(§["^§.§-p§,this.§super const catch§);
         param1.addEventListener(§["^§.§default const final§,this.updateUid);
         param1.x = -param1.width - 10;
      }
      
      private function §super const catch§(param1:§["^§) : void
      {
         if(container.contains(param1.line))
         {
            §throw for super§();
         }
         param1.line.removeEventListener(§["^§.§-p§,this.§super const catch§);
      }
      
      private function updateUid(param1:§["^§) : void
      {
         var _loc2_:§if var default§ = param1.line;
         _loc2_.x = -_loc2_.width - 10;
         _loc2_.removeEventListener(§["^§.§default const final§,this.§super const catch§);
      }
   }
}

