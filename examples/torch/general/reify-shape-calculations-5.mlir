"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor, !torch.vtensor) -> !torch.vtensor, sym_name = "adjust_shape_function_arg$optional"}> ({
  ^bb0(%arg0: !torch.vtensor, %arg1: !torch.vtensor):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %4 = "torch.constant.none"() : () -> !torch.none
    %5 = "torch.prim.ListConstruct"(%2, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%0, %0) : (!torch.int, !torch.int) -> !torch.list<int>
    %7 = "torch.prim.ListConstruct"(%3, %3) : (!torch.int, !torch.int) -> !torch.list<int>
    %8 = "torch.aten.conv2d"(%arg0, %arg1, %4, %5, %6, %7, %3) : (!torch.vtensor, !torch.vtensor, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.int) -> !torch.vtensor
    "func.return"(%8) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

