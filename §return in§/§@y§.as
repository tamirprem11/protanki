package §return in§
{
   import alternativa.model.IModel;
   import alternativa.model.IObjectLoadListener;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.models.tank.§7!n§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.tanks.models.weapon.§continue set dynamic§;
   import alternativa.tanks.models.weapon.§false implements§;
   import com.alternativaplatform.projects.tanks.client.warfare.models.tankparts.weapon.common.IWeaponCommonModelBase;
   import com.alternativaplatform.projects.tanks.client.warfare.models.tankparts.weapon.common.WeaponCommonModelBase;
   import §const set false§.§+"3§;
   import §const set false§.§0"I§;
   import §const set false§.§class var null§;
   
   public class §@y§ extends WeaponCommonModelBase implements IWeaponCommonModelBase, §native var use§
   {
      private var §else const set§:§catch for const§;
      
      public function §@y§()
      {
         super();
         _interfaces.push(IModel,IWeaponCommonModelBase,IObjectLoadListener,§native var use§,§false implements§);
      }
      
      public function initObject(param1:ClientObject, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         this.§else const set§ = OSGi.getInstance().getService(§finally const class§) as §catch for const§;
         var _loc6_:§switch for default§ = new §switch for default§(param5,param4,param2 * §continue set dynamic§.§ !0§.getNumber(),param3 * §continue set dynamic§.§ !0§.getNumber());
         param1.putParams(§@y§,_loc6_);
      }
      
      public function §extends switch§(param1:§7!n§) : §class var null§
      {
         var _loc2_:* = §catch set null§.§case for continue§(param1.turret);
         var _loc3_:§+"3§ = null;
         var _loc4_:§class var null§ = §class var null§(param1.user.getParams(§class var null§));
         if(_loc4_ == null)
         {
            _loc3_ = new §+"3§(true,this.§else const set§,param1);
            param1.user.putParams(§+"3§,_loc3_);
            if(_loc2_ is §0"I§)
            {
               _loc4_ = _loc2_.createLocalTurretController(_loc3_,param1);
            }
            else
            {
               _loc4_ = new §class var null§(_loc3_);
            }
            param1.user.putParams(§class var null§,_loc4_);
         }
         return _loc4_;
      }
      
      public function §="]§(param1:ClientObject) : §switch for default§
      {
         return §switch for default§(param1.getParams(§@y§));
      }
      
      public function §for const switch§(param1:ClientObject) : Number
      {
         return this.§="]§(param1).§6J§();
      }
      
      public function §default override§(param1:ClientObject) : Number
      {
         return this.§="]§(param1).§%"8§();
      }
   }
}

