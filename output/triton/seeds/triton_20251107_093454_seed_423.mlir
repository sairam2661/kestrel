"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>), sym_name = "tensor_operations"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>) :
      %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %2 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %4 = "arith.xori"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %5 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
      %6 = "arith.select"(%arg0, %arg1, %5) : (tensor<64xi32>, tensor<64xi32>, tensor<64xi1>) -> tensor<64xi32>
      "tt.return"(%6) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()