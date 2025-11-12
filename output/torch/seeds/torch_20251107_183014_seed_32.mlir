"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "fuzz_test"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.constant.none"() : () -> !torch_none
      %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %3 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_bool
      %4 = "scf.if"(%3) <{results = !torch_vtensorliteral}> ({
        ^bb1(%if: !torch_bool):
          "scf.yield"(%2) : (!torch_vtensorliteral) -> (!torch_vtensorliteral)
      }) : (!torch_bool) -> !torch_vtensorliteral
      "func.return"(%4) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()