"builtin.module"() ({
  "func.func"() <{function_type = (!torchbool, !torchbool) -> !torchbool, sym_name = "torch.prim.if$nested"}> ({
  ^bb0(%arg0: !torchbool, %arg1: !torchbool):
    %0 = "torch.prim.If"(%arg0) ({
      %1 = "torch.prim.If"(%arg1) ({
        "torch.prim.If.yield"(%arg0) : (!torchbool) -> ()
      }, {
        "torch.prim.If.yield"(%arg1) : (!torchbool) -> ()
      }) : (!torchbool) -> !torchbool
      "torch.prim.If.yield"(%1) : (!torchbool) -> ()
    }, {
      %2 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchbool, !torchbool) -> !torchbool
      "torch.prim.If.yield"(%2) : (!torchbool) -> ()
    }) : (!torchbool) -> !torchbool
    "func.return"(%0) : (!torchbool) -> ()
  }) : () -> ()
}) : () -> ()