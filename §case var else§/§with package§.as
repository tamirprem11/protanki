package §case var else§
{
   public class §with package§ implements §`!v§
   {
      private static const §null const package§:int = 1;
      
      private static const §package return§:int = 2;
      
      private static const §1!n§:int = 3;
      
      private var type:int;
      
      private var §true var else§:§`#§;
      
      private var §@!!§:int;
      
      private var time:int;
      
      private var §false var return§:Number = 0.01;
      
      private var §import const in§:Number = 0.001;
      
      private var state:int;
      
      public function §with package§(param1:int, param2:§`#§, param3:Number, param4:Number, param5:int)
      {
         super();
         this.type = param1;
         this.§true var else§ = param2;
         this.§false var return§ = param3;
         this.§import const in§ = param4;
         this.§@!!§ = param5;
      }
      
      public function getType() : int
      {
         return this.type;
      }
      
      public function start() : void
      {
         this.§true var else§.§finally import§.visible = true;
         this.§true var else§.§finally import§.alpha = 1;
         this.§true var else§.§#"N§.visible = false;
         this.§true var else§.§7!X§.visible = true;
         this.§true var else§.§7!X§.alpha = 0;
         this.state = §null const package§;
      }
      
      public function stop() : void
      {
      }
      
      public function update(param1:int, param2:int) : void
      {
         var _loc3_:Number = this.§true var else§.§finally import§.alpha;
         switch(this.state)
         {
            case §null const package§:
               _loc3_ -= this.§false var return§ * param2;
               if(_loc3_ <= 0)
               {
                  _loc3_ = 0;
                  this.state = §package return§;
                  this.time = this.§@!!§;
               }
               break;
            case §package return§:
               this.time -= param2;
               if(this.time <= 0)
               {
                  this.state = §1!n§;
               }
               break;
            case §1!n§:
               _loc3_ += this.§import const in§ * param2;
               if(_loc3_ >= 1)
               {
                  this.§true var else§.setState(§`#§.§switch super§);
               }
         }
         this.§true var else§.§finally import§.alpha = _loc3_;
         this.§true var else§.§7!X§.alpha = 1 - _loc3_;
      }
   }
}

