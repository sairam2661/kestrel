"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.add$with_splat"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<1.5> : tensor<f32>}> : () -> !torch_vtensor
    %1 = "torch.vtensor.literal"() <{value = dense<2.5> : tensor<f32>}> : () -> !torch_vtensor
    %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%2) : (!torch_vtensor) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torch_vtensor, sym_name = "torch.aten.full$const"}> ({
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %2 = "torch.aten.full"(%0, %1) : (!torch_int, !torch_int) -> !torch_vtensor
    "func.return"(%2) : (!torch_vtensor) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torch_vtensor, sym_name = "torch_c.from_tensor"}> ({
    %0 = "torch.constant.float"() <{value = 10.000000e+00 : f64}> : () -> !torch_float
    %1 = "torch_c.from_tensor"(%0) : (!torch_float) -> !torch_vtensor
    "func.return"(%1) : (!torch_vtensor) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> f64, sym_name = "torch_c.to_f64$from_tensor"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<20.0> : tensor<f32>}> : () -> !torch_vtensor
    %1 = "torch_c.to_f64"(%0) : (!torch_vtensor) -> f64
    "func.return"(%1) : (f64) -> ()
  }) : () -> ()
}) : () -> ()