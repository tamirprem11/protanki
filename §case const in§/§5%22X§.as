package §case const in§
{
   import alternativa.tanks.services.mipmapping.MipMappingService;
   import alternativa.utils.TextureMaterialRegistry;
   
   public class §5"X§ implements MipMappingService
   {
      private var §if for final§:Boolean;
      
      private var §dynamic native§:Vector.<TextureMaterialRegistry> = new Vector.<TextureMaterialRegistry>();
      
      public function §5"X§()
      {
         super();
      }
      
      public function §import for in§() : Boolean
      {
         return this.§if for final§;
      }
      
      public function setMipMapping(param1:Boolean) : void
      {
         var _loc2_:TextureMaterialRegistry = null;
         if(this.§if for final§ != param1)
         {
            this.§if for final§ = param1;
            for each(_loc2_ in this.§dynamic native§)
            {
               _loc2_.setMipMapping(param1);
            }
         }
      }
      
      public function §dynamic for set§() : void
      {
         this.setMipMapping(!this.§if for final§);
      }
      
      public function §2f§(param1:TextureMaterialRegistry) : void
      {
         this.§dynamic native§.push(param1);
         param1.setMipMapping(this.§if for final§);
      }
   }
}

