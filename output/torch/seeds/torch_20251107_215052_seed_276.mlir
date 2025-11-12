"builtin.module"() ({
  "func.func"() <{function_type = (!torchbool, !torchint) -> !torchbool, sym_name = "torch_fuzz_complex_if"}> ({
  ^bb0(%arg0: !torchbool, %arg1: !torchint):
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
    %3 = "torch.aten.eq.Tensor"(%arg1, %1) : (!torchint, !torchint) -> !torchbool
    %4 = "torch.prim.If"(%arg0) ({
      %5 = "torch.prim.If"(%3) ({
        %6 = "torch.constant.bool"() <{value = false}> : () -> !torchbool
        "torch.prim.If.yield"(%6) : (!torchbool) -> ()
      }, {
        %7 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
        "torch.prim.If.yield"(%7) : (!torchbool) -> ()
      }) : (!torchbool) -> !torchbool
      "torch.prim.If.yield"(%5) : (!torchbool) -> ()
    }, {
      %8 = "torch.prim.If"(%3) ({
        %9 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
        "torch.prim.If.yield"(%9) : (!torchbool) -> ()
      }, {
        %10 = "torch.constant.bool"() <{value = false}> : () -> !torchbool
        "torch.prim.If.yield"(%10) : (!torchbool) -> ()
      }) : (!torchbool) -> !torchbool
      "torch.prim.If.yield"(%8) : (!torchbool) -> ()
    }) : (!torchbool) -> !torchbool
    "func.return"(%4) : (!torchbool) -> ()
  }) : () -> ()
}) : () -> ()