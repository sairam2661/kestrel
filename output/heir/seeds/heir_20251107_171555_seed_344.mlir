"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {}, {}], function_type = (i32, i32, i1) -> i32, sym_name = "edge_case_fuzzer"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i1):
    %0 = "scf.if"(%arg2) ({
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      "scf.yield"(%1) : (i32) -> ()
    }, {
      %2 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) : (i1) -> i32
    %3 = "comb.truth_table"(%0, %0, %0, %0, %0, %0, %0, %0, %0) : (i32, i32, i32, i32, i32, i32, i32, i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()