"builtin.module"() ({
  "func.func"() <{function_type = (!torch.int) -> !torch.int, sym_name = "torch.aten._assert_scalar"}> ({
  ^bb0(%arg0: !torch.int):
    %0 = "torch.constant.str"() <{value = "Runtime assertion failed for expression 2 < u0 on node 'gt_1'"}> : () -> !torch.str
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.str"() <{value = "Runtime assertion failed for expression u0 >= 3 on node 'ge_1'"}> : () -> !torch.str
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %4 = "torch.aten.ge.int"(%arg0, %3) : (!torch.int, !torch.int) -> !torch.bool
    %5 = "torch.aten.Int.bool"(%4) : (!torch.bool) -> !torch.int
    "torch.aten._assert_scalar"(%5, %2) : (!torch.int, !torch.str) -> ()
    %6 = "torch.aten.gt.int"(%arg0, %1) : (!torch.int, !torch.int) -> !torch.bool
    %7 = "torch.aten.Int.bool"(%6) : (!torch.bool) -> !torch.int
    "torch.aten._assert_scalar"(%7, %0) : (!torch.int, !torch.str) -> ()
    "func.return"(%arg0) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

