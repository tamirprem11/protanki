package §;+§
{
   import §#q§.§0"A§;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import scpacker.tanks.WeaponsManager;
   
   public class §1!2§
   {
      [Inject]
      public static var §3"'§:TankUsersRegistry;
      
      private var §else for return§:Vector3 = new Vector3();
      
      private var self:ClientObject;
      
      private var §implements throw§:Number;
      
      public function §1!2§(param1:ClientObject, param2:Number)
      {
         super();
         this.self = param1;
         this.§implements throw§ = param2;
      }
      
      public function §extends const else§(param1:§'!L§) : Vector.<§false const var§>
      {
         var _loc2_:ClientObject = null;
         var _loc3_:Vector.<§false const var§> = new Vector.<§false const var§>();
         this.§else for return§.cross2(param1.§default var super§,param1.direction);
         for each(_loc2_ in §3"'§.§import if§())
         {
            if(_loc2_ != this.self)
            {
               this.§extends var var§(param1,this.§else for return§,this.§try set null§(_loc2_),_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function §extends var var§(param1:§'!L§, param2:Vector3, param3:Tank, param4:Vector.<§false const var§>) : void
      {
         var _loc5_:Vector3 = §#",§.§for const finally§;
         _loc5_.diff(param3.§<J§().state.position,param1.§#!!§);
         var _loc6_:Number = _loc5_.length();
         var _loc7_:Number = Math.max(0,_loc5_.length() - param3.§package set catch§());
         if(_loc7_ > this.§implements throw§)
         {
            return;
         }
         var _loc8_:Vector3 = param1.§default var super§;
         var _loc9_:Vector3 = param1.direction;
         var _loc10_:Number = _loc5_.dot(_loc8_);
         var _loc11_:Number = _loc5_.dot(_loc9_);
         var _loc12_:Number = _loc5_.dot(param2);
         var _loc13_:Number = Math.atan2(_loc10_,_loc11_);
         var _loc14_:Number = Math.atan2(_loc12_,_loc11_);
         var _loc15_:Number = Math.min(param3.§package set catch§(),_loc6_);
         var _loc18_:Number;
         if(Math.abs(_loc13_) > (_loc18_ = Math.asin(_loc15_ / _loc6_)))
         {
            return;
         }
         var _loc19_:§0"A§ = WeaponsManager.shotDatas[this.§try set null§(this.self).tankData.turret.id];
         var _loc20_:Number = Math.max(_loc14_ - _loc18_,-_loc19_.§false var final§.value);
         var _loc21_:Number = Math.min(_loc14_ + _loc18_,_loc19_.§break var if§.value);
         if(_loc20_ < _loc21_)
         {
            param4.push(new §false const var§(_loc20_,_loc21_,_loc7_,param3));
         }
      }
      
      private function §try set null§(param1:ClientObject) : Tank
      {
         var _loc2_:§catch for const§ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
         return _loc2_.getTankData(param1).tank;
      }
   }
}

