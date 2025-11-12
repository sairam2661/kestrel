"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int) -> !torch_vtensor, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int):
    %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %res = "torch.aten.index_select"(%arg0, %c1, %arg1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %new_shape = "torch.prim.ListConstruct"(%c0, %c2) : (!torch_int, !torch_int) -> !torch_list
    %reshaped = "torch.aten.view"(%res, %new_shape) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    "func.return"(%reshaped) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()