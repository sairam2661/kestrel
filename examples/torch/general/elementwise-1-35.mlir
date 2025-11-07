"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[?,?,?,?],f32>) -> !torch.vtensor<[?,?,?,?],f32>, sym_name = "torch.aten.div.Tensor_mode$floor"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>, %arg1: !torch.vtensor<[?,?,?,?],f32>):
    %0 = "torch.constant.str"() <{value = "floor"}> : () -> !torch.str
    %1 = "torch.aten.div.Tensor_mode"(%arg0, %arg1, %0) : (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[?,?,?,?],f32>, !torch.str) -> !torch.vtensor<[?,?,?,?],f32>
    "func.return"(%1) : (!torch.vtensor<[?,?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

