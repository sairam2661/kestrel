"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "complex_fuzz_case"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchvtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %1 = "torch.constant.none"() : () -> !torchnone
    %2 = "torch.constant.str"() <{value = "test"}> : () -> !torchstr
    %3 = "torch.aten.size.int"(%arg0, %0) : (!torchvtensor, !torchint) -> i64
    %4 = "torch.aten.slice.Tensor"(%arg1, %0, %0, %3) : (!torchvtensor, !torchint, !torchint, i64) -> !torchvtensor
    %5 = "torch.prim.ListConstruct"(%3, %3, %3) : (i64, i64, i64) -> !torchlist
    %6 = "torch.aten._shape_as_tensor"(%arg2) : (!torchvtensor) -> !torchvtensor
    "func.return"(%6) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()