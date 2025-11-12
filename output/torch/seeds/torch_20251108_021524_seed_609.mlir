"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral_2919495673010484626, !torch_vtensorliteral_2919512025322003073) -> !torch_vtensorliteral_2919495673010484626, sym_name = "fuzz_mlir_func"}> ({
    ^bb0(%arg0: !torch_vtensorliteral_2919495673010484626, %arg1: !torch_vtensorliteral_2919512025322003073):
      %0 = "torch.constant.float"() <{value = 1.000000e+00 : f64}> : () -> !torch_vtensorliteral_2919495673010484626
      %1 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensorliteral_2919495673010484626, !torch_vtensorliteral_2919512025322003073) -> !torch_vtensorliteral_2919495673010484626
      %2 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch_vtensorliteral_2919495673010484626
      %3 = "torch.aten.mul"(%1, %2) : (!torch_vtensorliteral_2919495673010484626, !torch_vtensorliteral_2919495673010484626) -> !torch_vtensorliteral_2919495673010484626
      %4 = "torch.constant.float"() <{value = 0.500000e+00 : f64}> : () -> !torch_vtensorliteral_2919495673010484626
      %5 = "torch.aten.div"(%3, %4) : (!torch_vtensorliteral_2919495673010484626, !torch_vtensorliteral_2919495673010484626) -> !torch_vtensorliteral_2919495673010484626
      "func.return"(%5) : (!torch_vtensorliteral_2919495673010484626) -> ()
  }) : () -> ()
}) : () -> ()