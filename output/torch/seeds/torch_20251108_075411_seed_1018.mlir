"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor$25968889695598595201) -> !torch_vtensor$25968889695598595201, sym_name = "torch.aten.index_select$index_select"}> ({
    ^bb0(%arg0: !torch_vtensor$25968889695598595201):
      %0 = "torch.vtensor.literal"() <{value = dense<2> : tensor<1xi64>}> : () -> !torch_vtensor$25968889695598595201
      %1 = "torch.vtensor.literal"() <{value = dense<1> : tensor<1xi64>}> : () -> !torch_vtensor$25968889695598595201
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_vtensor$25968889695598595201, !torch_vtensor$25968889695598595201) -> !torch_plist$25968889695598595201
      %3 = "torch.aten.index_select"(%arg0, %2, %0) : (!torch_vtensor$25968889695598595201, !torch_plist$25968889695598595201, !torch_vtensor$25968889695598595201) -> !torch_vtensor$25968889695598595201
      "func.return"(%3) : (!torch_vtensor$25968889695598595201) -> ()
  }) : () -> ()
}) : () -> ()