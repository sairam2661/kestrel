"builtin.module"() ({
  "func.func"() <{function_type = (!torchvranked_tensor_type, !torchvranked_tensor_type) -> !torchvranked_tensor_type, sym_name = "torch.aten.add"}> ({
  ^bb0(%arg0: !torchvranked_tensor_type, %arg1: !torchvranked_tensor_type):
    %0 = "torch.constant.float"() <{value = 2.0 : f32}> : () -> !torchvfloat
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torchvranked_tensor_type, !torchvranked_tensor_type, !torchvfloat) -> !torchvranked_tensor_type
    %2 = "torch.aten.view"(%1, %0) : (!torchvranked_tensor_type, !torchvfloat) -> !torchvranked_tensor_type
    "func.return"(%2) : (!torchvranked_tensor_type) -> ()
  }) : () -> ()
}) : () -> ()