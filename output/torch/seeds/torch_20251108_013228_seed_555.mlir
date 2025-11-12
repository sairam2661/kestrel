"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i32, !torch_vtensor_i64, !torch_vtensor_f32, !torch_vtensor_f64) -> (!torch_vtensor_f32, !torch_vtensor_f64, !torch_vtensor_i32), sym_name = "tensor_mix_and_match"}> ({
  ^bb0(%arg0: !torch_vtensor_i32, %arg1: !torch_vtensor_i64, %arg2: !torch_vtensor_f32, %arg3: !torch_vtensor_f64):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
    %2 = "torch.constant.str"() <{value = "hello"}> : () -> !torch_str
    %3 = "torch.constant.none"() : () -> !torch_none
    %4 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_vtensor_i64
    %5 = "torch.aten.view"(%arg0, %1) : (!torch_vtensor_i32, !torch_int) -> !torch_vtensor_i32
    %6 = "torch.aten.add.Tensor"(%arg2, %arg3) : (!torch_vtensor_f32, !torch_vtensor_f64) -> !torch_vtensor_f64
    "func.return"(%arg2, %arg3, %5) : (!torch_vtensor_f32, !torch_vtensor_f64, !torch_vtensor_i32) -> ()
  }) : () -> ()
}) : () -> ()