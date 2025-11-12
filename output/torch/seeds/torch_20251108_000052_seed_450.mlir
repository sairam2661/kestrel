"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "stress_test"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
    %c = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchvtensor
    %d = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchvtensor
    %e = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchvtensor
    %f = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torchvtensor
    %g = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %h = "torch.aten.slice.Tensor"(%g, %c, %d, %e) : (!torchvtensor, !torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor
    %i = "torch.aten.size.int"(%h, %c) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %j = "torch.aten.index_select"(%arg0, %c, %i) : (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor
    "func.return"(%j) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()