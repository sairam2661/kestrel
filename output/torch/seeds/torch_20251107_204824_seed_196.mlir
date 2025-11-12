"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %1 = "torch.constant.int"() <{value = 2 : i32}> : () -> !torch_int
      %2 = "torch.aten.mul.Tensor"(%0, %1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %4 = "torch.aten.where.ScalarSelf"(%3, %2, %arg0) : (!torch_bool, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()