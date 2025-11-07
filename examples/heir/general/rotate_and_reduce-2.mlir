"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>) -> tensor<8xi32>, sym_name = "simple_sum_mixed_rotation_tensor"}> ({
  ^bb0(%arg0: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "tensor_ext.rotate"(%arg0, %1) : (tensor<8xi32>, index) -> tensor<8xi32>
    %9 = "tensor_ext.rotate"(%arg0, %2) : (tensor<8xi32>, index) -> tensor<8xi32>
    %10 = "arith.addi"(%8, %9) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %11 = "tensor_ext.rotate"(%arg0, %3) : (tensor<8xi32>, index) -> tensor<8xi32>
    %12 = "tensor_ext.rotate"(%arg0, %4) : (tensor<8xi32>, index) -> tensor<8xi32>
    %13 = "tensor_ext.rotate"(%arg0, %5) : (tensor<8xi32>, index) -> tensor<8xi32>
    %14 = "tensor_ext.rotate"(%arg0, %6) : (tensor<8xi32>, index) -> tensor<8xi32>
    %15 = "tensor_ext.rotate"(%arg0, %7) : (tensor<8xi32>, index) -> tensor<8xi32>
    %16 = "arith.addi"(%10, %11) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %17 = "arith.addi"(%16, %12) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %18 = "arith.addi"(%17, %13) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %19 = "arith.addi"(%18, %14) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %20 = "arith.addi"(%19, %15) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %21 = "arith.addi"(%20, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%21) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()

