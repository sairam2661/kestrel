"builtin.module"() ({
  "tt.func"() <{function_type = (index, i32, tensor<64xi1>) -> tensor<64xi32>, sym_name = "complex_tensor_op"}> ({
    ^bb0(%arg0: index, %arg1: i32, %arg2: tensor<64xi1>):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
      %2 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
      %3 = "arith.mulsi"(%2, %1) : (tensor<64xi32>, i32) -> tensor<64xi32>
      %4 = "scf.if"(%arg2) ({
        ^bb1(%arg3: tensor<64xi1>):
          %5 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
          %6 = "arith.addsi"(%3, %5) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
          "scf.yield"(%6) : (tensor<64xi32>) -> tensor<64xi32>
      }) {
        "scf.yield" = #map, "else" = #map
        } : tensor<64xi1> -> tensor<64xi32>
      "tt.return"(%4) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32} : () -> ()