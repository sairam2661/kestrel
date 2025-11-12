"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !torch_tensor) -> !torch_tensor, sym_name = "torch_aten_cat_unusual"}> ({
  ^bb0(%arg0: !torch_tensor, %arg1: !torch_tensor):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_tensor) -> !torch_tensor
    %1 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_tensor) -> !torch_tensor
    %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %3 = "torch.constant.none"() : () -> !torch_none
    %4 = "torch.aten.view"(%arg0, %2) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %5 = "torch.aten.view"(%arg1, %2) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %6 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch_tensor) -> !torch_tensor
    %7 = "torch.aten.cat"(%4, %5, %6) : (!torch_tensor, !torch_tensor, !torch_tensor) -> !torch_tensor
    "func.return"(%7) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()