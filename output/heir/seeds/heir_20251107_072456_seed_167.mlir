"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_tensor_rotation"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "tensor_ext.rotate"(%arg0, %1) : (tensor<8xi32>, index) -> tensor<8xi32>
    %9 = "tensor_ext.rotate"(%8, %2) : (tensor<8xi32>, index) -> tensor<8xi32>
    %10 = "tensor_ext.rotate"(%9, %3) : (tensor<8xi32>, index) -> tensor<8xi32>
    %11 = "tensor_ext.rotate"(%10, %4) : (tensor<8xi32>, index) -> tensor<8xi32>
    %12 = "tensor_ext.rotate"(%11, %5) : (tensor<8xi32>, index) -> tensor<8xi32>
    %13 = "tensor_ext.rotate"(%12, %6) : (tensor<8xi32>, index) -> tensor<8xi32>
    %14 = "tensor_ext.rotate"(%13, %7) : (tensor<8xi32>, index) -> tensor<8xi32>
    %15 = "arith.addi"(%arg1, %14) <{overflowFlags = #arith_overflow_NONE}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%15) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()