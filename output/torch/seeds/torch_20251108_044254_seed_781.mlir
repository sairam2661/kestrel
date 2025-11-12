"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int) -> !torch_bool, sym_name = "unusual_tensor_comparison"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten.size.int"(%1) : (!torch_vtensor) -> !torch_list_int
    %3 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torch_int) -> !torch_int
    %4 = "torch.aten.eq.Tensor"(%2, %3) : (!torch_list_int, !torch_int) -> !torch_bool
    "func.return"(%4) : (!torch_bool) -> ()
  }) : () -> ()
}) : () -> ()