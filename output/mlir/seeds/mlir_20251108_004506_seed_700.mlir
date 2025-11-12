"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_spirv_example"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %1 = "arith.muli"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %2 = "arith.subi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "arith.divsi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "scf.for"(%arg0, %arg1) <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
      ^bb1(%i: index, %iv0: tensor<4xi32>, %iv1: tensor<4xi32>):
        %5 = "arith.addi"(%iv0, %iv1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
        %6 = "arith.muli"(%iv0, %iv1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
        "scf.yield"(%iv0, %iv1) : (tensor<4xi32>, tensor<4xi32>) -> (tensor<4xi32>, tensor<4xi32>)
    }) : (index, tensor<4xi32>, tensor<4xi32>) -> (tensor<4xi32>, tensor<4xi32>)
    "spirv.ReturnValue"(%0) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()