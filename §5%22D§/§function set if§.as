package §5"D§
{
   import §<"N§.§default const static§;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.collision.CollisionDetector;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.models.weapon.shared.§override for class§;
   import §dynamic package§.§]"P§;
   import flash.errors.IllegalOperationError;
   
   public class §function set if§ extends §for const import§
   {
      private static const §2M§:Vector3 = new Vector3();
      
      public function §function set if§(param1:§default const static§)
      {
         super(param1);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Body = null;
         var _loc4_:Vector3 = null;
         this.§]"W§(param1);
         §2M§.diff(§;!e§,§8!j§);
         var _loc5_:Number = §2M§.length();
         §2M§.normalize();
         var _loc6_:CollisionDetector = battleService.§try var final§().§`"N§();
         if(_loc6_.raycast(§8!j§,§2M§,§]"P§.WEAPON,_loc5_,this,§2!5§))
         {
            _loc2_ = §#",§.§extends for use§(§2!5§.shape.body) && !§override for class§.§[c§(§8!j§,§2!5§.position);
            §]h§.copy(§2!5§.position);
            if(_loc2_)
            {
               _loc3_ = §2!5§.shape.body;
            }
            else
            {
               _loc3_ = null;
               §]h§.subtract(§2M§);
            }
            §super const native§(_loc3_,§]h§,§2M§,_loc5_);
            return;
         }
         var _loc7_:int = 0;
         while(_loc7_ < § !`§())
         {
            _loc4_ = §,"C§[_loc7_];
            if(_loc6_.raycast(_loc4_,§2M§,§]"P§.WEAPON,_loc5_,this,§2!5§))
            {
               if(§#",§.§extends for use§(§2!5§.shape.body))
               {
                  if(!§override for class§.§[c§(§8!j§,§2!5§.position))
                  {
                     §]h§.copy(§8!j§).addScaled(§2!5§.t,§2M§);
                     §super const native§(§2!5§.shape.body,§]h§,§2M§,_loc5_);
                     return;
                  }
               }
            }
            _loc4_.addScaled(_loc5_,§2M§);
            _loc7_++;
         }
         §"!J§.updateState(§;!e§,§set for final§);
         this.§!!0§(param1);
         if(this.§ G§())
         {
            this.§<=§();
         }
      }
      
      override protected function §`"'§(param1:Body, param2:Vector3, param3:Vector3, param4:Number, param5:int) : void
      {
         §"!J§.updateState(param2,param3,param5);
      }
      
      protected function §!!0§(param1:Number) : void
      {
         §switch if§ += param1 * this.§false set§();
      }
      
      protected function §<=§() : void
      {
         destroy();
      }
      
      protected function § G§() : Boolean
      {
         return §switch if§ > this.§import var in§();
      }
      
      protected function §import var in§() : Number
      {
         return Number.MAX_VALUE;
      }
      
      protected function §false set§() : Number
      {
         throw new IllegalOperationError();
      }
      
      protected function §]"W§(param1:Number) : void
      {
         §8!j§.copy(§;!e§);
         §;!e§.addScaled(this.§false set§() * param1,§set for final§);
      }
   }
}

