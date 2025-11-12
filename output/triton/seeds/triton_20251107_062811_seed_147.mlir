"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complicated_reduce"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %1 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<128xi32>) -> tensor<128x1xi32>
      %2 = "tt.broadcast"(%1) : (tensor<128x1xi32>) -> tensor<128x128xi32>
      %3 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
      %4 = "arith.remsi"(%2, %3) : (tensor<128x128xi32>, tensor<128xi32>) -> tensor<128x128xi32>
      %5 = "arith.cmpi"(%4, %3, "slt") : (tensor<128x128xi32>, tensor<128xi32>) -> tensor<128x128xi1>
      %6 = "arith.select"(%5, %2, %3) : (tensor<128x128xi1>, tensor<128x128xi32>, tensor<128xi32>) -> tensor<128x128xi32>
      %7 = "tt.reduce"(%6) <{operation = "add", axis = 1 : i32}> : (tensor<128x128xi32>) -> tensor<128xi32>
      "tt.return"(%7) : (tensor<128xi32>) -> ()
  }) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()