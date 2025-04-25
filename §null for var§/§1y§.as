package §null for var§
{
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends var dynamic§;
   import alternativa.tanks.models.battle.battlefield.BattleUserInfoService;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import controls.base.LabelBase;
   import filters.Filters;
   import flash.events.MouseEvent;
   import flash.text.AntiAliasType;
   import forms.userlabel.ChatUserLabel;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   
   public class §1y§ extends ChatUserLabel
   {
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      [Inject]
      public static var §3"'§:TankUsersRegistry;
      
      [Inject]
      public static var userInfoService:BattleUserInfoService;
      
      private var §continue var set§:LabelBase;
      
      public function §1y§(param1:String, param2:Boolean = true)
      {
         var _loc3_:ClientObject = null;
         var _loc4_:Tank = null;
         _uid = userInfoService.§for var function§(param1);
         _rank = userInfoService.§false try§(param1);
         _chatModeratorLevel = userInfoService.§false§(param1);
         _writeInChat = false;
         _blockUserEnable = param2;
         var _loc5_:* = false;
         if(battleInfoService.isSpectatorMode())
         {
            _loc3_ = §catch set null§.§use var import§[param1];
            if(_loc3_ != null)
            {
               _loc4_ = §finally const class§(OSGi.getInstance().getService(§finally const class§)).getTankData(_loc3_).tank;
               if(_loc4_ != null)
               {
                  _loc5_ = _loc4_.state == §extends var dynamic§.§<"]§;
               }
            }
         }
         this._focusOnUserEnabled = _loc5_;
         super(param1);
         if(!self)
         {
            addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
      }
      
      [Obfuscation(rename="false")]
      override protected function getShadowFilters() : Array
      {
         return Filters.SHADOW_FILTERS;
      }
      
      [Obfuscation(rename="false")]
      protected function §4!b§() : Array
      {
         return Filters.SHADOW_ON_OVER_FILTERS;
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         shadowContainer.filters = this.getShadowFilters();
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         shadowContainer.filters = this.§4!b§();
      }
      
      [Obfuscation(rename="false")]
      override protected function onMouseClick(param1:MouseEvent) : void
      {
         super.onMouseClick(param1);
      }
      
      [Obfuscation(rename="false")]
      override protected function updateProperties() : void
      {
         setUid(_uid);
         setRank(_rank);
         setFriendState(_friendInfoUpdater.state);
      }
      
      [Obfuscation(rename="false")]
      override protected function createUidLabel() : void
      {
         super.createUidLabel();
         _uidLabel.antiAliasType = AntiAliasType.ADVANCED;
         _uidLabel.thickness = 150;
         _uidLabel.sharpness = 200;
      }
   }
}

