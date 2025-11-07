"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?],f32>) -> !torch.vtensor<[?,?,?],f32>, sym_name = "torch.aten.slice.none$slice_like"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.aten.slice.Tensor"(%arg0, %0, %2, %2, %1) : (!torch.vtensor<[?,?,?],f32>, !torch.int, !torch.none, !torch.none, !torch.int) -> !torch.vtensor<[?,?,?],f32>
    "func.return"(%3) : (!torch.vtensor<[?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

