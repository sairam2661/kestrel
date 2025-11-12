"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x2xi32>, tensor<4x2xi32>) -> tensor<4x2xi32>, sym_name = "mixed_operations"}> ({
    ^bb0(%arg0: tensor<4x2xi32>, %arg1: tensor<4x2xi32>):
      %0 = "arith.constant"() <{value = 1 : index}> : () -> index
      %1 = "arith.constant"() <{value = 2 : index}> : () -> index
      %2 = "arith.constant"() <{value = 3 : index}> : () -> index
      %3 = "arith.constant"() <{value = 4 : index}> : () -> index
      %4 = "tensor.extract"(%arg0, %0) : (tensor<4x2xi32>, index) -> tensor<2xi32>
      %5 = "tensor.extract"(%arg0, %1) : (tensor<4x2xi32>, index) -> tensor<2xi32>
      %6 = "arith.muli"(%4, %5) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      %7 = "arith.addi"(%6, %4) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      %8 = "tensor.insert"(%7, %arg1, %1) : (tensor<2xi32>, tensor<4x2xi32>, index) -> tensor<4x2xi32>
      %9 = "arith.mulf"(%arg0, %arg1) : (tensor<4x2xi32>, tensor<4x2xi32>) -> tensor<4x2xf32>
      %10 = "arith.subi"(%3, %2) : (index, index) -> index
      %11 = "tensor.extract"(%9, %10) : (tensor<4x2xf32>, index) -> f32
      "func.return"(%8) : (tensor<4x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()