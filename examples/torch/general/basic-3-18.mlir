"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],bf16>) -> !torch.vtensor<[?,?],bf16>, sym_name = "torch.aten.neg.bf16"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],bf16>):
    %0 = "torch.aten.neg"(%arg0) : (!torch.vtensor<[?,?],bf16>) -> !torch.vtensor<[?,?],bf16>
    "func.return"(%0) : (!torch.vtensor<[?,?],bf16>) -> ()
  }) : () -> ()
}) : () -> ()

