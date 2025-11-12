"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !i32) -> !torch_vtensor, sym_name = "fuzz_function"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !i32):
    %c0 = "torch.constant.int"() <{value = 0 : i32}> : () -> !torch_int
    %c1 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torch_int
    %cmp = "arith.cmpi"(%arg1, %c0, "gt") : (!torch_int, !torch_int, i32) -> i1
    scf.if %cmp  : i1 
    ^bb1:
      %splat = "torch.aten.full"(%c1, %c0, %arg0) : (!torch_int, !torch_int, !torch_vtensor) -> !torch_vtensor
      "func.return"(%splat) : (!torch_vtensor) -> ()
    ^bb2:
      %0 = "torch.aten.unsqueeze"(%arg0, %c1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %1 = "torch.aten.unsqueeze"(%0, %c1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%1) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()