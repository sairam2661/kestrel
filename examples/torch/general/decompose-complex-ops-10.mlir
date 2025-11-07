"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?],si32>, !torch.vtensor<[1],si32>) -> !torch.vtensor<[?],si32>, sym_name = "torch.aten.fmod_int"}> ({
  ^bb0(%arg0: !torch.vtensor<[?],si32>, %arg1: !torch.vtensor<[1],si32>):
    %0 = "torch.aten.fmod.Tensor"(%arg0, %arg1) : (!torch.vtensor<[?],si32>, !torch.vtensor<[1],si32>) -> !torch.vtensor<[?],si32>
    "func.return"(%0) : (!torch.vtensor<[?],si32>) -> ()
  }) : () -> ()
}) : () -> ()

