"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "test_xor_tensor"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "arith.cmpi"(%arg0, %0, "ne") <{result.type = tensor<4x4xi1>}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
      %2 = "arith.cmpi"(%arg1, %0, "ne") <{result.type = tensor<4x4xi1>}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
      %3 = "arith.andi"(%1, %2) <{result.type = tensor<4x4xi1>}> : (tensor<4x4xi1>, tensor<4x4xi1>) -> tensor<4x4xi1>
      %4 = "arith.xori"(%arg0, %arg1) <{result.type = tensor<4x4xi32>}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %5 = "arith.andi"(%4, %3) <{result.type = tensor<4x4xi32>}> : (tensor<4x4xi32>, tensor<4x4xi1>) -> tensor<4x4xi32>
      "func.return"(%5) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()