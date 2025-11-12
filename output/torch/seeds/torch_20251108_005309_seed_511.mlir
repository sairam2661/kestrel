"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_list) -> !torch_vtensor, sym_name = "torch.aten.add.Tensor_with_slice_and_view"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_list):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %4 = "torch.aten.add.Tensor"(%3, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %6 = "torch.aten.view"(%4, %arg2) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()