"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[?,?,?,?],f32>) -> !torch.vtensor<[2,2,2],si64>, sym_name = "transpose$prop_3d_m1_0"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>, %arg1: !torch.vtensor<[?,?,?,?],f32>):
    %0 = "torch.vtensor.literal"() <{value = dense<2> : tensor<1xsi64>}> : () -> !torch.vtensor<[1],si64>
    %1 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %5 = "torch.aten._shape_as_tensor"(%arg0) : (!torch.vtensor<[?,?,?,?],f32>) -> !torch.vtensor<[4],si64>
    %6 = "torch.aten._shape_as_tensor"(%arg1) : (!torch.vtensor<[?,?,?,?],f32>) -> !torch.vtensor<[4],si64>
    %7 = "torch.prim.ListConstruct"(%5, %6) : (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>) -> !torch.list<vtensor>
    %8 = "torch.aten.cat"(%7, %4) : (!torch.list<vtensor>, !torch.int) -> !torch.vtensor<[8],si64>
    %9 = "torch.prim.ListConstruct"(%2, %2, %2) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %10 = "torch.aten.view"(%8, %9) : (!torch.vtensor<[8],si64>, !torch.list<int>) -> !torch.vtensor<[2,2,2],si64>
    %11 = "torch.aten.transpose.int"(%10, %1, %4) : (!torch.vtensor<[2,2,2],si64>, !torch.int, !torch.int) -> !torch.vtensor<[2,2,2],si64>
    %12 = "torch.prim.ListConstruct"(%1) : (!torch.int) -> !torch.list<int>
    %13 = "torch.aten.view"(%11, %12) : (!torch.vtensor<[2,2,2],si64>, !torch.list<int>) -> !torch.vtensor<[8],si64>
    %14 = "torch.aten.index_select"(%13, %4, %0) : (!torch.vtensor<[8],si64>, !torch.int, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],si64>
    %15 = "torch.aten.item"(%14) : (!torch.vtensor<[1],si64>) -> !torch.int
    %16 = "torch.prim.ListConstruct"(%15) : (!torch.int) -> !torch.list<int>
    "func.return"(%11) : (!torch.vtensor<[2,2,2],si64>) -> ()
  }) : () -> ()
}) : () -> ()

