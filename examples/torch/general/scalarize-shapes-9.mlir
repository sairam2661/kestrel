"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,1],f32>, sym_name = "eq_int_fold"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.aten.size.int"(%arg0, %1) : (!torch.vtensor<[?,?],f32>, !torch.int) -> !torch.int
    %3 = "torch.aten.size.int"(%arg0, %0) : (!torch.vtensor<[?,?],f32>, !torch.int) -> !torch.int
    %4 = "torch.aten.mul.int"(%2, %3) : (!torch.int, !torch.int) -> !torch.int
    %5 = "torch.aten.eq.int"(%4, %1) : (!torch.int, !torch.int) -> !torch.bool
    %6 = "torch.aten.Int.bool"(%5) : (!torch.bool) -> !torch.int
    %7 = "torch.prim.NumToTensor.Scalar"(%6) : (!torch.int) -> !torch.vtensor<[],i1>
    %8 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch.int) -> !torch.vtensor<[],si64>
    %9 = "torch.prim.NumToTensor.Scalar"(%4) : (!torch.int) -> !torch.vtensor<[],si64>
    %10 = "torch.aten.where.self"(%7, %8, %9) : (!torch.vtensor<[],i1>, !torch.vtensor<[],si64>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],si64>
    %11 = "torch.aten.item"(%10) : (!torch.vtensor<[],si64>) -> !torch.int
    %12 = "torch.prim.ListConstruct"(%11, %0) : (!torch.int, !torch.int) -> !torch.list<int>
    %13 = "torch.aten.view"(%arg0, %12) : (!torch.vtensor<[?,?],f32>, !torch.list<int>) -> !torch.vtensor<[?,1],f32>
    "func.return"(%13) : (!torch.vtensor<[?,1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

