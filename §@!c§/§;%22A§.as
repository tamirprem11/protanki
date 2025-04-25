package §@!c§
{
   import §9!D§.§3"Q§;
   import alternativa.math.Vector3;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import utils.graphics.SectorMask;
   import §while finally§.§for var do§;
   
   public class §;"A§ extends Sprite
   {
      private var §1!]§:§for var do§;
      
      private var §null for case§:Bitmap;
      
      private var §false var with§:Bitmap;
      
      private var sectorMask:SectorMask;
      
      private var score:Number = 0;
      
      private var container:Sprite = new Sprite();
      
      public function §;"A§(param1:§for var do§)
      {
         super();
         this.§1!]§ = param1;
         this.§7!P§();
      }
      
      private static function §09§(param1:§3"Q§) : Bitmap
      {
         return new Bitmap(§`T§.§throw get§(param1),PixelSnapping.AUTO,true);
      }
      
      private function §7!P§() : void
      {
         this.§null for case§ = §09§(§3"Q§.BLUE);
         this.§false var with§ = §09§(§3"Q§.RED);
         addChild(§09§(§3"Q§.NEUTRAL));
         addChild(this.container);
         this.sectorMask = new SectorMask(this.§null for case§.width);
         this.container.addChild(this.sectorMask);
         addChild(new Bitmap(§`T§.§'B§(this.§1!]§.getName().charAt(0))));
         this.§for const default§();
      }
      
      public function §if for static§(param1:Vector3) : void
      {
         this.§1!]§.readPosition(param1);
      }
      
      public function update() : void
      {
         this.§for in§(this.§1!]§.§%O§());
      }
      
      public function §6"S§() : §for var do§
      {
         return this.§1!]§;
      }
      
      private function §for in§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(param1 < -100)
         {
            param1 = -100;
         }
         else if(param1 > 100)
         {
            param1 = 100;
         }
         if(this.score != param1)
         {
            if(param1 == 0)
            {
               this.§for const default§();
            }
            else
            {
               _loc2_ = Math.abs(param1) / 100;
               this.sectorMask.setProgress(1 - _loc2_,1);
               if(param1 < 0)
               {
                  this.§for case§();
               }
               else if(param1 > 0)
               {
                  this.§package for function§();
               }
            }
            this.score = param1;
         }
      }
      
      private function §for const default§() : void
      {
         this.container.visible = false;
      }
      
      private function §for case§() : void
      {
         this.container.visible = true;
         this.§true for switch§(this.§null for case§,this.§false var with§);
         this.container.mask = this.sectorMask;
      }
      
      private function §package for function§() : void
      {
         this.container.visible = true;
         this.§true for switch§(this.§false var with§,this.§null for case§);
         this.container.mask = this.sectorMask;
      }
      
      private function §true for switch§(param1:DisplayObject, param2:DisplayObject) : void
      {
         if(param2.parent == null)
         {
            if(param1.parent != null)
            {
               this.container.removeChild(param1);
            }
            this.container.addChild(param2);
         }
      }
   }
}

