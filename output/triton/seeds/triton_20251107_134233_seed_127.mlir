"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_loop"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = dense<0> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
    %4:2 = "scf.for"(%0, %1, %2, %3) ({
    ^bb0(%arg0: i32, %arg1: tensor<16x16xi32>):
      %5 = "arith.addi"(%arg0, %2) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      %6 = "arith.constant"() <{value = dense<1> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
      %7 = "arith.addi"(%arg1, %6) <{overflowFlags = #arith_overflowFlags}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
      %8:2 = "scf.if"(%5) ({
      ^bb1:
        %9 = "arith.constant"() <{value = dense<2> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
        %10 = "arith.addi"(%7, %9) <{overflowFlags = #arith_overflowFlags}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
        "scf.yield"(%10) : (tensor<16x16xi32>) -> ()
      }) {
      } : (tensor<16x16xi32>) -> (tensor<16x16xi32>)
      "scf.yield"(%7, %8#0) : (tensor<16x16xi32>, tensor<16x16xi32>) -> ()
    }) : (i32, tensor<16x16xi32>) -> (tensor<16x16xi32>)
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()