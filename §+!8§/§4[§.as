package §+!8§
{
   import §]2§.§"!4§;
   import §case else§.§>!?§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §4[§ implements §%!H§
   {
      private var object:IGameObject;
      
      private var impl:§%!H§;
      
      public function §4[§(param1:IGameObject, param2:§%!H§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function §'" §() : Vector.<IGameObject>
      {
         var §final continue§:Vector.<IGameObject> = null;
         try
         {
            Model.object = this.object;
            §final continue§ = this.impl.§'" §();
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
         try
         {
            Model.object = this.object;
            result = this.impl.getName();
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
         try
         {
            Model.object = this.object;
            §final continue§ = this.impl.§each const catch§();
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
         try
         {
            Model.object = this.object;
            §final continue§ = this.impl.§if for finally§();
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
         try
         {
            Model.object = this.object;
            result = this.impl.getMaxRank();
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
         try
         {
            Model.object = this.object;
            result = this.impl.getMinRank();
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
         try
         {
            Model.object = this.object;
            result = this.impl.getThemeName();
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
         try
         {
            Model.object = this.object;
            §final continue§ = this.impl.§=A§();
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
         try
         {
            Model.object = this.object;
            §final continue§ = this.impl.§5"F§();
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
         try
         {
            Model.object = this.object;
            result = this.impl.isEnabled();
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
         try
         {
            Model.object = this.object;
            result = this.impl.getPreviewResource();
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
   }
}

