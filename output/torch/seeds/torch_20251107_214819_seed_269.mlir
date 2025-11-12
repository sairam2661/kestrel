"builtin.module"() ({
  "func.func"() <{function_type = (!torchv2tensor, !torchv2tensor) -> !torchv2tensor, sym_name = "unusual_add_and_slice"}> ({
    %0 = "torch.constant.float"() <{value = 10.0 : f64}> : () -> !torchv2tensor
    %1 = "torch.constant.float"() <{value = 5.0 : f64}> : () -> !torchv2tensor
    %2 = "torch.aten.add.Tensor"(%0, %1) : (!torchv2tensor, !torchv2tensor) -> !torchv2tensor
    %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchv2tensor
    %4 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv2tensor
    %5 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchv2tensor
    %6 = "torch.aten.slice.Tensor"(%2, %3, %4, %5, %3) : (!torchv2tensor, !torchv2tensor, !torchv2tensor, !torchv2tensor, !torchv2tensor) -> !torchv2tensor
    "func.return"(%6) : (!torchv2tensor) -> ()
  }) : () -> ()
}) : () -> ()