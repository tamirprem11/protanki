package §super for implements§
{
   import §]l§.§const const set§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.objects.tank.§9"L§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   
   public class §@"_§ implements §extends for finally§, §implements var include§
   {
      private var effects:§do for function§;
      
      private var currentTarget:Tank;
      
      public function §@"_§(param1:§do for function§)
      {
         super();
         this.effects = param1;
      }
      
      public function init(param1:§9"L§) : void
      {
         this.effects.init(param1.§0[§(),param1.§,![§());
      }
      
      public function destroy() : void
      {
         this.reset();
      }
      
      public function activate() : void
      {
      }
      
      public function deactivate() : void
      {
         this.reset();
      }
      
      public function enable() : void
      {
      }
      
      public function disable(param1:Boolean) : void
      {
         this.reset();
      }
      
      public function reset() : void
      {
         this.currentTarget = null;
         this.effects.§dynamic const override§();
      }
      
      public function getStatus() : Number
      {
         return 0;
      }
      
      public function §=!F§(param1:§const const set§, param2:Tank = null, param3:Vector3 = null) : void
      {
         this.effects.§null set break§(param1,param2,param3);
         this.currentTarget = param2;
      }
      
      public function §#"M§() : void
      {
         this.effects.§null set break§(§const const set§.IDLE);
         this.currentTarget = null;
      }
      
      public function stop() : void
      {
         this.effects.§dynamic const override§();
         this.currentTarget = null;
      }
      
      public function §5!D§(param1:Tank) : void
      {
         if(param1 != null)
         {
            if(this.currentTarget == param1)
            {
               this.currentTarget = null;
               this.effects.§null set break§(§const const set§.IDLE);
            }
         }
      }
   }
}

