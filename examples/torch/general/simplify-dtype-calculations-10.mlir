"builtin.module"() ({
  "func.func"() <{function_type = (!torch.int, !torch.int) -> !torch.number, sym_name = "refine_dtype$invalid_dtype_for_scalar"}> ({
  ^bb0(%arg0: !torch.int, %arg1: !torch.int):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.dtype.calculate"() ({
      %3 = "torch.aten.add"(%arg0, %arg1) : (!torch.int, !torch.int) -> !torch.number
      "torch.dtype.calculate.yield"(%3) : (!torch.number) -> ()
    }, {
      %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
      "torch.dtype.calculate.yield.dtypes"(%2) : (!torch.int) -> ()
    }) : () -> !torch.number
    "func.return"(%1) : (!torch.number) -> ()
  }) : () -> ()
}) : () -> ()

