"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],si64>) -> !torch.vtensor<[4],i1>, sym_name = "eq_tensor_from_tensor_and_literal"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],si64>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.vtensor.literal"() <{value = dense<-1> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %2 = "torch.vtensor.literal"() <{value = dense<1> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %3 = "torch.vtensor.literal"() <{value = dense<1> : tensor<si64>}> : () -> !torch.vtensor<[],si64>
    %4 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %5 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %7 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %8 = "torch.aten.size.int"(%arg0, %5) : (!torch.vtensor<[?,?],si64>, !torch.int) -> !torch.int
    %9 = "torch.aten.size.int"(%arg0, %7) : (!torch.vtensor<[?,?],si64>, !torch.int) -> !torch.int
    %10 = "torch.prim.ListConstruct"(%9, %6, %8, %8) : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %11 = "torch.aten.tensor"(%10, %0, %0, %4) : (!torch.list<int>, !torch.none, !torch.none, !torch.bool) -> !torch.vtensor<[4],si64>
    %12 = "torch.aten.eq.Tensor"(%11, %1) : (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>) -> !torch.vtensor<[4],i1>
    %13 = "torch.aten.index_select"(%12, %7, %3) : (!torch.vtensor<[4],i1>, !torch.int, !torch.vtensor<[],si64>) -> !torch.vtensor<[],i1>
    %14 = "torch.aten.item"(%13) : (!torch.vtensor<[],i1>) -> !torch.int
    %15 = "torch.prim.ListConstruct"(%14) : (!torch.int) -> !torch.list<int>
    "func.return"(%12) : (!torch.vtensor<[4],i1>) -> ()
  }) : () -> ()
}) : () -> ()

