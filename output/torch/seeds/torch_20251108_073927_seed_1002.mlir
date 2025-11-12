"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensordyn, !torch_vtensordyn) -> !torch_vtensordyn, sym_name = "dynamic_slice_and_concat"}> ({
  ^bb0(%arg0: !torch_vtensordyn, %arg1: !torch_vtensordyn):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2) : (!torch_vtensordyn, !torch_int, !torch_int, !torch_int) -> !torch_vtensordyn
    %4 = "torch.aten.slice.Tensor"(%arg1, %0, %1, %2) : (!torch_vtensordyn, !torch_int, !torch_int, !torch_int) -> !torch_vtensordyn
    %5 = "torch.aten.cat"(%3, %4) : (!torch_vtensordyn, !torch_vtensordyn) -> !torch_vtensordyn
    "func.return"(%5) : (!torch_vtensordyn) -> ()
  }) : () -> ()
}) : () -> ()