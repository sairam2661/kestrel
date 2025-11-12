"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_cross_dialect_interaction"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.slice.Tensor"(%arg0) <{starts = [0], lengths = [2], steps = [1]}> : (!torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.size.int"(%0) : (!torch_vtensor) -> i64
      %2 = "arith.constant"() <{value = 3 : i64}> : () -> i64
      %3 = "arith.addi"(%1, %2) : (i64, i64) -> i64
      %4 = "torch.tosa.constant"() <{value = 42}> : () -> i1
      %5 = "torch.tosa.and"(%4, %4) : (i1, i1) -> i1
      %6 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_cross_dialect_interaction"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.slice.Tensor"(%arg0) <{starts = [0], lengths = [2], steps = [1]}> : (!torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.size.int"(%0) : (!torch_vtensor) -> i64
      %2 = "arith.constant"() <{value = 3 : i64}> : () -> i64
      %3 = "arith.addi"(%1, %2) : (i64, i64) -> i64
      %4 = "torch.tosa.constant"() <{value = 42}> : () -> i1
      %5 = "torch.tosa.and"(%4, %4) : (i1, i1) -> i1
      %6 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_cross_dialect_interaction"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.slice.Tensor"(%arg0) <{starts = [0], lengths = [2], steps = [1]}> : (!torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.size.int"(%0) : (!torch_vtensor) -> i64
      %2 = "arith.constant"() <{value = 3 : i64}> : () -> i64
      %3 = "arith.addi"(%1, %2) : (i64, i64) -> i64
      %4 = "torch.tosa.constant"() <{value = 42}> : () -> i1
      %5 = "torch.tosa.and"(%4, %4) : (i1, i1) -> i1
      %6 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()