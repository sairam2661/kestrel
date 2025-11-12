"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?],f64>) -> !torch.vtensor<[?],f16>, sym_name = "view_type2"}> ({
  ^bb0(%arg0: !torch.vtensor<[?],f64>):
    %0 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %1 = "torch.aten.view.dtype"(%arg0, %0) : (!torch.vtensor<[?],f64>, !torch.int) -> !torch.vtensor<[?],f16>
    "func.return"(%1) : (!torch.vtensor<[?],f16>) -> ()
  }) : () -> ()
}) : () -> ()

