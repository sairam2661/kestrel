"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %c3 = "torch.constant.float"() <{value = 3.5 : f64}> : () -> !torch_float
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.mul.Tensor"(%0, %c3) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %2 = "torch.aten.index.Tensor"(%1, %c1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %3 = "torch.aten.slice.Tensor"(%2, %c0, %c1, %c2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "dimension_mismatch_test"}> ({
  ^bb0(%arg0: !torch_vtensor):
    %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %0 = "torch.aten.add.Tensor"(%arg0, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.transpose"(%0, %c1, %c2) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %2 = "torch.aten.add.Tensor"(%1, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%2) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "nested_control_flow"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %c0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %c1 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    "scf.if"(%c0) ({
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "scf.yield"(%0) : (!torch_vtensor)
    })  : (!torch_bool) -> (tensor<?x?xf32>) "scf.else" () ({
      %1 = "torch.aten.sub.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "scf.yield"(%1) : (!torch_vtensor)
    }) : () -> (tensor<?x?xf32>)
    "func.return"(%0) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()