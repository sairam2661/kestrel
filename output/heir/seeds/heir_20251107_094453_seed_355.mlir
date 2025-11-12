"builtin.module"() ({
  "func.func"() <{function_type = (!tensor_ext_tensor_type, !tensor_ext_tensor_type) -> !tensor_ext_tensor_type, sym_name = "tensor_rotation_add"}> ({
  ^bb0(%arg0: !tensor_ext_tensor_type, %arg1: !tensor_ext_tensor_type):
    %0 = "tensor_ext.rotate"(%arg0, %arg0) <{axis = 1}> : (!tensor_ext_tensor_type, !tensor_ext_tensor_type) -> !tensor_ext_tensor_type
    %1 = "tensor_ext.rotate"(%arg1, %arg1) <{axis = 2}> : (!tensor_ext_tensor_type, !tensor_ext_tensor_type) -> !tensor_ext_tensor_type
    %2 = "tensor.insert"(%0, %1, %c0, %c0, %c0) : (!tensor_ext_tensor_type, !tensor_ext_tensor_type, index, index, index) -> !tensor_ext_tensor_type
    %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (!tensor_ext_tensor_type, !tensor_ext_tensor_type) -> !tensor_ext_tensor_type
    "func.return"(%3) : (!tensor_ext_tensor_type) -> ()
  }) : () -> ()
}) : () -> ()