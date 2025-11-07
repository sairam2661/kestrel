"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],ui8>, sym_name = "fold_aten_where_false_sother_int"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<false> : tensor<4xi1>}> : () -> !torch.vtensor<[4],i1>
    %1 = "torch.vtensor.literal"() <{value = dense<7> : tensor<ui8>}> : () -> !torch.vtensor<[],ui8>
    %2 = "torch.constant.int"() <{value = 11 : i64}> : () -> !torch.int
    %3 = "torch.aten.where.ScalarOther"(%0, %1, %2) : (!torch.vtensor<[4],i1>, !torch.vtensor<[],ui8>, !torch.int) -> !torch.vtensor<[4],ui8>
    "func.return"(%3) : (!torch.vtensor<[4],ui8>) -> ()
  }) : () -> ()
}) : () -> ()

