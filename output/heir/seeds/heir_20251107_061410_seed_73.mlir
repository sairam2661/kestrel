"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>) -> tensor<4xi8>, sym_name = "rotate_test"}> ({
  ^bb0(%arg0: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi8>, i32) -> tensor<4xi8>
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "tensor_ext.rotate"(%1, %2) : (tensor<4xi8>, i32) -> tensor<4xi8>
    "func.return"(%3) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()