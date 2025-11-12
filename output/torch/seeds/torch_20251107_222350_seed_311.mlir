"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c2_i64 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %c3_i64 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %c4_i64 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %c5_i64 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
      %c0_i64 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1_i64 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %0 = "torch.aten.size.int"(%arg0, %c0_i64) : (!torch_vtensor, !torch_int) -> !torch_int
      %1 = "torch.aten.size.int"(%arg0, %c1_i64) : (!torch_vtensor, !torch_int) -> !torch_int
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
      %3 = "torch.aten.view"(%arg0, %2) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %4 = "torch.aten.slice.Tensor"(%arg1, %c0_i64, %c2_i64, %c3_i64) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.view"(%5, %2) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %7 = "torch.aten.index_select"(%6, %c0_i64, %c4_i64) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %8 = "torch.aten.view"(%7, %2) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()