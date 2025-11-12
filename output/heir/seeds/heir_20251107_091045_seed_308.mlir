"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32xi8>) -> tensor<32xi8>, sym_name = "rotate_tensor"}> ({
    ^bb0(%arg0: tensor<32xi8>):
      %0 = "arith.constant"() <{value = 8 : i32}> : () -> i32
      %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<32xi8>, i32) -> tensor<32xi8>
      "func.return"(%1) : (tensor<32xi8>) -> ()
  }) : () -> ()
}) : () -> ()