"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f16>) -> !torch.vtensor<[?,?],f16>, sym_name = "torch.aten.neg.f16"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f16>):
    %0 = "torch.aten.neg"(%arg0) : (!torch.vtensor<[?,?],f16>) -> !torch.vtensor<[?,?],f16>
    "func.return"(%0) : (!torch.vtensor<[?,?],f16>) -> ()
  }) : () -> ()
}) : () -> ()

