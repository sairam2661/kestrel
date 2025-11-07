"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,65,256],f32>) -> !torch.vtensor<[4,16,256],f32>, sym_name = "torch.aten.slice.negative_start"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,65,256],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 100 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = -16 : i64}> : () -> !torch.int
    %4 = "torch.aten.slice.Tensor"(%arg0, %1, %3, %2, %1) : (!torch.vtensor<[4,65,256],f32>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[4,16,256],f32>
    "func.return"(%4) : (!torch.vtensor<[4,16,256],f32>) -> ()
  }) : () -> ()
}) : () -> ()

