"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_t, !torch_vtensor_t, !torch_vtensor_t) -> (!torch_vtensor_t, !torch_list_t), sym_name = "complex_fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensor_t, %arg1: !torch_vtensor_t, %arg2: !torch_vtensor_t):
      %c0 = "torch.constant.int"() <{value = 0 : i32}> : () -> !torch_vtensor_t
      %c1 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torch_vtensor_t
      %c2 = "torch.constant.int"() <{value = 2 : i32}> : () -> !torch_vtensor_t
      %list0 = "torch.prim.ListConstruct"(%c0, %c1, %c2) : (!torch_vtensor_t, !torch_vtensor_t, !torch_vtensor_t) -> !torch_list_t
      %slice0 = "torch.aten.slice.Tensor"(%arg0, %c0, %c0, %c1) : (!torch_vtensor_t, !torch_vtensor_t, !torch_vtensor_t, !torch_vtensor_t) -> !torch_vtensor_t
      %slice1 = "torch.aten.slice.Tensor"(%arg1, %c0, %c1, %c2) : (!torch_vtensor_t, !torch_vtensor_t, !torch_vtensor_t, !torch_vtensor_t) -> !torch_vtensor_t
      %cat0 = "torch.aten.cat"(%slice0, %slice1) : (!torch_vtensor_t, !torch_vtensor_t) -> !torch_vtensor_t
      "func.return"(%cat0, %list0) : (!torch_vtensor_t, !torch_list_t) -> ()
  }) : () -> ()
}) : () -> ()