"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_none, sym_name = "custom_tensor_operation"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor, !torch_int) -> !torch_int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %3 = "torch.aten.slice.Tensor"(%arg1, %2, %2, %1, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %4 = "torch.aten._shape_as_tensor"(%3) : (!torch_vtensor) -> !torch_vtensor
    %5 = "torch.constant.str"() <{value = "none"}> : () -> !torch_str
    %6 = "torch.constant.none"() : () -> !torch_none
    "func.return"(%6) : (!torch_none) -> ()
  }) : () -> ()
}) : () -> ()