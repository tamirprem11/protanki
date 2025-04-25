package §dynamic set use§
{
   public class §in const continue§
   {
      public var head:§]w§;
      
      public var tail:§]w§;
      
      public function §in const continue§()
      {
         super();
      }
      
      public function §do const switch§(param1:§]w§) : void
      {
         if(this.head == null)
         {
            this.head = this.tail = param1;
         }
         else
         {
            this.tail.next = param1;
            param1.prev = this.tail;
            this.tail = param1;
         }
      }
      
      public function §return var else§(param1:§]w§) : void
      {
         if(this.head == null)
         {
            return;
         }
         if(param1 == this.head)
         {
            if(param1 == this.tail)
            {
               this.head = this.tail = null;
            }
            else
            {
               this.head = this.head.next;
               this.head.prev = null;
            }
         }
         else if(param1 == this.tail)
         {
            this.tail = this.tail.prev;
            this.tail.next = null;
         }
         else
         {
            param1.prev.next = param1.next;
            param1.next.prev = param1.prev;
         }
         param1.dispose();
      }
      
      public function §%!-§() : void
      {
         while(this.head != null)
         {
            this.§return var else§(this.head);
         }
      }
   }
}

