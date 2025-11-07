"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,151,64],f32>) -> !torch.vtensor<[3,151,1],f32>, sym_name = "test_linalg_vector_norm$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,151,64],f32>):
    %0 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch.float
    %1 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %3 = "torch.constant.none"() : () -> !torch.none
    %4 = "torch.prim.ListConstruct"(%1) : (!torch.int) -> !torch.list<int>
    %5 = "torch.aten.linalg_vector_norm"(%arg0, %0, %4, %2, %3) : (!torch.vtensor<[3,151,64],f32>, !torch.float, !torch.list<int>, !torch.bool, !torch.none) -> !torch.vtensor<[3,151,1],f32>
    "func.return"(%5) : (!torch.vtensor<[3,151,1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

