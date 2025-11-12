"builtin.module"() ({
  "func.func"() <{arg_attrs = [{tensor_ext.layout = #layout}], function_type = (!secret_secret, !secret_secret) -> !secret_secret, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: !secret_secret):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<4x4xi32>, %arg3: tensor<4x4xi32>):
      %1 = "arith.cmpi"(%arg2, %arg3, "slt") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
      %2 = "arith.select"(%1, %arg2, %arg3) : (tensor<4x4xi1>, tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %3 = "arith.addf"(%arg2, %arg3) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %4 = "secret.yield"(%3) : (tensor<4x4xi32>) -> ()
    }) {__argattrs = [{tensor_ext.layout = #layout}, {tensor_ext.layout = #layout}], __resattrs = [{tensor_ext.layout = #layout}]} : (!secret_secret, !secret_secret) -> !secret_secret
    "func.return"(%0) : (!secret_secret) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "nested_loop_example"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%0) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()