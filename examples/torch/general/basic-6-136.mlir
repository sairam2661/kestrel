"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[5,3],f32>) -> !torch.vtensor<[5,3],f32>, sym_name = "torch.aten.gelu$tanh"}> ({
  ^bb0(%arg0: !torch.vtensor<[5,3],f32>):
    %0 = "torch.constant.str"() <{value = "tanh"}> : () -> !torch.str
    %1 = "torch.aten.gelu"(%arg0, %0) : (!torch.vtensor<[5,3],f32>, !torch.str) -> !torch.vtensor<[5,3],f32>
    "func.return"(%1) : (!torch.vtensor<[5,3],f32>) -> ()
  }) : () -> ()
}) : () -> ()

