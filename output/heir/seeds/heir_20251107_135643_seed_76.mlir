"builtin.module"() ({
  "func.func"() <{function_type = (tensor<256xi8>, tensor<256xi8>) -> tensor<256xi8>, sym_name = "tensor_rotate_test"}> ({
  ^bb0(%arg0: tensor<256xi8>, %arg1: tensor<256xi8>):
    %0 = "arith.constant"() <{value = 128 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) <{direction = "right"}> : (tensor<256xi8>, index) -> tensor<256xi8>
    %2 = "tensor_ext.rotate"(%1, %0) <{direction = "left"}> : (tensor<256xi8>, index) -> tensor<256xi8>
    %3 = "arith.addi"(%arg1, %2) <{overflowFlags = #arithoverflownone}> : (tensor<256xi8>, tensor<256xi8>) -> tensor<256xi8>
    "func.return"(%3) : (tensor<256xi8>) -> ()
  }) : () -> ()
}) : () -> ()