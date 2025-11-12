"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_A, !torch_vtensor_B) -> !torch_vtensor_C, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: !torch_vtensor_A, %arg1: !torch_vtensor_B):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_A, !torch_vtensor_B) -> !torch_vtensor_C
    %2 = "torch.aten.sub.Tensor"(%1, %0) : (!torch_vtensor_C, !torch_int) -> !torch_vtensor_C
    %3 = "torch.aten.mul.Tensor"(%2, %arg0) : (!torch_vtensor_C, !torch_vtensor_A) -> !torch_vtensor_C
    %4 = "torch.aten.div.Tensor"(%3, %arg1) : (!torch_vtensor_C, !torch_vtensor_B) -> !torch_vtensor_C
    "func.return"(%4) : (!torch_vtensor_C) -> ()
  }) : () -> ()
}) : () -> ()