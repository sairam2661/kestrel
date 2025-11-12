"builtin.module"() ({
  "func.func"() <{function_type = (!torch_pstream, !torch_pstream) -> !torch_pstream, sym_name = "torch.aten.cat$stress_test"}> ({
    ^bb0(%arg0: !torch_pstream, %arg1: !torch_pstream):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_pstream
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_pstream
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_pstream
      %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_pstream, !torch_pstream, !torch_pstream) -> !torch_pstream
      %4 = "torch.aten.cat"(%arg0, %arg1, %3) : (!torch_pstream, !torch_pstream, !torch_pstream) -> !torch_pstream
      "func.return"(%4) : (!torch_pstream) -> ()
  }) : () -> ()
}) : () -> ()