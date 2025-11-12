"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "unusual_sequence"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0, "eq") : (i32, i32) -> i1
    %3 = "arith.select"(%2, %1, %arg0) : (i1, i32, i32) -> i32
    %4 = "scf.for"(%arg0, %0, %3) ({
    ^bb0(%indvar: i32, %iv: i32):
      %5 = "arith.addi"(%iv, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      scf.yield %5 : i32
    }) : (i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()