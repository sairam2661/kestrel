"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[5,2,2,3],f32>, !torch.vtensor<[2,2,3],f32>, !torch.vtensor<[2,2,3],f32>) -> !torch.vtensor<[5,2,2,3],f32>, sym_name = "torch.aten.native_layer_norm$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[5,2,2,3],f32>, %arg1: !torch.vtensor<[2,2,3],f32>, %arg2: !torch.vtensor<[2,2,3],f32>):
    %0 = "torch.constant.float"() <{value = 5.000000e-01 : f64}> : () -> !torch.float
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %3 = "torch.prim.ListConstruct"(%2, %2, %1) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %4:3 = "torch.aten.native_layer_norm"(%arg0, %3, %arg1, %arg2, %0) : (!torch.vtensor<[5,2,2,3],f32>, !torch.list<int>, !torch.vtensor<[2,2,3],f32>, !torch.vtensor<[2,2,3],f32>, !torch.float) -> (!torch.vtensor<[5,2,2,3],f32>, !torch.vtensor<[3],f32>, !torch.vtensor<[3],f32>)
    "func.return"(%4#0) : (!torch.vtensor<[5,2,2,3],f32>) -> ()
  }) : () -> ()
}) : () -> ()

