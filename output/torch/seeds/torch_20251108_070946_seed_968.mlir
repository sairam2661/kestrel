"builtin.module"() ({
  "func.func"() <{function_type = (!torchcriptlist, !torchcriptlist) -> !torchcriptlist, sym_name = "list_concatenate"}> ({
    ^bb0(%arg0: !torchcriptlist, %arg1: !torchcriptlist):
      %0 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torchcriptlist, !torchcriptlist) -> !torchcriptlist
      "func.return"(%0) : (!torchcriptlist) -> ()
  }) : () -> ()
}) : () -> ()