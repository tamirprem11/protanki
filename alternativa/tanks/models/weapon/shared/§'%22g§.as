package alternativa.tanks.models.weapon.shared
{
   import §7!v§.§&+§;
   import alternativa.math.Vector3;
   import alternativa.tanks.engine3d.§2!W§;
   import flash.geom.ColorTransform;
   
   public class §'"g§ extends §2!W§
   {
      private static var §static const in§:int = 20;
      
      private static var pool:Vector.<§'"g§> = new Vector.<§'"g§>(§static const in§);
      
      private static var §case for implements§:int = -1;
      
      public var velocity:Vector3 = new Vector3();
      
      public var §import switch§:Number = 0;
      
      public var §^!o§:Number;
      
      public var §`!§:int;
      
      public function §'"g§()
      {
         super(100,100);
         softAttenuation = 130;
         colorTransform = new ColorTransform();
      }
      
      public static function §break catch§() : §'"g§
      {
         if(§case for implements§ == -1)
         {
            return new §'"g§();
         }
         var _loc1_:§'"g§ = pool[§case for implements§];
         var _loc2_:* = §case for implements§--;
         pool[_loc2_] = null;
         _loc1_.reset();
         return _loc1_;
      }
      
      private static function §+"8§(param1:§&+§, param2:§&+§, param3:Number, param4:ColorTransform) : void
      {
         param4.alphaMultiplier = param1.alphaMultiplier + param3 * (param2.alphaMultiplier - param1.alphaMultiplier);
         param4.alphaOffset = param1.alphaOffset + param3 * (param2.alphaOffset - param1.alphaOffset);
         param4.redMultiplier = param1.redMultiplier + param3 * (param2.redMultiplier - param1.redMultiplier);
         param4.redOffset = param1.redOffset + param3 * (param2.redOffset - param1.redOffset);
         param4.greenMultiplier = param1.greenMultiplier + param3 * (param2.greenMultiplier - param1.greenMultiplier);
         param4.greenOffset = param1.greenOffset + param3 * (param2.greenOffset - param1.greenOffset);
         param4.blueMultiplier = param1.blueMultiplier + param3 * (param2.blueMultiplier - param1.blueMultiplier);
         param4.blueOffset = param1.blueOffset + param3 * (param2.blueOffset - param1.blueOffset);
      }
      
      private static function §""c§(param1:§&+§, param2:ColorTransform) : void
      {
         param2.alphaMultiplier = param1.alphaMultiplier;
         param2.alphaOffset = param1.alphaOffset;
         param2.redMultiplier = param1.redMultiplier;
         param2.redOffset = param1.redOffset;
         param2.greenMultiplier = param1.greenMultiplier;
         param2.greenOffset = param1.greenOffset;
         param2.blueMultiplier = param1.blueMultiplier;
         param2.blueOffset = param1.blueOffset;
      }
      
      public function reset() : void
      {
         var _loc1_:ColorTransform = colorTransform;
         _loc1_.redMultiplier = 1;
         _loc1_.greenMultiplier = 1;
         _loc1_.blueMultiplier = 1;
         _loc1_.alphaMultiplier = 1;
         _loc1_.redOffset = 0;
         _loc1_.greenOffset = 0;
         _loc1_.blueOffset = 0;
         _loc1_.alphaOffset = 0;
         alpha = 1;
      }
      
      public function dispose() : void
      {
         clear();
         var _loc1_:* = ++§case for implements§;
         pool[_loc1_] = this;
      }
      
      public function §null for while§(param1:Number, param2:Vector.<§&+§>) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:§&+§ = null;
         var _loc5_:§&+§ = null;
         var _loc6_:int = 0;
         if(param2 != null)
         {
            _loc3_ = this.§import switch§ / param1;
            if(_loc3_ <= 0)
            {
               _loc4_ = param2[0];
               §""c§(_loc4_,colorTransform);
            }
            else if(_loc3_ >= 1)
            {
               _loc4_ = param2[param2.length - 1];
               §""c§(_loc4_,colorTransform);
            }
            else
            {
               _loc6_ = 1;
               _loc4_ = param2[0];
               _loc5_ = param2[1];
               while(_loc5_.t < _loc3_)
               {
                  _loc6_++;
                  _loc4_ = _loc5_;
                  _loc5_ = param2[_loc6_];
               }
               _loc3_ = (_loc3_ - _loc4_.t) / (_loc5_.t - _loc4_.t);
               §+"8§(_loc4_,_loc5_,_loc3_,colorTransform);
            }
            alpha = colorTransform.alphaMultiplier;
         }
      }
   }
}

