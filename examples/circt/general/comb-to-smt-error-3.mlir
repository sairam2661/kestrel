"builtin.module"() ({
  "func.func"() <{function_type = (!smt.bv<32>, !smt.bv<32>) -> (), sym_name = "test"}> ({
  ^bb0(%arg0: !smt.bv<32>, %arg1: !smt.bv<32>):
    %0 = "builtin.unrealized_conversion_cast"(%arg0) : (!smt.bv<32>) -> i32
    %1 = "builtin.unrealized_conversion_cast"(%arg0) : (!smt.bv<32>) -> i32
    %2 = "comb.icmp"(%0, %1) <{predicate = 11 : i64}> : (i32, i32) -> i1
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

