"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vi32) -> !torch_vtensor, sym_name = "fuzz_tensor_and_list"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vi32):
    %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
    %1 = "torch.prim.ListConstruct"(%0, %arg1) : (!torch_int, !torch_vi32) -> !torch_vi32
    %2 = "torch.aten.index"(%arg0, %1) : (!torch_vtensor, !torch_vi32) -> !torch_vtensor
    "func.return"(%2) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()