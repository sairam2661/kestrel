"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "rotate_and_add_tensors"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi8>, index) -> tensor<4xi8>
    %5 = "tensor_ext.rotate"(%arg0, %1) : (tensor<4xi8>, index) -> tensor<4xi8>
    %6 = "tensor_ext.rotate"(%arg0, %2) : (tensor<4xi8>, index) -> tensor<4xi8>
    %7 = "tensor_ext.rotate"(%arg0, %3) : (tensor<4xi8>, index) -> tensor<4xi8>
    %8 = "arith.addi"(%arg1, %4) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    %9 = "arith.addi"(%8, %5) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    %10 = "arith.addi"(%9, %6) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    %11 = "arith.addi"(%10, %7) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%11) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()