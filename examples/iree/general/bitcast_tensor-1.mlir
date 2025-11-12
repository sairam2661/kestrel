"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[295501824],ui8>) -> !torch.vtensor<[147750912],si16>, sym_name = "view_type0"}> ({
  ^bb0(%arg0: !torch.vtensor<[295501824],ui8>):
    %0 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %1 = "torch.aten.view.dtype"(%arg0, %0) : (!torch.vtensor<[295501824],ui8>, !torch.int) -> !torch.vtensor<[147750912],si16>
    "func.return"(%1) : (!torch.vtensor<[147750912],si16>) -> ()
  }) : () -> ()
}) : () -> ()

