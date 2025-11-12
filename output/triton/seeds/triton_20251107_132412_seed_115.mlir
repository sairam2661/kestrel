"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_flow"}> ({
    ^bb0:
      %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %1 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
      %2 = "arith.addi"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "tt.expand_dims"(%2, 1) : (tensor<64xi32>, i32) -> tensor<64x1xi32>
      %4 = "arith.constant"() <{value = dense<2> : tensor<64x1xi32>}> : () -> tensor<64x1xi32>
      %5 = "arith.addi"(%3, %4) : (tensor<64x1xi32>, tensor<64x1xi32>) -> tensor<64x1xi32>
      %6 = "tt.reduce"(%5) <{operation = "add", operands = [0, 1]}> : (tensor<64x1xi32>, tensor<64x1xi32>) -> tensor<1xi32>
      %7 = "arith.constant"() <{value = dense<3> : tensor<1xi32>}> : () -> tensor<1xi32>
      %8 = "arith.addi"(%6, %7) : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
      "tt.return"(%8) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()