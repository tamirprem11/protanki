package controls.panel
{
   import controls.Label;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormatAlign;
   import flash.utils.Timer;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol394")]
   public class Indicators extends MovieClip
   {
      public var CR:MovieClip;
      
      public var C1:MovieClip;
      
      public var kdicon:MovieClip;
      
      public var L:MovieClip;
      
      public var N:MovieClip;
      
      public var _changeButton:MainPanelChangeButton;
      
      public var R:MovieClip;
      
      public var playerInfo:Label = new Label();
      
      public var scoreLabel:Label = new Label();
      
      public var kdRatio:Label = new Label();
      
      public var crystalInfo:Label = new Label();
      
      public var changeButton:BaseButton;
      
      public var kd_icon:MovieClip;
      
      private var _width:int;
      
      private var progressBar:Sprite = new Sprite();
      
      private var b_left:MovieClip;
      
      private var b_name:MovieClip;
      
      private var b_conn1:MovieClip;
      
      private var b_ind:MovieClip;
      
      private var b_conn2:MovieClip;
      
      private var b_money:MovieClip;
      
      private var b_conn3:MovieClip;
      
      private var b_crystal:MovieClip;
      
      private var b_right:MovieClip;
      
      private var timer:Timer = new Timer(50);
      
      private var redZone:Sprite = null;
      
      private var _progress:int;
      
      private var _nprogress:int;
      
      private var _oprogress:int;
      
      public function Indicators()
      {
         super();
         this.b_left = getChildByName("L") as MovieClip;
         this.b_name = getChildByName("N") as MovieClip;
         this.b_conn1 = getChildByName("C1") as MovieClip;
         this.b_crystal = getChildByName("CR") as MovieClip;
         this.b_right = getChildByName("R") as MovieClip;
         this.kd_icon = getChildByName("kdicon") as MovieClip;
         this.changeButton = getChildByName("_changeButton") as BaseButton;
         addChild(this.progressBar);
         addChild(this.playerInfo);
         addChild(this.scoreLabel);
         addChild(this.kdRatio);
         addChild(this.crystalInfo);
         this.progressBar.x = 5;
         this.progressBar.y = 5;
         this.playerInfo.x = 6;
         this.playerInfo.autoSize = TextFieldAutoSize.NONE;
         this.scoreLabel.autoSize = TextFieldAutoSize.NONE;
         this.scoreLabel.align = TextFormatAlign.RIGHT;
         this.scoreLabel.width = 200;
         this.scoreLabel.size = this.kdRatio.size = this.playerInfo.size = this.crystalInfo.size = 12;
         this.scoreLabel.color = this.kdRatio.color = this.playerInfo.color = this.crystalInfo.color = 1244928;
         this.scoreLabel.y = this.kdRatio.y = this.playerInfo.y = this.crystalInfo.y = 4;
         this.scoreLabel.height = this.crystalInfo.height = this.playerInfo.height = 18;
         this.crystalInfo.align = TextFormatAlign.RIGHT;
         this.crystalInfo.autoSize = TextFieldAutoSize.NONE;
         this.crystalInfo.width = 59;
         this.redZone = new Sprite();
         this.timer = new Timer(50);
         this.timer.addEventListener(TimerEvent.TIMER,this.hideRedZone);
         this.progressBar.addChild(this.redZone);
         this.redZone.alpha = 0;
      }
      
      public function get progress() : int
      {
         return this._progress;
      }
      
      public function set progress(param1:int) : void
      {
         var _loc2_:Graphics = this.progressBar.graphics;
         var _loc3_:int = this.b_name.width + 4;
         this._progress = param1;
         _loc2_.clear();
         _loc2_.beginFill(1244928,0.2);
         _loc2_.drawRect(0,0,_loc3_ / 10000 * this._progress,16);
         _loc2_.endFill();
      }
      
      public function set newprogress(param1:int) : void
      {
         this._nprogress = param1;
         this._oprogress = this._progress;
         var _loc2_:Graphics = this.redZone.graphics;
         var _loc3_:int = this.b_name.width + 4;
         this.redZone.alpha = 1;
         _loc2_.clear();
         if(this._nprogress >= this._oprogress)
         {
            _loc2_.beginFill(16763904,1);
            _loc2_.drawRect(_loc3_ / 10000 * this._oprogress,0,_loc3_ / 10000 * (param1 - this._oprogress),16);
            _loc2_.endFill();
         }
         else
         {
            _loc2_.beginFill(16763904,1);
            _loc2_.drawRect(0,0,_loc3_,16);
            _loc2_.endFill();
         }
         this.timer.stop();
         this.timer.start();
      }
      
      private function hideRedZone(param1:TimerEvent) : void
      {
         var _loc2_:DisplayObject = this.redZone;
         _loc2_.alpha -= 0.03;
         if(_loc2_.alpha <= 0)
         {
            this.timer.stop();
         }
      }
      
      override public function set width(param1:Number) : void
      {
         var _loc2_:int = 0;
         this._width = param1;
         _loc2_ = int(this._width - 180);
         this.b_name.width = _loc2_;
         this.b_conn1.x = this.b_name.width + this.b_left.width;
         this.b_crystal.width = 67;
         this.b_crystal.x = this.b_conn1.x + this.b_conn1.width;
         this.b_right.x = this.b_crystal.x + this.b_crystal.width;
         this.changeButton.x = this.b_right.x + 9;
         this.crystalInfo.x = this.b_crystal.x - 2;
         this.kdRatio.x = int(this.b_conn1.x - this.kdRatio.textWidth - 3);
         this.kd_icon.x = int(this.b_conn1.x - this.kdRatio.textWidth - 10);
         this.scoreLabel.x = this.kd_icon.x - 205;
         this.playerInfo.width = this.b_name.width - this.kdRatio.width - this.kd_icon.width - 5;
         this.progress = this._progress;
      }
   }
}

