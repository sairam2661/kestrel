"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (i32, i32) -> (i32, i32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_i32}> : (i32, i32) -> i32
    %1 = "arith.cmpi"("slt", %0, %arg1) <{predicate = "slt"}> : (i32, i32) -> i1
    %2 = "arith.select"(%1, %0, %arg1) : (i1, i32, i32) -> i32
    %3 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflow_i32}> : (i32, i32) -> i32
    %4 = "arith.mulf"(%3, %2) <{overflowFlags = #arith_overflow_i32}> : (i32, i32) -> i32
    "func.return"(%4, %2) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()