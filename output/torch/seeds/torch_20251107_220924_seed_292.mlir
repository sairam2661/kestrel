"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0) -> !torch_vtensor_1, sym_name = "torch_slice_add"}> ({
  ^bb0(%arg0: !torch_vtensor_0):
    %cst = torch.constant_float 1.0 : f32
    %cst1 = torch.constant_float 2.0 : f32
    %slice0 = torch.aten_slice_Tensor %arg0, %cst, %cst1, %cst : (!torch_vtensor_0, f32, f32, f32) -> !torch_vtensor_0
    %slice1 = torch.aten_slice_Tensor %arg0, %cst1, %cst, %cst : (!torch_vtensor_0, f32, f32, f32) -> !torch_vtensor_0
    %add = torch.aten_add_Tensor %slice0, %slice1 : (!torch_vtensor_0, !torch_vtensor_0) -> !torch_vtensor_1
    "func.return"(%add) : (!torch_vtensor_1) -> ()
  }) : () -> ()
}) : () -> ()