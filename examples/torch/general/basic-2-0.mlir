"builtin.module"() ({
  "func.func"() <{function_type = (!torch.bool) -> !torch.int, sym_name = "torch.prim.if"}> ({
  ^bb0(%arg15: !torch.bool):
    %30 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %31 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %32 = "torch.prim.If"(%arg15) ({
      "torch.prim.If.yield"(%30) : (!torch.int) -> ()
    }, {
      "torch.prim.If.yield"(%31) : (!torch.int) -> ()
    }) : (!torch.bool) -> !torch.int
    "func.return"(%32) : (!torch.int) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.bool, !torch.bool) -> !torch.int, sym_name = "aten.prim.if$nested"}> ({
  ^bb0(%arg13: !torch.bool, %arg14: !torch.bool):
    %25 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %26 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %27 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %28 = "torch.prim.If"(%arg13) ({
      %29 = "torch.prim.If"(%arg14) ({
        "torch.prim.If.yield"(%25) : (!torch.int) -> ()
      }, {
        "torch.prim.If.yield"(%26) : (!torch.int) -> ()
      }) : (!torch.bool) -> !torch.int
      "torch.prim.If.yield"(%29) : (!torch.int) -> ()
    }, {
      "torch.prim.If.yield"(%27) : (!torch.int) -> ()
    }) : (!torch.bool) -> !torch.int
    "func.return"(%28) : (!torch.int) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.int) -> !torch.float, sym_name = "torch.prim.loop$while"}> ({
  ^bb0(%arg10: !torch.int):
    %19 = "torch.constant.float"() <{value = 3.200000e+00 : f64}> : () -> !torch.float
    %20 = "torch.constant.int"() <{value = 9223372036854775807 : i64}> : () -> !torch.int
    %21 = "torch.aten.lt.float_int"(%19, %arg10) : (!torch.float, !torch.int) -> !torch.bool
    %22 = "torch.prim.Loop"(%20, %21, %19) ({
    ^bb0(%arg11: !torch.int, %arg12: !torch.float):
      %23 = "torch.aten.mul.float"(%arg12, %arg12) : (!torch.float, !torch.float) -> !torch.float
      %24 = "torch.aten.lt.float_int"(%23, %arg10) : (!torch.float, !torch.int) -> !torch.bool
      "torch.prim.Loop.condition"(%24, %23) : (!torch.bool, !torch.float) -> ()
    }) : (!torch.int, !torch.bool, !torch.float) -> !torch.float
    "func.return"(%22) : (!torch.float) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (!torch.float, !torch.float), sym_name = "torch.prim.loop$while_with_multiple_values"}> ({
    %10 = "torch.constant.float"() <{value = 3.200000e+00 : f64}> : () -> !torch.float
    %11 = "torch.constant.int"() <{value = 9223372036854775807 : i64}> : () -> !torch.int
    %12 = "torch.constant.float"() <{value = 9.000000e+00 : f64}> : () -> !torch.float
    %13 = "torch.aten.lt.float"(%10, %12) : (!torch.float, !torch.float) -> !torch.bool
    %14:2 = "torch.prim.Loop"(%11, %13, %10, %12) ({
    ^bb0(%arg7: !torch.int, %arg8: !torch.float, %arg9: !torch.float):
      %15 = "torch.aten.mul.float"(%arg8, %arg8) : (!torch.float, !torch.float) -> !torch.float
      %16 = "torch.aten.lt.float"(%15, %arg9) : (!torch.float, !torch.float) -> !torch.bool
      %17 = "torch.constant.int"() <{value = -2 : i64}> : () -> !torch.int
      %18 = "torch.aten.add.float_int"(%arg9, %17) : (!torch.float, !torch.int) -> !torch.float
      "torch.prim.Loop.condition"(%16, %15, %18) : (!torch.bool, !torch.float, !torch.float) -> ()
    }) : (!torch.int, !torch.bool, !torch.float, !torch.float) -> (!torch.float, !torch.float)
    "func.return"(%14#0, %14#1) : (!torch.float, !torch.float) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.int) -> !torch.float, sym_name = "torch.prim.Loop$for"}> ({
  ^bb0(%arg4: !torch.int):
    %6 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %7 = "torch.constant.float"() <{value = 0.000000e+00 : f64}> : () -> !torch.float
    %8 = "torch.prim.Loop"(%arg4, %6, %7) ({
    ^bb0(%arg5: !torch.int, %arg6: !torch.float):
      %9 = "torch.aten.add.float_int"(%arg6, %arg5) : (!torch.float, !torch.int) -> !torch.float
      "torch.prim.Loop.condition"(%6, %9) : (!torch.bool, !torch.float) -> ()
    }) : (!torch.int, !torch.bool, !torch.float) -> !torch.float
    "func.return"(%8) : (!torch.float) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.int) -> (!torch.float, !torch.float), sym_name = "torch.prim.Loop$for_with_multiple_results"}> ({
  ^bb0(%arg0: !torch.int):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %1 = "torch.constant.float"() <{value = 0.000000e+00 : f64}> : () -> !torch.float
    %2 = "torch.constant.float"() <{value = 9.000000e+00 : f64}> : () -> !torch.float
    %3:2 = "torch.prim.Loop"(%arg0, %0, %1, %2) ({
    ^bb0(%arg1: !torch.int, %arg2: !torch.float, %arg3: !torch.float):
      %4 = "torch.aten.add.float_int"(%arg2, %arg1) : (!torch.float, !torch.int) -> !torch.float
      %5 = "torch.aten.mul.float"(%arg3, %4) : (!torch.float, !torch.float) -> !torch.float
      "torch.prim.Loop.condition"(%0, %4, %5) : (!torch.bool, !torch.float, !torch.float) -> ()
    }) : (!torch.int, !torch.bool, !torch.float, !torch.float) -> (!torch.float, !torch.float)
    "func.return"(%3#0, %3#1) : (!torch.float, !torch.float) -> ()
  }) : () -> ()
}) : () -> ()

