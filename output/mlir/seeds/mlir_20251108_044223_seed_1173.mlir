"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complexOpChain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %1 = "arith.subi"(%0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %0, "slt") : (i32, i32) -> i1
    %5 = "arith.select"(%4, %3, %0) : (i1, i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transform_any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform_any_op):
    %0 = "transform.apply_pass"(%arg0) <{pass_name = "lower_affine"}> : (!transform_any_op) -> !transform_any_op
    "transform.print"(%0) : (!transform_any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()