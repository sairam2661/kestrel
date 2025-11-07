"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[],si8>) -> !torch.int, sym_name = "torch.aten.Int.Tensor$zero_rank$char_dtype"}> ({
  ^bb0(%arg0: !torch.vtensor<[],si8>):
    %0 = "torch.aten.Int.Tensor"(%arg0) : (!torch.vtensor<[],si8>) -> !torch.int
    "func.return"(%0) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

