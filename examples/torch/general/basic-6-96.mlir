"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],si32>) -> !torch.vtensor<[?,?],si32>, sym_name = "torch.aten.bitwise_and.Scalar$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],si32>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.aten.bitwise_and.Scalar"(%arg0, %0) : (!torch.vtensor<[?,?],si32>, !torch.int) -> !torch.vtensor<[?,?],si32>
    "func.return"(%1) : (!torch.vtensor<[?,?],si32>) -> ()
  }) : () -> ()
}) : () -> ()

