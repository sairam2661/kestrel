"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],si64>) -> !torch.vtensor<[4],si64>, sym_name = "eq_tensor_and_where_self"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],si64>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.vtensor.literal"() <{value = dense<-1> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %2 = "torch.vtensor.literal"() <{value = dense<1> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %3 = "torch.vtensor.literal"() <{value = dense<1> : tensor<si64>}> : () -> !torch.vtensor<[],si64>
    %4 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %5 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %7 = "torch.aten.size.int"(%arg0, %5) : (!torch.vtensor<[?,?],si64>, !torch.int) -> !torch.int
    %8 = "torch.aten.size.int"(%arg0, %6) : (!torch.vtensor<[?,?],si64>, !torch.int) -> !torch.int
    %9 = "torch.prim.ListConstruct"(%8, %5, %7, %7) : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %10 = "torch.aten.tensor"(%9, %0, %0, %4) : (!torch.list<int>, !torch.none, !torch.none, !torch.bool) -> !torch.vtensor<[4],si64>
    %11 = "torch.aten.eq.Tensor"(%10, %1) : (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>) -> !torch.vtensor<[4],i1>
    %12 = "torch.aten.where.self"(%11, %2, %10) : (!torch.vtensor<[4],i1>, !torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>) -> !torch.vtensor<[4],si64>
    %13 = "torch.aten.index_select"(%12, %6, %3) : (!torch.vtensor<[4],si64>, !torch.int, !torch.vtensor<[],si64>) -> !torch.vtensor<[],si64>
    %14 = "torch.aten.item"(%13) : (!torch.vtensor<[],si64>) -> !torch.int
    %15 = "torch.prim.ListConstruct"(%14) : (!torch.int) -> !torch.list<int>
    "func.return"(%12) : (!torch.vtensor<[4],si64>) -> ()
  }) : () -> ()
}) : () -> ()

