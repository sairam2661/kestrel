"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,64,1,100],f32>) -> !torch.vtensor<[1,64,2,200],f32>, sym_name = "forward"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,64,1,100],f32>):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %3 = "torch.vtensor.literal"() <{value = dense<0.000000e+00> : tensor<64x64x3x3xf32>}> : () -> !torch.vtensor<[64,64,3,3],f32>
    %4 = "torch.vtensor.literal"() <{value = dense<0.000000e+00> : tensor<64xf32>}> : () -> !torch.vtensor<[64],f32>
    %5 = "torch.prim.ListConstruct"(%2, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%1, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %7 = "torch.aten.convolution"(%arg0, %3, %4, %5, %6, %6, %0, %6, %1) : (!torch.vtensor<[1,64,1,100],f32>, !torch.vtensor<[64,64,3,3],f32>, !torch.vtensor<[64],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int) -> !torch.vtensor<[1,64,2,200],f32>
    "func.return"(%7) : (!torch.vtensor<[1,64,2,200],f32>) -> ()
  }) : () -> ()
}) : () -> ()

