"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_i64, !torch_i64) -> (!torch_vtensor, !torch_i64), sym_name = "fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_i64, %arg2: !torch_i64):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_i64
      %1 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor, !torch_i64) -> !torch_i64
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_i64
      %3 = "torch.aten.size.int"(%arg0, %2) : (!torch_vtensor, !torch_i64) -> !torch_i64
      %4 = "torch.aten.add.Tensor"(%1, %2) : (!torch_i64, !torch_i64) -> !torch_i64
      %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_i64, !torch_i64) -> !torch_i64
      %6 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %3) : (!torch_vtensor, !torch_i64, !torch_i64, !torch_i64) -> !torch_vtensor
      %7 = "torch.aten.slice.Tensor"(%arg0, %2, %0, %5) : (!torch_vtensor, !torch_i64, !torch_i64, !torch_i64) -> !torch_vtensor
      %8 = "torch.aten.cat"(%6, "dim", %0) <{dim = 0 : i64}> : (!torch_vtensor, !torch_vtensor, !torch_i64) -> !torch_vtensor
      "func.return"(%8, %5) : (!torch_vtensor, !torch_i64) -> ()
  }) : () -> ()
}) : () -> ()