"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[3,4,2],f32>, sym_name = "torch.aten.broadcast_to$fold_splat"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<3.000000e+00> : tensor<1x4x1xf32>}> : () -> !torch.vtensor<[1,4,1],f32>
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %4 = "torch.prim.ListConstruct"(%1, %2, %3) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %5 = "torch.aten.broadcast_to"(%0, %4) : (!torch.vtensor<[1,4,1],f32>, !torch.list<int>) -> !torch.vtensor<[3,4,2],f32>
    "func.return"(%5) : (!torch.vtensor<[3,4,2],f32>) -> ()
  }) : () -> ()
}) : () -> ()

