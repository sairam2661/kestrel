"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,16,64],f32>) -> !torch.int, sym_name = "unsqueeze_squeeze_combo"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,16,64],f32>):
    %0 = "torch.vtensor.literal"() <{value = dense<1> : tensor<1xsi64>}> : () -> !torch.vtensor<[1],si64>
    %1 = "torch.vtensor.literal"() <{value = dense<0> : tensor<1xsi64>}> : () -> !torch.vtensor<[1],si64>
    %2 = "torch.vtensor.literal"() <{value = dense<1024> : tensor<1xsi64>}> : () -> !torch.vtensor<[1],si64>
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %5 = "torch.aten._shape_as_tensor"(%arg0) : (!torch.vtensor<[?,?,16,64],f32>) -> !torch.vtensor<[4],si64>
    %6 = "torch.aten.index_select"(%5, %4, %1) : (!torch.vtensor<[4],si64>, !torch.int, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],si64>
    %7 = "torch.aten.squeeze.dim"(%6, %4) : (!torch.vtensor<[1],si64>, !torch.int) -> !torch.vtensor<[],si64>
    %8 = "torch.aten._shape_as_tensor"(%arg0) : (!torch.vtensor<[?,?,16,64],f32>) -> !torch.vtensor<[4],si64>
    %9 = "torch.aten.index_select"(%8, %4, %0) : (!torch.vtensor<[4],si64>, !torch.int, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],si64>
    %10 = "torch.aten.squeeze.dim"(%9, %4) : (!torch.vtensor<[1],si64>, !torch.int) -> !torch.vtensor<[],si64>
    %11 = "torch.aten.unsqueeze"(%7, %4) : (!torch.vtensor<[],si64>, !torch.int) -> !torch.vtensor<[1],si64>
    %12 = "torch.aten.unsqueeze"(%10, %4) : (!torch.vtensor<[],si64>, !torch.int) -> !torch.vtensor<[1],si64>
    %13 = "torch.prim.ListConstruct"(%11, %12, %2) : (!torch.vtensor<[1],si64>, !torch.vtensor<[1],si64>, !torch.vtensor<[1],si64>) -> !torch.list<vtensor>
    %14 = "torch.aten.cat"(%13, %4) : (!torch.list<vtensor>, !torch.int) -> !torch.vtensor<[3],si64>
    %15 = "torch.aten.slice.Tensor"(%14, %4, %4, %3, %3) : (!torch.vtensor<[3],si64>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[1],si64>
    %16 = "torch.aten.item"(%15) : (!torch.vtensor<[1],si64>) -> !torch.int
    %17 = "torch.prim.ListConstruct"(%16) : (!torch.int) -> !torch.list<int>
    "func.return"(%16) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

