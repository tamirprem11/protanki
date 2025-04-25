package §5!Y§
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.battle.battlefield.§87§;
   import alternativa.tanks.models.battle.battlefield.BattleUserInfoService;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import platform.client.fp10.core.type.AutoClosable;
   import platform.client.fp10.core.type.ISpace;
   
   public class §function true§ implements §87§, AutoClosable
   {
      [Inject]
      public static var battleUserInfoService:BattleUserInfoService;
      
      private var space:ISpace;
      
      public function §function true§(param1:ISpace)
      {
         super();
         this.space = param1;
         battleUserInfoService.§for const null§(this);
      }
      
      public function §6"W§(param1:String, param2:int) : void
      {
         var _loc4_:Tank = null;
         try
         {
            _loc4_ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).tankDataById[param1].tank;
         }
         catch(e:Error)
         {
         }
         var _loc3_:§native var function§ = §native var function§(OSGi.getInstance().getService(§native var function§));
         _loc3_.§each var§(_loc4_,param2);
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         this.space = null;
         battleUserInfoService.§^!]§(this);
      }
      
      public function §return set static§(param1:String, param2:String, param3:int, param4:Boolean) : void
      {
      }
      
      public function §with for include§(param1:String, param2:Boolean) : void
      {
      }
   }
}

