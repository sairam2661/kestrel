"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_3x3xf32, !torch_vtensor_3x3xf32) -> !torch_vtensor_3x3xi1, sym_name = "tensor_compare"}> ({
  ^bb0(%arg0: !torch_vtensor_3x3xf32, %arg1: !torch_vtensor_3x3xf32):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_3x3xf32, !torch_vtensor_3x3xf32) -> !torch_vtensor_3x3xf32
    %1 = "torch.aten.slice.Tensor"(%0, %c0, %c0, %c3) : (!torch_vtensor_3x3xf32, i32, i32, i32) -> !torch_vtensor_3x3xf32
    %2 = "torch.aten.view"(%1, %c3, %c3) : (!torch_vtensor_3x3xf32, i32, i32) -> !torch_vtensor_3x3xf32
    %3 = "torch.aten.ne.Tensor"(%arg0, %2) : (!torch_vtensor_3x3xf32, !torch_vtensor_3x3xf32) -> !torch_vtensor_3x3xi1
    "func.return"(%3) : (!torch_vtensor_3x3xi1) -> ()
  }) : () -> ()
}) : () -> ()