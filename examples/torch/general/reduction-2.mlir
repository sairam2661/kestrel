"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>) -> !torch.vtensor<[?,?,?],f32>, sym_name = "torch.aten.prod.intdim_negative_dim"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>):
    %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.aten.prod.dim_int"(%arg0, %0, %1, %2) : (!torch.vtensor<[?,?,?,?],f32>, !torch.int, !torch.bool, !torch.none) -> !torch.vtensor<[?,?,?],f32>
    "func.return"(%3) : (!torch.vtensor<[?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

