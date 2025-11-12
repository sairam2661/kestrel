"builtin.module"() ({
  "func.func"() <{function_type = (!torchv14tensor, !torchv14tensor) -> !torchv14tensor, sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: !torchv14tensor, %arg1: !torchv14tensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv14tensor
    %1 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torchv14tensor, !torchv14tensor, !torchv14tensor) -> !torchv14tensor
    %2 = "torch.constant.str"() <{value = "example"}> : () -> !torchv14tensor
    %3 = "torch.aten.add.Tensor"(%1, %0) : (!torchv14tensor, !torchv14tensor) -> !torchv14tensor
    %4 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torchv14tensor
    %5 = "torch.aten.item"(%4) : (!torchv14tensor) -> !torchv14tensor
    "func.return"(%3) : (!torchv14tensor) -> ()
  }) : () -> ()
}) : () -> ()