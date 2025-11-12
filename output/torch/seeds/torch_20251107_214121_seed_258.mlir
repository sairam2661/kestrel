"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor4x3xf32, !torch_vtensor3x4xf32) -> !torch_vtensor4x4xf32, sym_name = "aten_cat_and_add"}> ({
  ^bb0(%arg0: !torch_vtensor4x3xf32, %arg1: !torch_vtensor3x4xf32):
    %0 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor4x3xf32, !torch_vtensor3x4xf32) -> !torch_listvtensor
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.aten.cat"(%0, %1) : (!torch_listvtensor, !torch_int) -> !torch_vtensor4x4xf32
    %3 = "torch.constant.float"() <{value = 3.000000e+00 : f32}> : () -> !torch_float
    %4 = "torch.aten.add.Tensor"(%2, %3) : (!torch_vtensor4x4xf32, !torch_float) -> !torch_vtensor4x4xf32
    "func.return"(%4) : (!torch_vtensor4x4xf32) -> ()
  }) : () -> ()
}) : () -> ()