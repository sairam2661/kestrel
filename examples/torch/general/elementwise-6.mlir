"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,?,32,128],bf16>) -> !torch.vtensor<[1,?,32,128],f16>, sym_name = "elementwise_todtype_bf162f16"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,?,32,128],bf16>):
    %0 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.aten.to.dtype"(%arg0, %0, %1, %1, %2) : (!torch.vtensor<[1,?,32,128],bf16>, !torch.int, !torch.bool, !torch.bool, !torch.none) -> !torch.vtensor<[1,?,32,128],f16>
    "func.return"(%3) : (!torch.vtensor<[1,?,32,128],f16>) -> ()
  }) : () -> ()
}) : () -> ()

