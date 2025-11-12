"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}], function_type = (i32, i32, i32, i32) -> i32, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %2 = "arith.subi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %4 = "arith.addi"(%0, %3) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %5 = "arith.addi"(%4, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()