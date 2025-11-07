"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?],f32>) -> (!torch.vtensor<[?],f32>, !torch.vtensor<[?],f32>), sym_name = "valid_multiple_ret_values"}> ({
  ^bb0(%arg0: !torch.vtensor<[?],f32>):
    "func.return"(%arg0, %arg0) : (!torch.vtensor<[?],f32>, !torch.vtensor<[?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

