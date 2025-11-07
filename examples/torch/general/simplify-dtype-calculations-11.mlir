"builtin.module"() ({
  "func.func"() <{function_type = (!torch.int, !torch.int, !torch.int) -> !torch.number, sym_name = "refine_dtype$no_simplification"}> ({
  ^bb0(%arg0: !torch.int, %arg1: !torch.int, %arg2: !torch.int):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.dtype.calculate"() ({
      %2 = "torch.aten.add"(%arg0, %arg1) : (!torch.int, !torch.int) -> !torch.number
      "torch.dtype.calculate.yield"(%2) : (!torch.number) -> ()
    }, {
      "torch.dtype.calculate.yield.dtypes"(%arg2) : (!torch.int) -> ()
    }) : () -> !torch.number
    "func.return"(%1) : (!torch.number) -> ()
  }) : () -> ()
}) : () -> ()

