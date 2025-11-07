"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,4],f32>) -> !torch.vtensor<[2,4],f32>, sym_name = "torch.aten.remainder.Scalar"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,4],f32>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.aten.remainder.Scalar"(%arg0, %0) : (!torch.vtensor<[2,4],f32>, !torch.int) -> !torch.vtensor<[2,4],f32>
    "func.return"(%1) : (!torch.vtensor<[2,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

