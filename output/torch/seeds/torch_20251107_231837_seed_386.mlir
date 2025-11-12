"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_i1, !torch_i1) -> !torch_vtensor_0, sym_name = "combine_tensors"}> ({
    ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_i1, %arg2: !torch_i1):
      %0 = "torch.aten.eq.Tensor"(%arg0, %arg0) : (!torch_vtensor_0, !torch_vtensor_0) -> !torch_i1
      %1 = "torch.aten.add.Tensor"(%arg1, %arg2) : (!torch_i1, !torch_i1) -> !torch_i1
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_i1, !torch_i1) -> !torch_list_i1
      %3 = "torch.aten.view"(%arg0, %2) : (!torch_vtensor_0, !torch_list_i1) -> !torch_vtensor_0
      "func.return"(%3) : (!torch_vtensor_0) -> ()
  }) : () -> ()
}) : () -> ()