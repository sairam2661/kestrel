"builtin.module"() ({
  "func.func"() <{function_type = (!torch.float, !torch.float) -> !torch.int, sym_name = "refine_dtype$result_type_already_refined"}> ({
  ^bb0(%arg0: !torch.float, %arg1: !torch.float):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.dtype.calculate"() ({
      %3 = "torch.aten.add"(%arg0, %arg1) : (!torch.float, !torch.float) -> !torch.int
      "torch.dtype.calculate.yield"(%3) : (!torch.int) -> ()
    }, {
      %2 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch.int
      "torch.dtype.calculate.yield.dtypes"(%2) : (!torch.int) -> ()
    }) : () -> !torch.int
    "func.return"(%1) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

