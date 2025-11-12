"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (i32, i32) -> (i32, i32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %2) <{predicate = "slt"}> : (i32, i32) -> i1
    %5 = "arith.select"(%4, %3, %0) : (i1, i32, i32) -> i32
    %6 = "arith.subi"(%5, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%6, %0) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()