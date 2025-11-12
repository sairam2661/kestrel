"builtin.module"() ({
  "spirv.func"() <{function_type = (tensor<4xi32>, tensor<1xi32>) -> tensor<4xi32>, sym_name = "spv_binary_i32"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<1xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<1xi32>) -> tensor<4xi32>
    %1 = "arith.muli"(%arg0, %arg1) : (tensor<4xi32>, tensor<1xi32>) -> tensor<4xi32>
    %2 = "arith.subi"(%arg0, %arg1) : (tensor<4xi32>, tensor<1xi32>) -> tensor<4xi32>
    %3 = "arith.cmpi"("sgt", %arg0, %arg1) : (tensor<4xi32>, tensor<1xi32>) -> tensor<4xi1>
    %4 = "arith.select"(%arg0, %arg1, %3) : (tensor<4xi32>, tensor<1xi32>, tensor<4xi1>) -> tensor<4xi32>
    %5 = "spirv.ReturnValue"(%4) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()