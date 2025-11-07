"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,32,64],si16>) -> !torch.vtensor<[1,1,32,64],si32>, sym_name = "torch.aten.Scalar$mixed_type"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,32,64],si16>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 256 : i64}> : () -> !torch.int
    %2 = "torch.aten.add.Scalar"(%arg0, %1, %0) : (!torch.vtensor<[1,1,32,64],si16>, !torch.int, !torch.int) -> !torch.vtensor<[1,1,32,64],si32>
    "func.return"(%2) : (!torch.vtensor<[1,1,32,64],si32>) -> ()
  }) : () -> ()
}) : () -> ()

