"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[],ui8>) -> !torch.int, sym_name = "torch.aten.Int.Tensor$zero_rank$byte_dtype"}> ({
  ^bb0(%arg0: !torch.vtensor<[],ui8>):
    %0 = "torch.aten.Int.Tensor"(%arg0) : (!torch.vtensor<[],ui8>) -> !torch.int
    "func.return"(%0) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

