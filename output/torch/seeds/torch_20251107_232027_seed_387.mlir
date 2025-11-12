"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_dtype_conversion"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 2.0 : f32}> : () -> !torch_float
    %2 = "torch.aten.add"(%arg0, %1) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %3 = "torch.aten.mul"(%2, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()