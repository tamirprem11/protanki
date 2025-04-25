package §+!8§
{
   import §]2§.§"!4§;
   import §case else§.§>!?§;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §break native§ implements §%!H§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§%!H§>;
      
      public function §break native§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§%!H§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function §'" §() : Vector.<IGameObject>
      {
         var §final continue§:Vector.<IGameObject> = null;
         var §'!c§:int = 0;
         var §try set else§:§%!H§ = null;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §final continue§ = §try set else§.§'" §();
               §'!c§++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return §final continue§;
      }
      
      public function getName() : String
      {
         var result:String = null;
         var i:int = 0;
         var m:§%!H§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getName();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function §each const catch§() : String
      {
         var §final continue§:String = null;
         var §'!c§:int = 0;
         var §try set else§:§%!H§ = null;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §final continue§ = §try set else§.§each const catch§();
               §'!c§++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return §final continue§;
      }
      
      public function §if for finally§() : int
      {
         var §final continue§:int = 0;
         var §'!c§:int = 0;
         var §try set else§:§%!H§ = null;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §final continue§ = §try set else§.§if for finally§();
               §'!c§++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return §final continue§;
      }
      
      public function getMaxRank() : int
      {
         var result:int = 0;
         var i:int = 0;
         var m:§%!H§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getMaxRank();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getMinRank() : int
      {
         var result:int = 0;
         var i:int = 0;
         var m:§%!H§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getMinRank();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getThemeName() : String
      {
         var result:String = null;
         var i:int = 0;
         var m:§%!H§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getThemeName();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function §=A§() : §>!?§
      {
         var §final continue§:§>!?§ = null;
         var §'!c§:int = 0;
         var §try set else§:§%!H§ = null;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §final continue§ = §try set else§.§=A§();
               §'!c§++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return §final continue§;
      }
      
      public function §5"F§() : Vector.<§"!4§>
      {
         var §final continue§:Vector.<§"!4§> = null;
         var §'!c§:int = 0;
         var §try set else§:§%!H§ = null;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §final continue§ = §try set else§.§5"F§();
               §'!c§++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return §final continue§;
      }
      
      public function isEnabled() : Boolean
      {
         var result:Boolean = false;
         var i:int = 0;
         var m:§%!H§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.isEnabled();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getPreviewResource() : ImageResource
      {
         var result:ImageResource = null;
         var i:int = 0;
         var m:§%!H§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getPreviewResource();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
   }
}

