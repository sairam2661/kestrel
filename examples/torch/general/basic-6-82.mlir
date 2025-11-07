"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],si64>, !torch.vtensor<[?,?],si64>) -> !torch.vtensor<[?,?],si64>, sym_name = "torch.aten.div.Tensor_mode$int_trunc"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],si64>, %arg1: !torch.vtensor<[?,?],si64>):
    %0 = "torch.constant.str"() <{value = "trunc"}> : () -> !torch.str
    %1 = "torch.aten.div.Tensor_mode"(%arg0, %arg1, %0) : (!torch.vtensor<[?,?],si64>, !torch.vtensor<[?,?],si64>, !torch.str) -> !torch.vtensor<[?,?],si64>
    "func.return"(%1) : (!torch.vtensor<[?,?],si64>) -> ()
  }) : () -> ()
}) : () -> ()

