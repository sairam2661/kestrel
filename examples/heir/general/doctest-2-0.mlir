"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i32) -> i32, sym_name = "main"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.addi"(%0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

