package §;">§
{
   import alternativa.math.Vector3;
   import mx.utils.StringUtil;
   
   public class §get if§
   {
      private var direction:Vector3;
      
      private var angle:Number;
      
      private var §override for switch§:Number;
      
      private var §throw set break§:Number;
      
      public function §get if§(param1:Vector3, param2:Number, param3:Number, param4:Number = 0)
      {
         super();
         this.direction = param1.clone();
         this.angle = param2;
         this.§override for switch§ = param3;
         this.§throw set break§ = param4;
      }
      
      public static function comparator(param1:§get if§, param2:§get if§) : Number
      {
         return param2.§override for switch§ - param1.§override for switch§;
      }
      
      public function §9G§() : Vector3
      {
         return this.direction;
      }
      
      public function §super use§() : Number
      {
         return this.angle;
      }
      
      public function §switch var function§() : Number
      {
         return this.§override for switch§;
      }
      
      public function §9!A§() : Number
      {
         return this.§throw set break§;
      }
      
      public function toString() : String
      {
         return StringUtil.substitute("TargetingDirection[direction={0}, angle={1}, maxPriority={2}]",this.direction,this.angle.toFixed(2),this.§override for switch§.toFixed(0));
      }
   }
}

