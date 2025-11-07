"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,65,256],f32>) -> !torch.vtensor<[4,33,256],f32>, sym_name = "torch.aten.slice.none.static$slice_like"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,65,256],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.aten.slice.Tensor"(%arg0, %0, %2, %2, %1) : (!torch.vtensor<[4,65,256],f32>, !torch.int, !torch.none, !torch.none, !torch.int) -> !torch.vtensor<[4,33,256],f32>
    "func.return"(%3) : (!torch.vtensor<[4,33,256],f32>) -> ()
  }) : () -> ()
}) : () -> ()

