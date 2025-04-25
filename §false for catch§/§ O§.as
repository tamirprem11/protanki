package §false for catch§
{
   import §],§.§while var const§;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§const var dynamic§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends var dynamic§;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import platform.client.fp10.core.type.AutoClosable;
   import services.contextmenu.ContextMenuServiceEvent;
   import services.contextmenu.IContextMenuService;
   
   public class § O§ implements §4R§, §override const do§, AutoClosable
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var §3"'§:TankUsersRegistry;
      
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var contextMenuService:IContextMenuService;
      
      private var §while set throw§:Tank;
      
      private var §implements for try§:§catch extends§;
      
      public function § O§(param1:§catch extends§)
      {
         super();
         this.§implements for try§ = param1;
         battleEventDispatcher.§7i§(§const var dynamic§,this);
         contextMenuService.addEventListener(ContextMenuServiceEvent.FOCUS_ON_USER,this.§use var break§);
      }
      
      private function §use var break§(param1:ContextMenuServiceEvent) : void
      {
         var _loc2_:ClientObject = §3"'§.§&"N§(param1.userId);
         this.§finally var dynamic§(this.§try set null§(_loc2_));
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:Tank = §const var dynamic§(param1).tank;
         if(this.§while set throw§ == _loc2_)
         {
            this.§^!r§();
         }
      }
      
      public function §function const package§(param1:KeyboardEvent) : void
      {
      }
      
      public function §<"%§(param1:KeyboardEvent) : void
      {
         this.onKey(param1);
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Tank = null;
         if(param1.ctrlKey)
         {
            switch(param1.keyCode)
            {
               case Keyboard.F:
                  _loc2_ = this.§throw for null§(null);
                  break;
               case Keyboard.R:
                  _loc2_ = this.§throw for null§(§while var const§.BLUE);
                  break;
               case Keyboard.B:
                  _loc2_ = this.§throw for null§(§while var const§.RED);
                  break;
               case Keyboard.U:
                  this.§^!r§();
            }
            if(_loc2_)
            {
               this.§finally var dynamic§(_loc2_);
            }
         }
         else if(this.§while set throw§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.RIGHT:
                  this.§finally var native§();
                  break;
               case Keyboard.LEFT:
                  this.§6";§();
            }
         }
      }
      
      private function §throw for null§(param1:§while var const§) : Tank
      {
         var _loc2_:ClientObject = null;
         var _loc3_:Tank = null;
         var _loc4_:Number = NaN;
         var _loc5_:Tank = null;
         var _loc6_:Number = 100000000000000000000;
         var _loc7_:§for for native§ = this.§'n§().§function var break§();
         var _loc8_:Vector3 = new Vector3(_loc7_.x,_loc7_.y,_loc7_.z);
         for each(_loc2_ in §3"'§.§import if§())
         {
            _loc3_ = this.§try set null§(_loc2_);
            if(_loc3_.teamType != param1 && _loc3_.state == §extends var dynamic§.§<"]§)
            {
               _loc4_ = _loc3_.§<J§().state.position.distanceTo(_loc8_);
               if(_loc4_ < _loc6_)
               {
                  _loc6_ = _loc4_;
                  _loc5_ = _loc3_;
               }
            }
         }
         return _loc5_;
      }
      
      private function §finally var dynamic§(param1:Tank) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.state != §extends var dynamic§.§<"]§)
         {
            return;
         }
         if(this.§while set throw§ == null)
         {
            battleService.§=-§();
         }
         else
         {
            this.§break var use§();
         }
         this.§while set throw§ = param1;
         battleService.§9"K§(param1);
      }
      
      public function §^!r§() : void
      {
         if(this.§while set throw§)
         {
            this.§break var use§();
            this.§while set throw§ = null;
            this.§implements for try§.activate();
            this.§implements for try§.§7I§();
         }
      }
      
      private function §break var use§() : void
      {
      }
      
      private function §finally var native§() : void
      {
         this.§finally var dynamic§(this.§'w§(1));
      }
      
      private function §6";§() : void
      {
         this.§finally var dynamic§(this.§'w§(-1));
      }
      
      private function §'w§(param1:int) : Tank
      {
         var _loc2_:Tank = null;
         var _loc3_:Vector.<ClientObject> = §3"'§.§import if§();
         var _loc4_:int = int(_loc3_.indexOf(this.§while set throw§.§&"N§()));
         if(_loc4_ == -1)
         {
            return null;
         }
         var _loc5_:int = _loc4_;
         while(true)
         {
            _loc5_ += param1;
            if(_loc5_ == -1)
            {
               _loc5_ = int(_loc3_.length - 1);
            }
            else if(_loc5_ == _loc3_.length)
            {
               _loc5_ = 0;
            }
            _loc2_ = this.§try set null§(_loc3_[_loc5_]);
            if(_loc2_.teamType == this.§while set throw§.teamType && _loc2_.state == §extends var dynamic§.§<"]§)
            {
               break;
            }
            if(_loc4_ == _loc5_)
            {
               return null;
            }
         }
         return _loc2_;
      }
      
      private function §try set null§(param1:ClientObject) : Tank
      {
         var _loc2_:§catch for const§ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
         return _loc2_.getTankData(param1).tank;
      }
      
      private function §'n§() : §,6§
      {
         return battleService.§catch include§();
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         battleEventDispatcher.§,"7§(§const var dynamic§,this);
         contextMenuService.removeEventListener(ContextMenuServiceEvent.FOCUS_ON_USER,this.§use var break§);
      }
   }
}

