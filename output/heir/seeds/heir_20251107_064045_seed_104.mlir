"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i32, i16) -> (i32, i32), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i16):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.extui"(%arg1) : (i16) -> i32
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%2, %5) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()