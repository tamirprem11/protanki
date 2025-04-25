package alternativa.tanks.service.money
{
   import alternativa.tanks.gui.buycrystals.BuyCrystalsAlert;
   import alternativa.tanks.service.panel.IPanelView;
   
   public class §6i§ implements IMoneyService
   {
      [Inject]
      public static var panelView:IPanelView;
      
      private var mask:int = 0;
      
      private var listeners:Vector.<§;!l§>;
      
      private var _crystals:int = 0;
      
      private var §implements const native§:int = 0;
      
      public function §6i§()
      {
         super();
         this.listeners = new Vector.<§;!l§>();
      }
      
      private static function §?!]§(param1:int) : void
      {
         new BuyCrystalsAlert(param1);
      }
      
      public function addListener(param1:§;!l§) : void
      {
         if(this.listeners.indexOf(param1) == -1)
         {
            this.listeners.push(param1);
         }
      }
      
      public function removeListener(param1:§;!l§) : void
      {
         var _loc2_:Number = Number(this.listeners.indexOf(param1));
         if(_loc2_ >= 0)
         {
            this.listeners.splice(_loc2_,1);
         }
      }
      
      public function get crystal() : int
      {
         var _loc1_:* = this._crystals ^ this.mask;
         this.§if const implements§(_loc1_);
         return _loc1_;
      }
      
      public function init(param1:int) : void
      {
         this.§for static§(param1);
      }
      
      public function §",§(param1:int) : Boolean
      {
         if(this.crystal < param1)
         {
            §?!]§(param1 - this._crystals);
            return false;
         }
         return true;
      }
      
      public function §8<§(param1:int) : void
      {
         this.§for static§(this.crystal - param1);
         this.§implements const native§ += param1;
      }
      
      public function §in var var§(param1:int) : void
      {
         if(param1 < 0)
         {
            this.§implements const native§ += param1;
            if(this.§implements const native§ < 0)
            {
               param1 = this.§implements const native§;
               this.§implements const native§ = 0;
            }
            else
            {
               param1 = 0;
            }
         }
         this.§for static§(param1);
      }
      
      private function §for static§(param1:int) : void
      {
         var _loc2_:§;!l§ = null;
         panelView.getPanel().playerInfo.crystals = param1;
         this.§if const implements§(param1);
         var _loc3_:int = 0;
         while(_loc3_ < this.listeners.length)
         {
            _loc2_ = this.listeners[_loc3_];
            _loc2_.crystalsChanged(param1);
            _loc3_++;
         }
      }
      
      private function §if const implements§(param1:int) : void
      {
         this.mask = Math.random() * 4294967295;
         this._crystals = param1 ^ this.mask;
      }
   }
}

