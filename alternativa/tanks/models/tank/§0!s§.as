package alternativa.tanks.models.tank
{
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.display.usertitle.UserTitle;
   import alternativa.tanks.models.battle.battlefield.§87§;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   
   public class §0!s§ implements §87§
   {
      [Inject]
      public static var §for final§:TankUsersRegistry;
      
      public function §0!s§()
      {
         super();
      }
      
      public function §return set static§(param1:String, param2:String, param3:int, param4:Boolean) : void
      {
         var _loc5_:§"W§ = null;
         var _loc6_:UserTitle = null;
         var _loc7_:§catch for const§ = this.§6?§(param1);
         if(_loc7_ != null)
         {
            _loc5_ = _loc7_.§<f§(§for final§.§&"N§(param1));
            _loc5_.name = param2;
            _loc5_.rank = param3;
            _loc6_ = _loc7_.getTitle(§for final§.§&"N§(param1));
            if(_loc6_ != null)
            {
               _loc6_.setLabelText(param2);
               _loc6_.setRank(param3);
               _loc6_.setSuspicious(param4);
            }
         }
      }
      
      public function §with for include§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§catch for const§ = null;
         var _loc4_:UserTitle = null;
         var _loc5_:ClientObject = §for final§.§&"N§(param1);
         if(_loc5_ != null)
         {
            _loc3_ = this.§6?§(param1);
            _loc4_ = _loc3_.getTitle(_loc5_);
            if(_loc4_ != null)
            {
               _loc4_.setSuspicious(param2);
            }
         }
      }
      
      public function §6"W§(param1:String, param2:int) : void
      {
         var _loc3_:§"W§ = null;
         var _loc4_:UserTitle = null;
         var _loc5_:§catch for const§ = this.§6?§(param1);
         if(_loc5_ != null)
         {
            _loc3_ = _loc5_.§<f§(§for final§.§&"N§(param1));
            _loc3_.rank = param2;
            _loc4_ = _loc5_.getTitle(§for final§.§&"N§(param1));
            if(_loc4_ != null)
            {
               _loc4_.setRank(param2);
            }
         }
      }
      
      private function §6?§(param1:String) : §catch for const§
      {
         var _loc2_:ClientObject = §for final§.§&"N§(param1);
         if(_loc2_ != null)
         {
            return §catch for const§(OSGi.getInstance().getService(§finally const class§));
         }
         return null;
      }
   }
}

