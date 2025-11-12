"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_slice_and_concat"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
    %1 = "torch.aten.size.int"(%arg1, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %4 = "torch.aten.slice.Tensor"(%arg0, %c0, %2, %3) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %5 = "torch.aten.slice.Tensor"(%arg1, %c0, %c0, %c1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %6 = "torch.aten.cat"(%4, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_slice_and_concat_nested"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
    %1 = "torch.aten.size.int"(%arg1, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %4 = "torch.aten.slice.Tensor"(%arg0, %c0, %2, %3) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %5 = "torch.aten.slice.Tensor"(%arg1, %c0, %c0, %c1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %6 = "torch.aten.cat"(%4, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()