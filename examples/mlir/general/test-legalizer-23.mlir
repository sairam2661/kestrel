"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "blackhole"}> ({
    %0 = "test.blackhole_producer"() : () -> i32
    "test.blackhole"(%0) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

