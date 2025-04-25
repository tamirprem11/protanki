package alternativa.tanks.services.tankregistry
{
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import flash.utils.Dictionary;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class §continue for do§ implements TankUsersRegistry
   {
      private const users:Dictionary = new Dictionary();
      
      private var §5"?§:Vector.<ClientObject>;
      
      private var §%"S§:int;
      
      private var §each else§:ClientObject;
      
      public function §continue for do§()
      {
         super();
      }
      
      public function addUser(param1:ClientObject) : void
      {
         this.§5"?§ = null;
         if(!this.users[param1.id])
         {
            this.users[param1.id] = param1;
            ++this.§%"S§;
         }
         if(IUserPropertiesService(OSGi.getInstance().getService(IUserPropertiesService)).userName == param1.id)
         {
            this.§each else§ = param1;
         }
      }
      
      public function removeUser(param1:ClientObject) : void
      {
         this.§5"?§ = null;
         if(this.users[param1.id])
         {
            delete this.users[param1.id];
            --this.§%"S§;
         }
         if(IUserPropertiesService(OSGi.getInstance().getService(IUserPropertiesService)).userName == param1.id)
         {
            this.§each else§ = null;
         }
      }
      
      public function §false native§() : int
      {
         return this.§%"S§;
      }
      
      public function §import if§() : Vector.<ClientObject>
      {
         var _loc1_:ClientObject = null;
         if(this.§5"?§ == null)
         {
            this.§5"?§ = new Vector.<ClientObject>();
            for each(_loc1_ in this.users)
            {
               this.§5"?§.push(_loc1_);
            }
         }
         return this.§5"?§;
      }
      
      public function §&"N§(param1:String) : ClientObject
      {
         return this.users[param1];
      }
      
      public function §^"X§() : ClientObject
      {
         return this.§each else§;
      }
      
      public function §try set set§() : Boolean
      {
         return this.§each else§ != null;
      }
   }
}

