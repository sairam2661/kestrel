"builtin.module"() ({
  "func.func"() <{function_type = (!torchmemrefv1v1v1f32, !torchmemrefv1v1v1f32) -> !torchmemrefv1v1v1f32, sym_name = "quantized_add"}> ({
  ^bb0(%arg0: !torchmemrefv1v1v1f32, %arg1: !torchmemrefv1v1v1f32):
    %0 = "torch.aten.size.int"(%arg0, %c0) : (!torchmemrefv1v1v1f32, !torchint) -> !torchint
    %1 = "torch.aten.size.int"(%arg0, %c1) : (!torchmemrefv1v1v1f32, !torchint) -> !torchint
    %2 = "torch.aten.size.int"(%arg0, %c2) : (!torchmemrefv1v1v1f32, !torchint) -> !torchint
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torchint, !torchint, !torchint) -> !torchlistint
    %4 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %c2, %c5, %3) : (!torchmemrefv1v1v1f32, !torchint, !torchint, !torchlistint) -> !torchptqtensor
    %5 = "torch.aten.cat"(%arg1, %c0) : (!torchmemrefv1v1v1f32, !torchint) -> !torchmemrefv1v1v1f32
    %6 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchmemrefv1v1v1f32, !torchmemrefv1v1v1f32) -> !torchmemrefv1v1v1f32
    "func.return"(%6) : (!torchmemrefv1v1v1f32) -> ()
  }) : () -> ()
}) : () -> ()