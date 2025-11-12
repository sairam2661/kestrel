"builtin.module"() ({
  "func.func"() <{
    function_type = (!torch$list$int, !torch$list$int) -> !torch$list$int,
    sym_name = "list_concatenation"
  }> ({
    ^bb0(%arg0: !torch$list$int, %arg1: !torch$list$int):
      %0 = "torch.aten.len"(%arg0) : (!torch$list$int) -> !torch$int
      %1 = "torch.aten.len"(%arg1) : (!torch$list$int) -> !torch$int
      %2 = "arith.addi"(%0, %1) : (!torch$int, !torch$int) -> !torch$int
      %3 = "torch.prim.ListConstruct"() : () -> !torch$list$int
      %4 = "torch.prim.ListUnpack"(%arg0) : (!torch$list$int) -> !torch$tuple
      %5 = "torch.prim.ListUnpack"(%arg1) : (!torch$list$int) -> !torch$tuple
      %6 = "torch.prim.ListExtend"(%3, %4) : (!torch$list$int, !torch$tuple) -> !torch$list$int
      %7 = "torch.prim.ListExtend"(%6, %5) : (!torch$list$int, !torch$tuple) -> !torch$list$int
      %8 = "torch.aten.len"(%7) : (!torch$list$int) -> !torch$int
      "arith.assert_eqi"(%2, %8) : (!torch$int, !torch$int) -> ()
      "func.return"(%7) : (!torch$list$int) -> ()
  }) : () -> ()
}) : () -> ()