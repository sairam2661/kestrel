"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "custom_fuzz_test"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
    %0 = "torch.aten.size.int"(%arg0) : (!torchvtensor) -> !torchlist
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %2 = "torch.aten.index_select"(%arg0, %1, %1) : (!torchvtensor, !torchint, !torchint) -> !torchvtensor
    %3 = "torch.constant.float"() <{value = 2.0 : f32}> : () -> !torchfloat
    %4 = "torch.aten.add.Tensor"(%2, %3) : (!torchvtensor, !torchfloat) -> !torchvtensor
    "func.return"(%4) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()