"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_torch_ops"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
    %3 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_float
    %4 = "arith.extf"(%3) : (f64) -> f64
    %5 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()