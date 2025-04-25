package §#q§
{
   import alternativa.model.IModel;
   import alternativa.object.ClientObject;
   import com.alternativaplatform.projects.tanks.client.warfare.models.tankparts.weapon.shot.IShotModelBase;
   import com.alternativaplatform.projects.tanks.client.warfare.models.tankparts.weapon.shot.ShotModelBase;
   
   public class §in var if§ extends ShotModelBase implements IShotModelBase, §do for include§
   {
      public function §in var if§()
      {
         super();
         _interfaces.push(IModel,IShotModelBase,§do for include§);
      }
      
      public function initObject(param1:ClientObject, param2:Number, param3:Number, param4:int) : void
      {
         var _loc5_:§0"A§ = new §0"A§(param4);
         _loc5_.§false var final§.value = param2;
         _loc5_.§%!1§.value = 2 * 180 * param2 / Math.PI;
         _loc5_.§break var if§.value = param3;
         _loc5_.§static for const§.value = 2 * 180 * param3 / Math.PI;
         param1.putParams(§in var if§,_loc5_);
      }
      
      public function §="5§(param1:ClientObject) : §0"A§
      {
         return param1.getParams(§in var if§) as §0"A§;
      }
   }
}

