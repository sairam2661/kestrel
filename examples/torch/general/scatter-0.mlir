"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],si64>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[?,?],si64>) -> !torch.vtensor<[?,?],si64>, sym_name = "forward"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],si64>, %arg1: !torch.vtensor<[?,?],si64>, %arg2: !torch.vtensor<[?,?],si64>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.aten.scatter.src"(%arg0, %0, %arg1, %arg2) : (!torch.vtensor<[?,?],si64>, !torch.int, !torch.vtensor<[?,?],si64>, !torch.vtensor<[?,?],si64>) -> !torch.vtensor<[?,?],si64>
    "func.return"(%1) : (!torch.vtensor<[?,?],si64>) -> ()
  }) : () -> ()
}) : () -> ()

