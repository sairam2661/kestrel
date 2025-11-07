"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?],f16>, !torch.vtensor<[1],f16>) -> !torch.vtensor<[?],f16>, sym_name = "torch.aten.fmod_float"}> ({
  ^bb0(%arg0: !torch.vtensor<[?],f16>, %arg1: !torch.vtensor<[1],f16>):
    %0 = "torch.aten.fmod.Tensor"(%arg0, %arg1) : (!torch.vtensor<[?],f16>, !torch.vtensor<[1],f16>) -> !torch.vtensor<[?],f16>
    "func.return"(%0) : (!torch.vtensor<[?],f16>) -> ()
  }) : () -> ()
}) : () -> ()

