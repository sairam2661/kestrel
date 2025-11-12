"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor, sym_name = "slice_and_add"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int, %arg2: !torch_int):
    %0 = "torch.aten.slice.Tensor"(%arg0, %arg1, %arg2, %arg2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %1 = "torch.constant.float"() <{value = 2.0 : f32}> : () -> !torch_vtensor
    %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%2) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()