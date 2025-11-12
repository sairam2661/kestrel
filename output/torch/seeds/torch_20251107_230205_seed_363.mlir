"builtin.module"() ({
  "func.func"() <{function_type = (!torch$vtensor$LTE_5 , i64) -> !torch$vtensor$LTE_6 , sym_name = "fuzz_test_function"}> ({
  ^bb0(%arg0: !torch$vtensor$LTE_5 , %arg1: i64):
    %cst12 = "torch.constant.int"() <{value = 12 : i64}> : () -> i64
    %cst0 = "torch.constant.int"() <{value = 0 : i64}> : () -> i64
    %cst1 = "torch.constant.int"() <{value = 1 : i64}> : () -> i64
    %0 = "torch.aten.index_select"(%arg0, %cst0, %arg1) : (!torch$vtensor$LTE_5 , i64, i64) -> !torch$vtensor$LTE_6
    %1 = "torch.aten.size.int"(%0, %cst0) : (!torch$vtensor$LTE_6 , i64) -> i64
    %2 = "torch.prim.ListConstruct"(%cst12, %cst0, %cst1) : (i64, i64, i64) -> !torch$list$int
    %3 = "torch.aten.view"(%0, %2) : (!torch$vtensor$LTE_6 , !torch$list$int) -> !torch$vtensor$LTE_6
    %4 = "torch.aten.slice.Tensor"(%3, %cst0, %cst1, %cst12) : (!torch$vtensor$LTE_6 , i64, i64, i64) -> !torch$vtensor$LTE_6
    "func.return"(%4) : (!torch$vtensor$LTE_6) -> ()
  }) : () -> ()
}) : () -> ()