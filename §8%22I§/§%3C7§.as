package §8"I§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import §finally set final§.§+"§;
   import §finally set final§.§return for continue§;
   import §for const each§.§1M§;
   import forms.ColorConstants;
   
   public class §<7§
   {
      public function §<7§()
      {
         super();
      }
      
      [Obfuscation(rename="false")]
      public function §for const throw§(param1:Vector.<§return for continue§>) : void
      {
         var _loc2_:§return for continue§ = null;
         var _loc3_:Tank = null;
         var _loc4_:Vector3 = null;
         var _loc5_:Object3D = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.target != null)
            {
               _loc3_ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(§catch set null§.§use var import§[_loc2_.target]).tank;
               _loc4_ = §#",§.§for const finally§;
               if(_loc3_.§include for else§)
               {
                  _loc4_.copy(_loc3_.§function var while§);
                  §#",§.localToGlobal(_loc3_.§<J§(),_loc4_);
               }
               else
               {
                  _loc5_ = _loc3_.§<M§().§break var include§();
                  _loc4_.reset(_loc5_.x,_loc5_.y,_loc5_.z);
               }
               §1M§.start(_loc4_,this.§^K§(_loc2_),_loc2_.§;!B§);
            }
         }
      }
      
      private function §^K§(param1:§return for continue§) : uint
      {
         switch(param1.§"!B§)
         {
            case §+"§.FATAL:
               return ColorConstants.USER_TITLE_RED;
            case §+"§.CRITICAL:
               return ColorConstants.USER_TITLE_YELLOW;
            case §+"§.HEAL:
               return ColorConstants.GREEN_TEXT;
            default:
               return ColorConstants.WHITE;
         }
      }
   }
}

