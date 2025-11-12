"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "scf.if"(%2) ({
    ^bb0:
      %4 = "arith.addi"(%arg0, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> i32
    }) {
    } : (i32) -> i32
    %5 = "scf.if"(%3) ({
    ^bb0:
      %6 = "arith.mul"(%arg1, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> i32
    }) {
    } : (i32) -> i32
    %7 = "tt.expand_dims"(%5) <{axis = 0 : i32}> : (i32) -> tensor<1xi32>
    %8 = "tt.reduce"(%7) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %9 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%9) : (i32) -> i32
    }) : (tensor<1xi32>) -> i32
    "tt.return"(%8) : (i32) -> i32
  }) : (i32, i32) -> i32
}) : () -> ()