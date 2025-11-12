"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor32x4x3xf32, !torch_vtensor32x2x3si64) -> !torch_vtensor32x2x3xf32, sym_name = "torch.aten.gather_dynamic"}> ({
  ^bb0(%arg0: !torch_vtensor32x4x3xf32, %arg1: !torch_vtensor32x2x3si64):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %2 = "torch.aten.gather"(%arg0, %0, %arg1, %1) : (!torch_vtensor32x4x3xf32, !torch_int, !torch_vtensor32x2x3si64, !torch_bool) -> !torch_vtensor32x2x3xf32
    "func.return"(%2) : (!torch_vtensor32x2x3xf32) -> ()
  }) : () -> ()
}) : () -> ()