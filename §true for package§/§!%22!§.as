package §true for package§
{
   import alternativa.model.IModel;
   import alternativa.object.ClientObject;
   import alternativa.tanks.battle.§#",§;
   import com.alternativaplatform.projects.tanks.client.warfare.models.tankparts.weapon.weakening.IWeaponWeakeningModelBase;
   import com.alternativaplatform.projects.tanks.client.warfare.models.tankparts.weapon.weakening.WeaponWeakeningModelBase;
   
   public class §!"!§ extends WeaponWeakeningModelBase implements IWeaponWeakeningModelBase, §2"?§
   {
      public function §!"!§()
      {
         super();
         _interfaces.push(IModel,IWeaponWeakeningModelBase,§2"?§);
      }
      
      public function initObject(param1:ClientObject, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§"!W§ = new §"!W§();
         _loc5_.§use set break§ = isNaN(param2) ? 0 : §#",§.§8! §(param2);
         _loc5_.§while false§ = isNaN(param4) ? 1 : §#",§.§8! §(param4);
         _loc5_.§case for for§ = isNaN(param3) ? 0 : param3;
         _loc5_.§package set function§ = _loc5_.§while false§ - _loc5_.§use set break§;
         if(_loc5_.§case for for§ > 100)
         {
            _loc5_.§case for for§ = 100;
         }
         param1.putParams(§!"!§,_loc5_);
      }
      
      public function §3;§(param1:ClientObject, param2:Number) : Number
      {
         var _loc3_:§"!W§ = param1.getParams(§!"!§) as §"!W§;
         if(_loc3_.§package set function§ <= 0)
         {
            return 1;
         }
         if(param2 <= _loc3_.§use set break§)
         {
            return 1;
         }
         if(param2 >= _loc3_.§while false§)
         {
            return 0.01 * _loc3_.§case for for§;
         }
         return 0.01 * (_loc3_.§case for for§ + (_loc3_.§while false§ - param2) * (100 - _loc3_.§case for for§) / _loc3_.§package set function§);
      }
      
      public function §implements class§(param1:ClientObject) : Number
      {
         var _loc2_:§"!W§ = §"!W§(param1.getParams(§!"!§));
         return _loc2_.§use set break§ * 100;
      }
      
      public function §-0§(param1:ClientObject) : §5"b§
      {
         var _loc2_:§"!W§ = §"!W§(param1.getParams(§!"!§));
         return new §5"b§(_loc2_.§use set break§,_loc2_.§while false§,_loc2_.§case for for§);
      }
   }
}

