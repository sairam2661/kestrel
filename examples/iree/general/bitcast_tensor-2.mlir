"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?],ui8>) -> !torch.vtensor<[?],si16>, sym_name = "view_type1"}> ({
  ^bb0(%arg0: !torch.vtensor<[?],ui8>):
    %0 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %1 = "torch.aten.view.dtype"(%arg0, %0) : (!torch.vtensor<[?],ui8>, !torch.int) -> !torch.vtensor<[?],si16>
    "func.return"(%1) : (!torch.vtensor<[?],si16>) -> ()
  }) : () -> ()
}) : () -> ()

