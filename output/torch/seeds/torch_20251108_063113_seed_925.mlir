"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "fuzz_tensor_ops"}> ({
  ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %3 = "torch.constant.float"() <{value = 1.0 : f32}> : () -> !torch_float
    %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
    %5 = "torch.aten.view"(%4, %1, %0) : (!torch_vtensor_type, !torch_int, !torch_int) -> !torch_vtensor_type
    %6 = "torch.aten.slice.Tensor"(%5, %1, %0, %1) : (!torch_vtensor_type, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_type
    %7 = "torch.aten.cat"(%6, %1) : (!torch_vtensor_type, !torch_int) -> !torch_vtensor_type
    "func.return"(%7) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()