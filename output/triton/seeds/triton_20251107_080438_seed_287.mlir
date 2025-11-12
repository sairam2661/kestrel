"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %2 = "arith.divsi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %3 = "arith.muli"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.remsi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (i32, i32) -> i1
      %6 = "scf.if"(%5) ({
        ^bb0:
          "tt.return"(%0, %0) : (i32, i32) -> ()
      }) {
        "tt.return" = "tt.return" : (i32, i32) -> ()
      } : (i1) -> ()
    }) : () -> ()
}) : () -> ()