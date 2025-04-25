package §["E§
{
   import §9"9§.§,!"§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §set const get§ implements §%!=§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§%!=§>;
      
      public function §set const get§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§%!=§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function §finally break§(param1:IGameObject, param2:Tank, param3:§,!"§) : void
      {
         var §8!V§:IGameObject = param1;
         var §const case§:Tank = param2;
         var §#!z§:§,!"§ = param3;
         var §'!c§:int = 0;
         var §try set else§:§%!=§ = null;
         var §-#§:IGameObject = §8!V§;
         var §override set false§:Tank = §const case§;
         var §function set switch§:§,!"§ = §#!z§;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §try set else§.§finally break§(§-#§,§override set false§,§function set switch§);
               §'!c§++;
            }
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

