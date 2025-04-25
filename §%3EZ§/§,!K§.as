package §>Z§
{
   import alternativa.tanks.services.colortransform.§?!<§;
   import alternativa.tanks.services.colortransform.ColorTransformService;
   import alternativa.tanks.services.colortransform.§use var extends§;
   import flash.geom.ColorTransform;
   
   public class §,!K§ implements ColorTransformService
   {
      private const §super const each§:Vector.<§use var extends§> = new Vector.<§use var extends§>();
      
      private var colorTransform:ColorTransform;
      
      private var §throw for§:ColorTransform;
      
      private var §default for with§:ColorTransform;
      
      public function §,!K§()
      {
         super();
      }
      
      public function §throw var class§(param1:§use var extends§) : void
      {
         this.§super const each§.push(param1);
         param1.setColorTransform(this.colorTransform);
      }
      
      public function setColorTransform(param1:ColorTransform) : void
      {
         var _loc2_:§use var extends§ = null;
         if(!§?!<§.§?X§(this.colorTransform,param1))
         {
            this.colorTransform = §?!<§.clone(param1);
            for each(_loc2_ in this.§super const each§)
            {
               _loc2_.setColorTransform(this.colorTransform);
            }
         }
      }
      
      public function §-"c§() : ColorTransform
      {
         return §?!<§.clone(this.colorTransform);
      }
      
      public function §["4§(param1:ColorTransform, param2:ColorTransform, param3:ColorTransform, param4:ColorTransform) : void
      {
         this.§throw for§ = param1;
         this.§default for with§ = param2;
      }
      
      public function §"#§() : ColorTransform
      {
         return this.§throw for§;
      }
      
      public function §&R§() : ColorTransform
      {
         return this.§default for with§;
      }
   }
}

