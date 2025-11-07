"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],f32>, sym_name = "arith_prop"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>):
    %0 = "torch.vtensor.literal"() <{value = dense<1> : tensor<si64>}> : () -> !torch.vtensor<[],si64>
    %1 = "torch.vtensor.literal"() <{value = dense<0> : tensor<si64>}> : () -> !torch.vtensor<[],si64>
    %2 = "torch.constant.float"() <{value = 0.000000e+00 : f64}> : () -> !torch.float
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %4 = "torch.vtensor.literal"() <{value = dense<[12, 1]> : tensor<2xsi64>}> : () -> !torch.vtensor<[2],si64>
    %5 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %6 = "torch.aten._shape_as_tensor"(%arg0) : (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[2],si64>
    %7 = "torch.aten.div.Tensor"(%6, %4) : (!torch.vtensor<[2],si64>, !torch.vtensor<[2],si64>) -> !torch.vtensor<[2],si64>
    %8 = "torch.aten.mul.Tensor"(%7, %4) : (!torch.vtensor<[2],si64>, !torch.vtensor<[2],si64>) -> !torch.vtensor<[2],si64>
    %9 = "torch.aten.sub.Tensor"(%6, %8, %3) : (!torch.vtensor<[2],si64>, !torch.vtensor<[2],si64>, !torch.int) -> !torch.vtensor<[2],si64>
    %10 = "torch.aten.index_select"(%9, %5, %1) : (!torch.vtensor<[2],si64>, !torch.int, !torch.vtensor<[],si64>) -> !torch.vtensor<[],si64>
    %11 = "torch.aten.index_select"(%9, %5, %0) : (!torch.vtensor<[2],si64>, !torch.int, !torch.vtensor<[],si64>) -> !torch.vtensor<[],si64>
    %12 = "torch.aten.item"(%10) : (!torch.vtensor<[],si64>) -> !torch.int
    %13 = "torch.aten.item"(%11) : (!torch.vtensor<[],si64>) -> !torch.int
    %14 = "torch.prim.ListConstruct"(%13, %12) : (!torch.int, !torch.int) -> !torch.list<int>
    %15 = "torch.aten.constant_pad_nd"(%arg0, %14, %2) : (!torch.vtensor<[?,?],f32>, !torch.list<int>, !torch.float) -> !torch.vtensor<[?,?],f32>
    "func.return"(%15) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

