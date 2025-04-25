package §7!v§
{
   import alternativa.model.IModel;
   import alternativa.object.ClientObject;
   import com.alternativaplatform.projects.tanks.client.warfare.models.colortransform.ColorTransformModelBase;
   import com.alternativaplatform.projects.tanks.client.warfare.models.colortransform.IColorTransformModelBase;
   
   public class §do set break§ extends ColorTransformModelBase implements IColorTransformModelBase, §break const set§
   {
      public function §do set break§()
      {
         super();
         _interfaces.push(IModel,§break const set§);
      }
      
      public function initObject(param1:ClientObject, param2:Array) : void
      {
         var _loc3_:uint = param2.length;
         var _loc4_:Vector.<§&+§> = new Vector.<§&+§>(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            param1.putParams(§do set break§,_loc4_);
            _loc5_++;
         }
      }
      
      public function §9"_§(param1:ClientObject) : Vector.<§&+§>
      {
         return Vector.<§&+§>(param1.getParams(§do set break§));
      }
   }
}

