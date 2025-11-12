"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>, sym_name = "rotate_and_sum"}> ({
  ^bb0(%arg0: tensor<4xi16>, %arg1: tensor<4xi16>):
    %0 = "tensor_ext.rotate"(%arg0, 2) : (tensor<4xi16>, index) -> tensor<4xi16>
    %1 = "tensor.add"(%0, %arg1) : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    "func.return"(%1) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()