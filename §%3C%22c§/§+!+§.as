package §<"c§
{
   import §;">§.§case const include§;
   import §;">§.§get if§;
   import alternativa.math.Vector3;
   import alternativa.tanks.models.weapon.§'!L§;
   
   public class §+!+§ implements §case const include§
   {
      private const §dynamic var set§:int = 11;
      
      private var §else for return§:Vector3 = new Vector3();
      
      private var §case const implements§:Vector3 = new Vector3();
      
      private var angle:Number;
      
      private var screenSize:Number;
      
      private var §'d§:Vector3;
      
      public function §+!+§(param1:Number)
      {
         super();
         this.angle = param1 / 2;
         this.screenSize = Math.tan(this.angle) * 2;
      }
      
      public function §case set set§(param1:Vector3) : void
      {
         this.§'d§ = param1;
      }
      
      public function §?R§() : void
      {
         this.§'d§ = null;
      }
      
      public function §catch for null§(param1:§'!L§) : Vector.<§get if§>
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         this.§else for return§.cross2(param1.§default var super§,param1.direction);
         var _loc5_:Vector.<§get if§> = new Vector.<§get if§>();
         var _loc6_:Number = this.screenSize / (this.§dynamic var set§ - 1);
         var _loc7_:Number = -this.screenSize * 0.5;
         var _loc8_:int = 0;
         while(_loc8_ < this.§dynamic var set§)
         {
            _loc2_ = -this.screenSize * 0.5;
            _loc3_ = 0;
            while(_loc3_ < this.§dynamic var set§)
            {
               this.§case const implements§.copy(param1.direction);
               this.§case const implements§.addScaled(_loc7_,this.§else for return§);
               this.§case const implements§.addScaled(_loc2_,param1.§default var super§);
               this.§case const implements§.normalize();
               _loc4_ = Math.acos(this.§case const implements§.dot(param1.direction));
               if(_loc4_ <= this.angle)
               {
                  _loc5_.push(new §get if§(this.§case const implements§,_loc4_,Number.MAX_VALUE));
               }
               _loc2_ += _loc6_;
               _loc3_++;
            }
            _loc7_ += _loc6_;
            _loc8_++;
         }
         if(this.§'d§ != null)
         {
            _loc5_.push(new §get if§(this.§'d§,Math.acos(this.§'d§.dot(param1.direction)),Number.MAX_VALUE,10));
         }
         return _loc5_;
      }
   }
}

