"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !torch_tensor) -> !torch_tensor, sym_name = "cat_unusual"}> ({
  ^bb0(%arg0: !torch_tensor, %arg1: !torch_tensor):
    %0 = "torch.size.int"(%arg0) : (!torch_tensor) -> !torch_tensor
    %1 = "torch.size.int"(%arg1) : (!torch_tensor) -> !torch_tensor
    %2 = "torch.prim.NumToTensor.Scalar"() <{value = 0 : i64}> : () -> !torch_tensor
    %3 = "torch.eq.Tensor"(%0, %2) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %4 = "torch.eq.Tensor"(%1, %2) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %6 = "torch.prim.ListConstruct"(%5) : (!torch_tensor) -> !torch_list
    %7 = "torch.aten.cat"(%6) : (!torch_list) -> !torch_tensor
    "func.return"(%7) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()