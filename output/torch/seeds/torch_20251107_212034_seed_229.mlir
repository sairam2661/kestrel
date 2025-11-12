"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "custom_fuzz_func"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torchvtensor) -> !torchvtensor
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %2 = "torch.aten.index_select"(%arg1, %1, %0) : (!torchvtensor, !torchint, !torchvtensor) -> !torchvtensor
    %3 = "torch.aten.cat"(%arg0, %2) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    "func.return"(%3) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()