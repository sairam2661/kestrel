"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi16>, tensor<2xi16>) -> tensor<4xi16>, sym_name = "tensor_combine"}> ({
  ^bb0(%arg0: tensor<4xi16>, %arg1: tensor<2xi16>):
    %0 = "tensor.cast"(%arg1) : (tensor<2xi16>) -> tensor<4xi16>
    %1 = "tensor.insert_slice"(%0, %arg0, %0, %0) : (tensor<4xi16>, tensor<4xi16>, tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    "func.return"(%1) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()