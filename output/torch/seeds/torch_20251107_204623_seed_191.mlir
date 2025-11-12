"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor , f32) -> !torch_vtensor, sym_name = "torch.aten.slice_cat_add_test"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %4 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %5 = "torch.aten.slice.Tensor"(%arg0, %0, %3, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %6 = "torch.aten.cat"(%4, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %7 = "torch.constant.float"() <{value = 1.5 : f32}> : () -> !torch_float
    %8 = "torch.aten.add.Tensor"(%6, %7) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()