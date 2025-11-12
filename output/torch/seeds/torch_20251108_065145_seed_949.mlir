"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i32, !torch_vtensor_f32) -> !torch_vtensor_f64, sym_name = "add_and_multiply"}> ({
  ^bb0(%arg0: !torch_vtensor_i32, %arg1: !torch_vtensor_f32):
    %0 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 3.5 : f64}> : () -> !torch_float
    %2 = "torch.aten.add.int"(%arg0, %0) : (!torch_vtensor_i32, !torch_int) -> !torch_vtensor_i32
    %3 = "torch.aten.to"(%2) <{dtype = "f32"}> : (!torch_vtensor_i32) -> !torch_vtensor_f32
    %4 = "torch.aten.mul.Tensor"(%3, %arg1) : (!torch_vtensor_f32, !torch_vtensor_f32) -> !torch_vtensor_f32
    %5 = "torch.aten.add.Tensor"(%4, %1) : (!torch_vtensor_f32, !torch_vtensor_f32) -> !torch_vtensor_f32
    %6 = "torch.aten.to"(%5) <{dtype = "f64"}> : (!torch_vtensor_f32) -> !torch_vtensor_f64
    "func.return"(%6) : (!torch_vtensor_f64) -> ()
  }) : () -> ()
}) : () -> ()