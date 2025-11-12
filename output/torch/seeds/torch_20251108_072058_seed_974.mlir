"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.add$with_quantized_input"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.constant.float"() <{value = 2.000000e+00 : f32}> : () -> !torch_float
    %3 = "torch.constant.none"() : () -> !torch_none
    %4 = "torch.prim.ListConstruct"(%1, %2, %3) : (!torch_int, !torch_float, !torch_none) -> !torch_list
    %5 = "torch.aten.index_select"(%arg1, %4) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %6 = "torch.aten.item"(%5) : (!torch_vtensor) -> !torch_float
    %7 = "torch.aten.eq.Tensor"(%6, %2) : (!torch_float, !torch_float) -> !torch_bool
    "func.return"(%7) : (!torch_bool) -> ()
  }) : () -> ()
}) : () -> ()