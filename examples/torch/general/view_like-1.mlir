"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,65,256],f32>) -> !torch.vtensor<[2,65,256],f32>, sym_name = "torch.aten.slice.strided.static$slice_like"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,65,256],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 9223372036854775807 : i64}> : () -> !torch.int
    %3 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %2, %1) : (!torch.vtensor<[4,65,256],f32>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[2,65,256],f32>
    "func.return"(%3) : (!torch.vtensor<[2,65,256],f32>) -> ()
  }) : () -> ()
}) : () -> ()

