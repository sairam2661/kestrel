"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "unreferenced_private_function", sym_visibility = "private"}> ({
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.select"(%0, %1, %2) : (i1, i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

