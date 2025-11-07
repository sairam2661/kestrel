"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],i1>, sym_name = "torch.aten.gt.scalar"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %1 = "torch.aten.gt.Scalar"(%arg0, %0) : (!torch.vtensor<[?,?],f32>, !torch.int) -> !torch.vtensor<[?,?],i1>
    "func.return"(%1) : (!torch.vtensor<[?,?],i1>) -> ()
  }) : () -> ()
}) : () -> ()

