"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1500,1536],f32>) -> !torch.vtensor<[1,1500,1536],f32>, sym_name = "torch.aten.gelu$none"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1500,1536],f32>):
    %0 = "torch.constant.str"() <{value = "none"}> : () -> !torch.str
    %1 = "torch.aten.gelu"(%arg0, %0) : (!torch.vtensor<[1,1500,1536],f32>, !torch.str) -> !torch.vtensor<[1,1500,1536],f32>
    "func.return"(%1) : (!torch.vtensor<[1,1500,1536],f32>) -> ()
  }) : () -> ()
}) : () -> ()

