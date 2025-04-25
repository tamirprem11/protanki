package alternativa.tanks.help
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.AntiAliasType;
   import flash.text.GridFitType;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class BubbleHelper extends Helper
   {
      public static const r:int = 16;
      
      private static const lineThickness:int = 1;
      
      private static const lineColor:uint = 16777215;
      
      private static const fillColor:uint = 0;
      
      private static const lineAlpha:Number = 1;
      
      private static const fillAlpha:Number = 0.85;
      
      private static const arrowShift:int = r * 1.5;
      
      private static const arrowWidth:int = r * 1.5;
      
      private static var defaultTextFormat:TextFormat = new TextFormat("Tahoma",10,16777215,true);
      
      private static var embededFont:Boolean = false;
      
      private var back:Shape;
      
      private var outline:Shape;
      
      private var _arrowLehgth:int = 48;
      
      private var _arrowAlign:int;
      
      private var arrowP1:Point = new Point();
      
      private var arrowP2:Point = new Point();
      
      private var arrowTarget:Point = new Point();
      
      private var outlineArrowP1:Point = new Point();
      
      private var outlineArrowP2:Point = new Point();
      
      private var outlineArrowTarget:Point = new Point();
      
      private var arrowDirection:Boolean;
      
      private var descriptionLabel:TextField;
      
      private var margin:int = 12;
      
      private var bmp:Bitmap;
      
      private var backContainer:Sprite;
      
      public function BubbleHelper()
      {
         super();
         _size = new Point();
         _targetPoint = new Point();
         this.bmp = new Bitmap();
         addChild(this.bmp);
         this.backContainer = new Sprite();
         this.backContainer.mouseEnabled = false;
         this.backContainer.mouseChildren = false;
         this.backContainer.tabEnabled = false;
         this.backContainer.tabChildren = false;
         this.outline = new Shape();
         this.backContainer.addChild(this.outline);
         this.back = new Shape();
         this.backContainer.addChild(this.back);
         this.arrowAlign = HelperAlign.MIDDLE_RIGHT;
         this.descriptionLabel = new TextField();
         this.descriptionLabel.defaultTextFormat = defaultTextFormat;
         this.descriptionLabel.embedFonts = embededFont;
         this.descriptionLabel.antiAliasType = AntiAliasType.ADVANCED;
         this.descriptionLabel.gridFitType = GridFitType.SUBPIXEL;
         this.descriptionLabel.autoSize = TextFieldAutoSize.LEFT;
         this.descriptionLabel.wordWrap = false;
         this.descriptionLabel.multiline = true;
         this.descriptionLabel.selectable = false;
         addChild(this.descriptionLabel);
         this.descriptionLabel.x = this.margin - 3;
         this.descriptionLabel.y = this.margin - 4;
         this.descriptionLabel.mouseEnabled = false;
         this.descriptionLabel.tabEnabled = false;
      }
      
      public static function setTextFormat(param1:TextFormat, param2:Boolean) : void
      {
         BubbleHelper.defaultTextFormat = param1;
         BubbleHelper.embededFont = param2;
      }
      
      override public function draw(param1:Point) : void
      {
         _size.x = int(param1.x);
         _size.y = int(param1.y);
         this.outline.graphics.clear();
         this.outline.graphics.beginFill(lineColor,lineAlpha);
         this.outline.graphics.drawRoundRect(-lineThickness,-lineThickness,param1.x + lineThickness * 2,param1.y + lineThickness * 2,r + 2,r + 2);
         this.outline.graphics.drawRoundRect(0,0,param1.x,param1.y,r,r);
         this.back.graphics.clear();
         this.back.graphics.beginFill(fillColor,fillAlpha);
         this.back.graphics.drawRoundRect(0,0,param1.x,param1.y,r,r);
         var _loc2_:Number = this._arrowLehgth / arrowWidth;
         if(this._arrowAlign & HelperAlign.TOP_MASK)
         {
            this.arrowP1.y = 0;
            this.arrowP2.y = 0;
            this.arrowTarget.y = -this._arrowLehgth;
            this.outlineArrowP1.y = 0;
            this.outlineArrowP2.y = 0;
            this.outlineArrowTarget.y = -_loc2_ * (arrowWidth + lineThickness * 2);
         }
         else if(this._arrowAlign & HelperAlign.MIDDLE_MASK)
         {
            this.arrowP1.y = param1.y - arrowWidth >> 1;
            this.arrowP2.y = this.arrowP1.y + arrowWidth;
            this.arrowTarget.y = this.arrowP1.y;
            this.outlineArrowP1.y = this.arrowP1.y - lineThickness;
            this.outlineArrowP2.y = this.arrowP1.y + arrowWidth + lineThickness;
            this.outlineArrowTarget.y = this.outlineArrowP1.y;
         }
         else
         {
            this.arrowP1.y = param1.y;
            this.arrowP2.y = param1.y;
            this.arrowTarget.y = param1.y + this._arrowLehgth;
            this.outlineArrowP1.y = param1.y;
            this.outlineArrowP2.y = param1.y;
            this.outlineArrowTarget.y = param1.y + _loc2_ * (arrowWidth + lineThickness * 2);
         }
         if(this._arrowAlign & HelperAlign.LEFT_MASK)
         {
            if(this.arrowDirection == HelperArrowDirection.VERTICAL)
            {
               this.arrowTarget.x = arrowShift;
               this.arrowP1.x = arrowShift;
               this.arrowP2.x = arrowShift + arrowWidth;
               this.outlineArrowTarget.x = arrowShift - lineThickness;
               this.outlineArrowP1.x = arrowShift - lineThickness;
               this.outlineArrowP2.x = arrowShift + arrowWidth + lineThickness;
            }
            else
            {
               this.arrowTarget.x = -this._arrowLehgth;
               this.arrowP1.x = 0;
               this.arrowP2.x = 0;
               this.outlineArrowTarget.x = -_loc2_ * (arrowWidth + lineThickness * 2);
               this.outlineArrowP1.x = 0;
               this.outlineArrowP2.x = 0;
            }
            if(this._arrowAlign & HelperAlign.TOP_MASK)
            {
               this.outline.graphics.drawRect(this.arrowP1.x,this.arrowP1.y - lineThickness,this.arrowP2.x - this.arrowP1.x,lineThickness);
            }
            else if(this._arrowAlign & HelperAlign.MIDDLE_MASK)
            {
               this.outline.graphics.drawRect(this.arrowP1.x - lineThickness,this.arrowP1.y,lineThickness,this.arrowP2.y - this.arrowP1.y);
            }
            else
            {
               this.outline.graphics.drawRect(this.arrowP1.x,this.arrowP1.y,this.arrowP2.x - this.arrowP1.x,lineThickness);
            }
         }
         else if(this._arrowAlign & HelperAlign.CENTER_MASK)
         {
            this.arrowTarget.x = param1.x - arrowWidth >> 1;
            this.arrowP1.x = this.arrowTarget.x;
            this.arrowP2.x = this.arrowTarget.x + arrowWidth;
            this.outlineArrowTarget.x = this.arrowTarget.x - lineThickness;
            this.outlineArrowP1.x = this.outlineArrowTarget.x;
            this.outlineArrowP2.x = this.arrowP2.x + lineThickness;
            if(this._arrowAlign & HelperAlign.TOP_MASK)
            {
               this.outline.graphics.drawRect(this.arrowP1.x,this.arrowP1.y - lineThickness,this.arrowP2.x - this.arrowP1.x,lineThickness);
            }
            else
            {
               this.outline.graphics.drawRect(this.arrowP1.x,this.arrowP1.y,this.arrowP2.x - this.arrowP1.x,lineThickness);
            }
         }
         else
         {
            if(this.arrowDirection == HelperArrowDirection.VERTICAL)
            {
               this.arrowTarget.x = param1.x - arrowShift;
               this.arrowP1.x = this.arrowTarget.x;
               this.arrowP2.x = this.arrowP1.x - arrowWidth;
               this.outlineArrowTarget.x = this.arrowTarget.x + lineThickness;
               this.outlineArrowP1.x = this.outlineArrowTarget.x;
               this.outlineArrowP2.x = this.arrowTarget.x - arrowWidth - lineThickness;
            }
            else
            {
               this.arrowTarget.x = param1.x + this._arrowLehgth;
               this.arrowP1.x = param1.x;
               this.arrowP2.x = param1.x;
               this.outlineArrowTarget.x = param1.x + _loc2_ * (arrowWidth + lineThickness * 2);
               this.outlineArrowP1.x = param1.x;
               this.outlineArrowP2.x = param1.x;
            }
            if(this._arrowAlign & HelperAlign.TOP_MASK)
            {
               this.outline.graphics.drawRect(this.arrowP1.x,this.arrowP1.y - lineThickness,this.arrowP2.x - this.arrowP1.x,lineThickness);
            }
            else if(this._arrowAlign & HelperAlign.MIDDLE_MASK)
            {
               this.outline.graphics.drawRect(this.arrowP1.x,this.arrowP1.y,lineThickness,this.arrowP2.y - this.arrowP1.y);
            }
            else
            {
               this.outline.graphics.drawRect(this.arrowP1.x,this.arrowP1.y,this.arrowP2.x - this.arrowP1.x,lineThickness);
            }
         }
         this.back.graphics.moveTo(this.arrowTarget.x,this.arrowTarget.y);
         this.back.graphics.lineTo(this.arrowP1.x,this.arrowP1.y);
         this.back.graphics.lineTo(this.arrowP2.x,this.arrowP2.y);
         this.back.graphics.lineTo(this.arrowTarget.x,this.arrowTarget.y);
         this.outline.graphics.beginFill(lineColor,lineAlpha);
         this.outline.graphics.moveTo(this.outlineArrowTarget.x,this.outlineArrowTarget.y);
         this.outline.graphics.lineTo(this.outlineArrowP1.x,this.outlineArrowP1.y);
         this.outline.graphics.lineTo(this.outlineArrowP2.x,this.outlineArrowP2.y);
         this.outline.graphics.lineTo(this.outlineArrowTarget.x,this.outlineArrowTarget.y);
         this.outline.graphics.moveTo(this.arrowTarget.x,this.arrowTarget.y);
         this.outline.graphics.lineTo(this.arrowP1.x,this.arrowP1.y);
         this.outline.graphics.lineTo(this.arrowP2.x,this.arrowP2.y);
         this.outline.graphics.lineTo(this.arrowTarget.x,this.arrowTarget.y);
         var _loc3_:String = stage.quality;
         stage.quality = StageQuality.HIGH;
         var _loc4_:Matrix = new Matrix();
         if(this.outlineArrowTarget.x < 0)
         {
            _loc4_.tx = -Math.round(this.outlineArrowTarget.x);
            this.bmp.x = Math.round(this.outlineArrowTarget.x);
         }
         else
         {
            _loc4_.tx = lineThickness;
            this.bmp.x = -lineThickness;
         }
         if(this.outlineArrowTarget.y < 0)
         {
            _loc4_.ty = -Math.round(this.outlineArrowTarget.y);
            this.bmp.y = Math.round(this.outlineArrowTarget.y);
         }
         else
         {
            _loc4_.ty = lineThickness;
            this.bmp.y = -lineThickness;
         }
         this.bmp.bitmapData = new BitmapData(Math.round(this.outline.width),Math.round(this.outline.height),true,0);
         this.bmp.bitmapData.draw(this.backContainer,_loc4_,new ColorTransform(),BlendMode.NORMAL,null,true);
         stage.quality = _loc3_;
         this.descriptionLabel.width = param1.x - this.margin * 2;
      }
      
      override public function align(param1:int, param2:int) : void
      {
         this.doAlign();
      }
      
      protected function doAlign() : void
      {
         var _loc1_:Point = null;
         if(parent != null)
         {
            _loc1_ = parent.globalToLocal(_targetPoint);
            this.x = Math.round(_loc1_.x - this.outlineArrowTarget.x);
            this.y = Math.round(_loc1_.y - this.outlineArrowTarget.y);
         }
      }
      
      public function get arrowLehgth() : int
      {
         return this._arrowLehgth;
      }
      
      public function set arrowLehgth(param1:int) : void
      {
         this._arrowLehgth = param1;
      }
      
      public function get arrowAlign() : int
      {
         return this._arrowAlign;
      }
      
      public function set arrowAlign(param1:int) : void
      {
         if(param1 == HelperAlign.MIDDLE_CENTER)
         {
            this._arrowAlign = HelperAlign.BOTTOM_LEFT;
         }
         else
         {
            this._arrowAlign = param1;
         }
         if(Boolean(this._arrowAlign & HelperAlign.TOP_MASK) || Boolean(this._arrowAlign & HelperAlign.BOTTOM_MASK))
         {
            this.arrowDirection = HelperArrowDirection.VERTICAL;
         }
         else
         {
            this.arrowDirection = HelperArrowDirection.HORIZONTAL;
         }
      }
      
      public function set text(param1:String) : void
      {
         this.descriptionLabel.htmlText = param1;
         _size.x = Math.round(this.descriptionLabel.textWidth + this.margin * 2);
         _size.y = Math.round(this.descriptionLabel.textHeight + this.margin * 2) - 3;
      }
   }
}

