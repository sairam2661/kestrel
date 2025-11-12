"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.string"() <{value = "hello"}> : () -> !torch_string
      %2 = "torch.prim.ListConstruct"(%0, %0) : (!torch_int, !torch_int) -> !torch_list
      %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %0, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_string) -> !torch_vtensor
      %4 = "torch.aten.cat"(%arg1, %2) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %5 = "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()