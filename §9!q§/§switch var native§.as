package §9!q§
{
   import controls.Label;
   
   internal class §switch var native§
   {
      private static const §native const const§:int = 500;
      
      private static const §package for while§:int = 700;
      
      private static const §final for false§:int = 2000;
      
      private static const §7!u§:int = 10000;
      
      private static const ALPHA:Number = 0.6;
      
      private const §throw const false§:int = 18;
      
      private var §package get§:Vector.<§function for function§>;
      
      private var §dynamic class§:Vector.<§function for function§>;
      
      public var §#"<§:Boolean;
      
      private var label:Label = new Label();
      
      private var states:Vector.<§function for function§>;
      
      private var §true with§:int;
      
      public function §switch var native§()
      {
         super();
         this.§package get§ = Vector.<§function for function§>([new §throw const throw§(this,§native const const§,0,1),new §final set set§(§final for false§),new §throw const throw§(this,§package for while§,1,ALPHA),new §final set set§(§7!u§),new §throw const throw§(this,§package for while§,ALPHA,0)]);
         this.§dynamic class§ = Vector.<§function for function§>([new §throw const throw§(this,§package for while§,1,ALPHA),new §final set set§(§7!u§),new §throw const throw§(this,§package for while§,ALPHA,0)]);
         this.label.size = this.§throw const false§;
         this.label.bold = true;
      }
      
      public function init() : void
      {
         this.§#"<§ = false;
         this.§true with§ = 0;
         this.states = this.§package get§;
         var _loc1_:§function for function§ = this.states[0];
         _loc1_.init();
      }
      
      public function §case var function§(param1:int) : void
      {
         this.§#"<§ = false;
         this.§true with§ = 0;
         this.states = this.§dynamic class§;
         var _loc2_:§function for function§ = this.states[1];
         _loc2_.§case set dynamic§(param1);
         var _loc3_:§function for function§ = this.states[0];
         _loc3_.init();
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:§function for function§ = null;
         var _loc3_:§function for function§ = null;
         if(!this.§#"<§)
         {
            _loc2_ = this.states[this.§true with§];
            if(!_loc2_.update(param1))
            {
               if(++this.§true with§ == this.states.length)
               {
                  this.§#"<§ = true;
               }
               else
               {
                  _loc3_ = this.states[this.§true with§];
                  _loc3_.init();
               }
            }
         }
      }
      
      public function setAlpha(param1:Number) : void
      {
         this.label.alpha = param1;
      }
      
      public function getLabel() : Label
      {
         return this.label;
      }
   }
}

