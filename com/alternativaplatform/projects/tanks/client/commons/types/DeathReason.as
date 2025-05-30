package com.alternativaplatform.projects.tanks.client.commons.types
{
   public class DeathReason
   {
      public static var SUICIDE:DeathReason = new DeathReason();
      
      public static var KILLED_IN_BATTLE:DeathReason = new DeathReason();
      
      public function DeathReason()
      {
         super();
      }
      
      public static function getReason(param1:String) : DeathReason
      {
         if(param1 == "suicide")
         {
            return SUICIDE;
         }
         return KILLED_IN_BATTLE;
      }
   }
}

