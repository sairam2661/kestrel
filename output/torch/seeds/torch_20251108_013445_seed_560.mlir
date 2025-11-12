"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor1, !torch_vtensor2) -> !torch_vtensor3, sym_name = "torch_aten.add.Tensor"}> ({
    ^bb0(%arg0: !torch_vtensor1, %arg1: !torch_vtensor2):
      %0 = "torch.constant.str"() <{value = "add.Tensor"}> : () -> !torch_str
      %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_vtensor1, !torch_vtensor2, !torch_str) -> !torch_vtensor3
      "func.return"(%1) : (!torch_vtensor3) -> ()
  }) : () -> ()
}) : () -> ()