package §5!Y§
{
   import §9"9§.§!!c§;
   import §9"9§.§8"F§;
   import §9"9§.§native const in§;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends var dynamic§;
   import alternativa.types.Long;
   import flash.media.Sound;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.resource.types.SoundResource;
   
   public class §1U§ implements §native var function§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var listener:§function true§;
      
      private var §for for null§:int;
      
      public function §1U§()
      {
         super();
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded() : void
      {
         if(this.listener == null)
         {
            this.listener = new §function true§(null);
         }
         ++this.§for for null§;
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded() : void
      {
         --this.§for for null§;
         if(this.§for for null§ == 0)
         {
            this.listener.close();
            this.listener = null;
         }
      }
      
      public function §each var§(param1:Tank, param2:int) : void
      {
         var _loc3_:Tank = param1;
         if(_loc3_.state == §extends var dynamic§.DEAD)
         {
            this.§<"Q§(param1.§&"N§(),param2);
         }
         else
         {
            this.§,"I§(_loc3_,param2);
         }
      }
      
      private function §<"Q§(param1:ClientObject, param2:int) : void
      {
         var _loc3_:§>!G§ = new §>!G§(param1,param2);
         param1.putParams(§>!G§,_loc3_);
      }
      
      private function §,"I§(param1:Tank, param2:int) : void
      {
         var _loc3_:§native const in§ = new §native const in§();
         _loc3_.§while try§(param1,param2);
         this.§import for break§(param1);
      }
      
      private function §import for break§(param1:Tank) : void
      {
         var _loc2_:Sound = null;
         var _loc3_:§!!c§ = null;
         var _loc4_:Body = null;
         var _loc5_:Vector3 = null;
         var _loc6_:§8"F§ = null;
         var _loc7_:Sound = SoundResource(ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry)).getResource(Long.getLong(0,158174))).sound;
         if(_loc7_ != null)
         {
            _loc2_ = _loc7_;
            _loc3_ = §!!c§.create(_loc2_);
            _loc4_ = param1.§<J§();
            _loc5_ = _loc4_.state.position.clone();
            _loc6_ = §8"F§.create(_loc5_,_loc3_,0,0);
            battleService.§!O§(_loc6_);
         }
      }
   }
}

