"builtin.module"() ({
  "func.func"() <{function_type = (!torch_int, !torch_int) -> !torch_int, sym_name = "fuzz_interleave"}> ({
  ^bb0(%arg0: !torch_int, %arg1: !torch_int):
    %0 = "torch.aten.Add"(%arg0, %arg1) : (!torch_int, !torch_int) -> !torch_int
    %1 = "torch.aten.Mul"(%arg0, %0) : (!torch_int, !torch_int) -> !torch_int
    %2 = "torch.aten.Sub"(%1, %arg1) : (!torch_int, !torch_int) -> !torch_int
    %3 = "torch.aten.Div"(%2, %arg0) : (!torch_int, !torch_int) -> !torch_int
    %4 = "torch.aten.Mod"(%3, %arg1) : (!torch_int, !torch_int) -> !torch_int
    "func.return"(%4) : (!torch_int) -> ()
  }) : () -> ()
}) : () -> ()