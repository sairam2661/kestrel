"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_list_type) -> !torch_vtensor_type, sym_name = "custom_op_chain"}> ({
    ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_list_type):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.float"() <{value = 0.5 : f32}> : () -> !torch_float
      %2 = "torch.aten.unsqueeze"(%arg0, %0) : (!torch_vtensor_type, !torch_int) -> !torch_vtensor_type
      %3 = "torch.aten.cat"(%arg1, %0) : (!torch_list_type, !torch_int) -> !torch_vtensor_type
      %4 = "torch.aten.mul"(%2, %3) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      %5 = "torch.aten.add"(%4, %1) : (!torch_vtensor_type, !torch_float) -> !torch_vtensor_type
      "func.return"(%5) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()