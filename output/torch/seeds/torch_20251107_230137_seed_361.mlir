"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "torch.aten.complex_combination"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchvtensor):
    %0 = "torch.aten.slice.Tensor"(%arg0) <{starts = [0], lengths = [2], steps = [1]}>: (!torchvtensor) -> !torchvtensor
    %1 = "torch.aten.index_select"(%arg1, %arg2) <{dim = 0}> : (!torchvtensor, !torchvtensor, i64) -> !torchvtensor
    %2 = "torch.aten.add.Tensor"(%0, %1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %3 = "torch.aten.view"(%2) <{size = [1, 2, 3]}>: (!torchvtensor) -> !torchvtensor
    %4 = "torch.constant.float"() <{value = 3.0 : f64}> : () -> !torchvtensor
    %5 = "torch.aten.add.Tensor"(%3, %4) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()