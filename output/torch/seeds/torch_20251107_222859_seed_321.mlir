"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzz_function"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %list0 = "torch.prim.ListConstruct"(%c0, %c1, %c2, %c3) : (!torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list
      %none = "torch.constant.none"() : () -> !torch_none
      %quantized = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %c3, %c2, %none) : (!torch_vtensor, !torch_int, !torch_int, !torch_none) -> !torch_vtensor
      %viewed = "torch.aten.view"(%quantized, %list0) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %indexed = "torch.aten.index_select"(%viewed, %c1, %c0) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      "func.return"(%indexed) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()