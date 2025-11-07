"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,12,128,128],f32>, !torch.vtensor<[1,1,128,128],i1>) -> !torch.vtensor<[1,12,128,128],f32>, sym_name = "torch.aten.masked_fill.Scalar"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,12,128,128],f32>, %arg1: !torch.vtensor<[1,1,128,128],i1>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.aten.masked_fill.Scalar"(%arg0, %arg1, %0) : (!torch.vtensor<[1,12,128,128],f32>, !torch.vtensor<[1,1,128,128],i1>, !torch.int) -> !torch.vtensor<[1,12,128,128],f32>
    "func.return"(%1) : (!torch.vtensor<[1,12,128,128],f32>) -> ()
  }) : () -> ()
}) : () -> ()

