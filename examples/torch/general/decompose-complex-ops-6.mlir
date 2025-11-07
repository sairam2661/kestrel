"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3],si64>, !torch.int) -> !torch.vtensor<[3,?],si64>, sym_name = "torch.aten.one_hot$fold"}> ({
  ^bb0(%arg0: !torch.vtensor<[3],si64>, %arg1: !torch.int):
    %0 = "torch.aten.one_hot"(%arg0, %arg1) : (!torch.vtensor<[3],si64>, !torch.int) -> !torch.vtensor<[3,?],si64>
    "func.return"(%0) : (!torch.vtensor<[3,?],si64>) -> ()
  }) : () -> ()
}) : () -> ()

