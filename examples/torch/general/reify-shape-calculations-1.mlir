"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor, !torch.float, !torch.Generator) -> !torch.vtensor, sym_name = "valsem_ops"}> ({
  ^bb0(%arg0: !torch.vtensor, %arg1: !torch.float, %arg2: !torch.Generator):
    %0 = "torch.valsem.aten.bernoulli.float"(%arg0, %arg1, %arg2) : (!torch.vtensor, !torch.float, !torch.Generator) -> !torch.vtensor
    "func.return"(%0) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

