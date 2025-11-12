"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_t, !torch_vtensor_t) -> !torch_vtensor_t, sym_name = "torch.aten.add.Tensor_custom_cat"}> ({
  ^bb0(%arg0: !torch_vtensor_t, %arg1: !torch_vtensor_t):
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_t, !torch_vtensor_t) -> !torch_vtensor_t
    %3 = "torch.aten.size.int"(%2) : (!torch_vtensor_t) -> !torch_vtensor_t
    %4 = "torch.aten.size.int"(%2) : (!torch_vtensor_t) -> !torch_vtensor_t
    %5 = "torch.prim.NumToTensor.Scalar"() <{value = 0 : i64}> : () -> !torch_vtensor_t
    %6 = "torch.prim.NumToTensor.Scalar"() <{value = 1 : i64}> : () -> !torch_vtensor_t
    %7 = "torch.prim.ListConstruct"(%5, %6) : (!torch_vtensor_t, !torch_vtensor_t) -> !torch_vtensor_t
    %8 = "torch.aten.cat"(%2, %7) : (!torch_vtensor_t, !torch_vtensor_t) -> !torch_vtensor_t
    "func.return"(%8) : (!torch_vtensor_t) -> ()
  }) : () -> ()
}) : () -> ()