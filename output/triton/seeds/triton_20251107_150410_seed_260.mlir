"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_division"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg1, "arith.constant"  ) <{predicate = "eq", value = 0 : i32}> : (i32, i32) -> i1
    %1 = "scf.if"(%0) ({
      %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      %3 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i1) -> i32
    "tt.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()