"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,5],f32>) -> !torch.vtensor<[3,5],si64>, sym_name = "torch.aten.to.dtype$floatToInt"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,5],f32>):
    %0 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.aten.to.dtype"(%arg0, %0, %1, %1, %2) : (!torch.vtensor<[3,5],f32>, !torch.int, !torch.bool, !torch.bool, !torch.none) -> !torch.vtensor<[3,5],si64>
    "func.return"(%3) : (!torch.vtensor<[3,5],si64>) -> ()
  }) : () -> ()
}) : () -> ()

