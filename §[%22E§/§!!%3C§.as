package §["E§
{
   import §9"9§.§,!"§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §!!<§ implements §%!=§
   {
      private var object:IGameObject;
      
      private var impl:§%!=§;
      
      public function §!!<§(param1:IGameObject, param2:§%!=§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function §finally break§(param1:IGameObject, param2:Tank, param3:§,!"§) : void
      {
         var §8!V§:IGameObject = param1;
         var §const case§:Tank = param2;
         var §#!z§:§,!"§ = param3;
         var §-#§:IGameObject = §8!V§;
         var §override set false§:Tank = §const case§;
         var §function set switch§:§,!"§ = §#!z§;
         try
         {
            Model.object = this.object;
            this.impl.§finally break§(§-#§,§override set false§,§function set switch§);
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

