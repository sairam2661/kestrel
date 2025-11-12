"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor128x64f32, !torch_vtensor128x64f32, !torch_int) -> !torch_vtensor128x64f32, sym_name = "complex_fusion"}> ({
    ^bb0(%arg0: !torch_vtensor128x64f32, %arg1: !torch_vtensor128x64f32, %arg2: !torch_int):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor128x64f32, !torch_vtensor128x64f32) -> !torch_vtensor128x64f32
      %1 = "torch.aten.eq.Tensor"(%arg2, %arg2) : (!torch_int, !torch_int) -> !torch_bool
      %2 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor128x64f32, !torch_vtensor128x64f32) -> !torch_list_vtensor128x64f32
      %3 = "torch.aten.cat"(%2) : (!torch_list_vtensor128x64f32) -> !torch_vtensor256x64f32
      %4 = "torch.aten.size.int"(%3) : (!torch_vtensor256x64f32) -> !torch_int
      %5 = "torch.aten._make_per_tensor_quantized_tensor"(%3, %arg2, %arg2, %arg2) : (!torch_vtensor256x64f32, !torch_int, !torch_int, !torch_int) -> !torch_vtensor256x64qi8
      "func.return"(%5) : (!torch_vtensor256x64qi8) -> ()
  }) : () -> ()
}) : () -> ()