"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (i32, !torch_vtensor), sym_name = "custom_fusion"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_float
      %2 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten.mul"(%2, %1) : (!torch_vtensor, !torch_float) -> !torch_vtensor
      %4 = "torch.aten.size"(%3, %0) : (!torch_vtensor, !torch_int) -> i64
      %5 = "arith.extsi"(%4) : (i64) -> i32
      "func.return"(%5, %3) : (i32, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()