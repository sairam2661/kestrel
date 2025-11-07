"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],si64>) -> !torch.list<int>, sym_name = "squeeze_dim_full_fold"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],si64>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %4 = "torch.aten.size.int"(%arg0, %0) : (!torch.vtensor<[?,?],si64>, !torch.int) -> !torch.int
    %5 = "torch.prim.ListConstruct"(%1) : (!torch.int) -> !torch.list<int>
    %6 = "torch.aten.full"(%5, %4, %2, %2, %2, %3) : (!torch.list<int>, !torch.int, !torch.none, !torch.none, !torch.none, !torch.bool) -> !torch.vtensor<[1],si64>
    %7 = "torch.aten.squeeze.dim"(%6, %0) : (!torch.vtensor<[1],si64>, !torch.int) -> !torch.vtensor<[],si64>
    %8 = "torch.aten.item"(%7) : (!torch.vtensor<[],si64>) -> !torch.int
    %9 = "torch.prim.ListConstruct"(%8) : (!torch.int) -> !torch.list<int>
    "func.return"(%9) : (!torch.list<int>) -> ()
  }) : () -> ()
}) : () -> ()

