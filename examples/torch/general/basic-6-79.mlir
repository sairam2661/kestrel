"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,2,3],f32>) -> !torch.vtensor<[3,2,1],f32>, sym_name = "torch.aten.prod.dim_int$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,2,3],f32>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.aten.prod.dim_int"(%arg0, %0, %1, %2) : (!torch.vtensor<[3,2,3],f32>, !torch.int, !torch.bool, !torch.none) -> !torch.vtensor<[3,2,1],f32>
    "func.return"(%3) : (!torch.vtensor<[3,2,1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

