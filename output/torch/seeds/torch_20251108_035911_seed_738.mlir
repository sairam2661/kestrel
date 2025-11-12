"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_info, !torch_int) -> !torch_vtensor_info, sym_name = "torch.aten.add.Tensor_int"}> ({
  ^bb0(%arg0: !torch_vtensor_info, %arg1: !torch_int):
    %0 = "torch.aten.add.Tensor_int"(%arg0, %arg1) : (!torch_vtensor_info, !torch_int) -> !torch_vtensor_info
    "func.return"(%0) : (!torch_vtensor_info) -> ()
  }) : () -> ()
}) : () -> ()