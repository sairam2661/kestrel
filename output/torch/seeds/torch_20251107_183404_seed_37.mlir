"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<3x4xi32>) -> tensor<2x4xi32>, sym_name = "tensor_matmul"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<3x4xi32>):
    %0 = "torch_c.from_builtin_tensor"(%arg0) : (tensor<2x3xi32>) -> !torchv_tensor
    %1 = "torch_c.from_builtin_tensor"(%arg1) : (tensor<3x4xi32>) -> !torchv_tensor
    %2:2 = "torch.aten.matmul"(%0, %1) : (!torchv_tensor, !torchv_tensor) -> (!torchv_tensor, !torchv_tensor)
    %3 = "torch_c.to_builtin_tensor"(%2#0) : (!torchv_tensor) -> tensor<2x4xi32>
    "func.return"(%3) : (tensor<2x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()