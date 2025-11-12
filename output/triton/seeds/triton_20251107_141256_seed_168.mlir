"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>, sym_name = "tensor_logic_operations"}> ({
    ^bb0(%arg0: tensor<128x128xi32>, %arg1: tensor<128x128xi32>):
      %0 = "arith.constant"() <{value = dense<1> : tensor<128x128xi32>}> : () -> tensor<128x128xi32>
      %1 = "arith.addi"(%arg0, %arg1) : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      %2 = "arith.subi"(%arg0, %arg1) : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      %3 = "arith.andi"(%arg0, %arg1) : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      %4 = "arith.ori"(%arg0, %arg1) : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      %5 = "arith.xori"(%arg0, %arg1) : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      %6 = "arith.mul"(%arg0, %arg1) : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      %7 = "arith.divsi"(%arg0, %arg1) : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      %8 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi1>
      %9 = "arith.select"(%8, %0, %arg1) : (tensor<128x128xi1>, tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      "tt.return"(%9) : (tensor<128x128xi32>) -> ()
  }) : () -> ()
}) : () -> ()