package §class const import§
{
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §#!I§ implements §with const continue§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§with const continue§>;
      
      public function §#!I§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§with const continue§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function §=W§(param1:String) : void
      {
         var §8!V§:String = param1;
         var §'!c§:int = 0;
         var §try set else§:§with const continue§ = null;
         var §include const implements§:String = §8!V§;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §try set else§.§=W§(§include const implements§);
               §'!c§++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

