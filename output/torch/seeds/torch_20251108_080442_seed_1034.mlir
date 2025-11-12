"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_t, !torch_vtensor_t) -> !torch_vtensor_t, sym_name = "tensor_combination"}> ({
    ^bb0(%arg0: !torch_vtensor_t, %arg1: !torch_vtensor_t):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.none"() : () -> !torch_none
      %2 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor_t, !torch_int) -> !torch_int
      %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %4 = "torch.aten.size.int"(%arg1, %3) : (!torch_vtensor_t, !torch_int) -> !torch_int
      %5 = "torch.prim.ListConstruct"(%2, %4) : (!torch_int, !torch_int) -> !torch_list_int
      %6 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %7 = "torch.vtensor.literal"() <{value = dense<0> : tensor<si32>}> : () -> !torch_vtensor_si32
      %8 = "torch.aten.index_select"(%arg0, %6, %7) : (!torch_vtensor_t, !torch_int, !torch_vtensor_si32) -> !torch_vtensor_t
      %9 = "torch.aten.index_select"(%arg1, %6, %7) : (!torch_vtensor_t, !torch_int, !torch_vtensor_si32) -> !torch_vtensor_t
      %10 = "torch.aten.add.Tensor"(%8, %9) : (!torch_vtensor_t, !torch_vtensor_t) -> !torch_vtensor_t
      "func.return"(%10) : (!torch_vtensor_t) -> ()
  }) : () -> ()
}) : () -> ()