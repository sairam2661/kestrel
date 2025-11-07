"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?],f32>) -> !torch.vtensor<[4],f32>, sym_name = "torch.tensor_static_info_cast$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?],f32>):
    %0 = "torch.tensor_static_info_cast"(%arg0) : (!torch.vtensor<[?],f32>) -> !torch.vtensor<[4],f32>
    "func.return"(%0) : (!torch.vtensor<[4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

