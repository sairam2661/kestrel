"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> (), sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
      %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %1 = "arith.constant"() <{value = dense<3> : tensor<64xi32>}> : () -> tensor<64xi32>
      %2 = "arith.addi"(%arg0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "arith.cmpi"(%arg1, %2, "slt") : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
      %4 = "arith.select"(%3, %arg0, %arg1) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %5 = "arith.divsi"(%4, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %6 = "arith.xori"(%5, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "tt.return"(%6) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()