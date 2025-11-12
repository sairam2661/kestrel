"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_reduction"}> ({
    ^bb0():
      %0 = "arith.constant"() <{value = dense<1   : i32> : tensor<2xi32>}> : () -> tensor<2xi32>
      %1 = "tt.reduce"(%0) ({
        ^bb0(%arg0: i32, %arg1: i32):
          %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"(%2) : (i32) -> ()
      }) : (tensor<2xi32>) -> i32
      %3 = "arith.constant"() <{value = dense<2  : i32> : tensor<2xi32>}> : () -> tensor<2xi32>
      %4 = "tt.reduce"(%3) ({
        ^bb1(%arg2: i32, %arg3: i32):
          %5 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"(%5) : (i32) -> ()
      }) : (tensor<2xi32>) -> i32
      %6 = "arith.xori"(%1, %4) : (i32, i32) -> i32
      "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()