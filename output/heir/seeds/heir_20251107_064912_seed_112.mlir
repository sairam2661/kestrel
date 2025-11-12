"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi8>, tensor<8xi8>) -> tensor<8xi8>, sym_name = "tensor_add_and_rotate"}> ({
  ^bb0(%arg0: tensor<8xi8>, %arg1: tensor<8xi8>):
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %1) : (tensor<8xi8>, index) -> i8
    %3 = "tensor.extract"(%arg1, %1) : (tensor<8xi8>, index) -> i8
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %5 = "tensor.insert"(%4, %arg0, %1) : (i8, tensor<8xi8>, index) -> tensor<8xi8>
    %6 = "tensor_ext.rotate"(%5) <{direction = "right", amount = 4}> : (tensor<8xi8>) -> tensor<8xi8>
    "func.return"(%6) : (tensor<8xi8>) -> ()
  }) : () -> ()
}) : () -> ()