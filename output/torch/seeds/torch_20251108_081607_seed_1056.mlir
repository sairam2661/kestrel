"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensors, !torch_tensors) -> !torch_tensors, sym_name = "torch_complex_fuzz"}> ({
    ^bb0(%arg0: !torch_tensors, %arg1: !torch_tensors):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.constant.none"() : () -> !torch_none
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
      %4 = "torch.prim.ListConstruct"(%2, %2) : (!torch_int, !torch_int) -> !torch_list_int
      %5 = "torch.aten.index_select"(%arg0, %2, %4) : (!torch_tensors, !torch_int, !torch_list_int) -> !torch_tensors
      %6 = "torch.aten.add.Tensor"(%5, %arg1) : (!torch_tensors, !torch_tensors) -> !torch_tensors
      %7 = "torch.aten.view"(%6, %4) : (!torch_tensors, !torch_list_int) -> !torch_tensors
      %8 = "torch.aten.eq.Tensor"(%7, %arg0) : (!torch_tensors, !torch_tensors) -> !torch_tensors
      "func.return"(%8) : (!torch_tensors) -> ()
  }) : () -> ()
}) : () -> ()