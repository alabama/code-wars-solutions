
struct Work {
  1: string string_to_check,
  2: optional string comment,
}

exception InvalidStringError {
  1: string whatString,
  2: string why
}

service ProperlyNested {

   void ping(),

   bool is_properly_nested(1:Work w) throws (1:InvalidStringError fail),

   oneway void puts_io(1:string printable)

}
