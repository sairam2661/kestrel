"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (tensor<64xi32>, tensor<64xi32>), sym_name = "reduce_and_expand"}> ({
    ^bb0(%arg0: i32):
      %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %1 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
      %2 = "arith.addi"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "arith.constant"() <{value = dense<3> : tensor<64xi32>}> : () -> tensor<64xi32>
      %4 = "arith.mulsi"(%2, %3) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %5:2 = "tt.reduce"(%4) <{axis = 0 : i32, operation = "add"}> : (tensor<64xi32>) -> (i32, tensor<64xi32>)
      %6 = "tt.expand_dims"(%5#1) <{axis = 0 : i32}> : (tensor<64xi32>) -> tensor<1x64xi32>
      %7 = "arith.constant"() <{value = dense<1> : tensor<1x64xi32>}> : () -> tensor<1x64xi32>
      %8 = "arith.addi"(%6, %7) : (tensor<1x64xi32>, tensor<1x64xi32>) -> tensor<1x64xi32>
      "tt.return"(%8, %5#1) : (tensor<1x64xi32>, tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()