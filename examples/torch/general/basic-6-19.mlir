"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>) -> !torch.vtensor<[1],f32>, sym_name = "test_reduce_sum$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.aten.sum"(%arg0, %0) : (!torch.vtensor<[?,?,?,?],f32>, !torch.none) -> !torch.vtensor<[1],f32>
    "func.return"(%1) : (!torch.vtensor<[1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

