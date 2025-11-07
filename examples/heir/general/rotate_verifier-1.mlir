"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x16xi32>) -> (), sym_name = "test_rotate_verifier_ok"}> ({
  ^bb0(%arg0: tensor<1x16xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<1x16xi32>, i32) -> tensor<1x16xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

