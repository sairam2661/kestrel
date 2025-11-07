"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,3,?,?],f32>) -> !torch.vtensor<[?,3,?,?],f32>, sym_name = "torch.aten.batch_norm$no_bias_weight"}> ({
  ^bb0(%arg1: !torch.vtensor<[?,3,?,?],f32>):
    %8 = "torch.constant.none"() : () -> !torch.none
    %9 = "torch.vtensor.literal"() <{value = dense<0.000000e+00> : tensor<3xf32>}> : () -> !torch.vtensor<[3],f32>
    %10 = "torch.vtensor.literal"() <{value = dense<1.000000e+00> : tensor<3xf32>}> : () -> !torch.vtensor<[3],f32>
    %11 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %12 = "torch.constant.float"() <{value = 1.000000e-01 : f64}> : () -> !torch.float
    %13 = "torch.constant.float"() <{value = 1.000000e-05 : f64}> : () -> !torch.float
    %14 = "torch.aten.batch_norm"(%arg1, %8, %8, %9, %10, %11, %12, %13, %11) : (!torch.vtensor<[?,3,?,?],f32>, !torch.none, !torch.none, !torch.vtensor<[3],f32>, !torch.vtensor<[3],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool) -> !torch.vtensor<[?,3,?,?],f32>
    "func.return"(%14) : (!torch.vtensor<[?,3,?,?],f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.vtensor<[3,7,4,5],f32>) -> !torch.vtensor<[3,7,4,5],f32>, sym_name = "torch.aten.native_layer_norm"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,7,4,5],f32>):
    %0 = "torch.vtensor.literal"() <{value = dense<0.000000e+00> : tensor<4x5xf32>}> : () -> !torch.vtensor<[4,5],f32>
    %1 = "torch.vtensor.literal"() <{value = dense<1.000000e+00> : tensor<4x5xf32>}> : () -> !torch.vtensor<[4,5],f32>
    %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %4 = "torch.constant.float"() <{value = 1.000000e-05 : f64}> : () -> !torch.float
    %5 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %6 = "torch.prim.ListConstruct"(%2, %3) : (!torch.int, !torch.int) -> !torch.list<int>
    %7:3 = "torch.aten.native_layer_norm"(%arg0, %6, %1, %0, %4) : (!torch.vtensor<[3,7,4,5],f32>, !torch.list<int>, !torch.vtensor<[4,5],f32>, !torch.vtensor<[4,5],f32>, !torch.float) -> (!torch.vtensor<[3,7,4,5],f32>, !torch.vtensor<[3,7,1,1],f32>, !torch.vtensor<[3,7,1,1],f32>)
    "func.return"(%7#0) : (!torch.vtensor<[3,7,4,5],f32>) -> ()
  }) : () -> ()
}) : () -> ()

