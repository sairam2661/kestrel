"builtin.module"() ({
  "func.func"() <{function_type = (!torch$list, !torch$vtensor, !torch$vtensor) -> !torch$vtensor, sym_name = "test_complex_operations"}> ({
  ^bb0(%arg0: !torch$list, %arg1: !torch$vtensor, %arg2: !torch$vtensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch$i64
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch$i64
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch$i64
    %3 = "torch.constant.none"() : () -> !torch$none
    %4 = "torch.aten.slice.Tensor"(%arg1, %0, %0, %1) : (!torch$vtensor, !torch$i64, !torch$i64, !torch$i64) -> !torch$vtensor
    %5 = "torch.aten.view"(%arg2, %1, %1) : (!torch$vtensor, !torch$i64, !torch$i64) -> !torch$vtensor
    %6 = "torch.aten.eq.Tensor"(%4, %5) : (!torch$vtensor, !torch$vtensor) -> !torch$vtensor
    %7 = "torch.constant.str"() <{value = "test" : !torch$str}> : () -> !torch$str
    %8 = "torch.constant.bool"() <{value = true}> : () -> !torch$bool
    "func.return"(%6) : (!torch$vtensor) -> ()
  }) : () -> ()
}) : () -> ()