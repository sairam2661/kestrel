"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantfloat, !torchconstantfloat) -> !torchconstantfloat, sym_name = "torch_aten_add_tensor_combinations"}> ({
  ^bb0(%arg0: !torchconstantfloat, %arg1: !torchconstantfloat):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchconstantfloat, !torchconstantfloat) -> !torchconstantfloat
    %1 = "torch.aten.add.Tensor"(%arg0, %0) : (!torchconstantfloat, !torchconstantfloat) -> !torchconstantfloat
    %2 = "torch.aten.add.Tensor"(%1, %arg1) : (!torchconstantfloat, !torchconstantfloat) -> !torchconstantfloat
    %3 = "torch.aten.add.Tensor"(%2, %0) : (!torchconstantfloat, !torchconstantfloat) -> !torchconstantfloat
    %4 = "torch.aten.add.Tensor"(%3, %arg1) : (!torchconstantfloat, !torchconstantfloat) -> !torchconstantfloat
    "func.return"(%4) : (!torchconstantfloat) -> ()
  }) : () -> ()
}) : () -> ()