"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_int, !torch_constant_none, !torch_constant_str, !torch_constant_float, !torch_aten_item) -> !torch_aten_slice_tensor, sym_name = "edge_case_fuzzing"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_int, %arg2: !torch_constant_none, %arg3: !torch_constant_str, %arg4: !torch_constant_float, %arg5: !torch_aten_item):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.prim.ListConstruct"(%arg0, %arg1, %arg5) : (!torch_vtensor_literal, !torch_constant_int, !torch_aten_item) -> !torch_list
    %2 = "torch.aten.cat"(%1, %0) : (!torch_list, !torch_int) -> !torch_vtensor
    %3 = "torch.aten.slice.Tensor"(%2, %0, %0, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()