"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,144,?,?],f32>) -> !torch.vtensor<[4,2],si64>, sym_name = "pytorch_dynamic_pad_export_view$prop"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,144,?,?],f32>):
    %0 = "torch.vtensor.literal"() <{value = dense<0> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %1 = "torch.vtensor.literal"() <{value = dense<1> : tensor<1xsi64>}> : () -> !torch.vtensor<[1],si64>
    %2 = "torch.vtensor.literal"() <{value = dense<0> : tensor<1xsi64>}> : () -> !torch.vtensor<[1],si64>
    %3 = "torch.constant.int"() <{value = -9223372036854775807 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %7 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %8 = "torch.aten._shape_as_tensor"(%arg0) : (!torch.vtensor<[?,144,?,?],f32>) -> !torch.vtensor<[4],si64>
    %9 = "torch.prim.ListConstruct"(%8, %0) : (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>) -> !torch.list<vtensor>
    %10 = "torch.aten.cat"(%9, %7) : (!torch.list<vtensor>, !torch.int) -> !torch.vtensor<[8],si64>
    %11 = "torch.prim.ListConstruct"(%4, %5) : (!torch.int, !torch.int) -> !torch.list<int>
    %12 = "torch.aten.view"(%10, %11) : (!torch.vtensor<[8],si64>, !torch.list<int>) -> !torch.vtensor<[4,2],si64>
    %13 = "torch.aten.slice.Tensor"(%12, %7, %4, %3, %4) : (!torch.vtensor<[4,2],si64>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[4,2],si64>
    %14 = "torch.aten.transpose.int"(%13, %7, %6) : (!torch.vtensor<[4,2],si64>, !torch.int, !torch.int) -> !torch.vtensor<[2,4],si64>
    %15 = "torch.prim.ListConstruct"(%4) : (!torch.int) -> !torch.list<int>
    %16 = "torch.aten.view"(%14, %15) : (!torch.vtensor<[2,4],si64>, !torch.list<int>) -> !torch.vtensor<[8],si64>
    %17 = "torch.aten.index_select"(%16, %7, %1) : (!torch.vtensor<[8],si64>, !torch.int, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],si64>
    %18 = "torch.aten.item"(%17) : (!torch.vtensor<[1],si64>) -> !torch.int
    %19 = "torch.aten.index_select"(%16, %7, %2) : (!torch.vtensor<[8],si64>, !torch.int, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],si64>
    %20 = "torch.aten.item"(%19) : (!torch.vtensor<[1],si64>) -> !torch.int
    %21 = "torch.prim.ListConstruct"(%18, %20) : (!torch.int, !torch.int) -> !torch.list<int>
    "func.return"(%12) : (!torch.vtensor<[4,2],si64>) -> ()
  }) : () -> ()
}) : () -> ()

