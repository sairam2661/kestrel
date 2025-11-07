"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],ui8>, sym_name = "fold_aten_where_false_sself_int"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<false> : tensor<4xi1>}> : () -> !torch.vtensor<[4],i1>
    %1 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch.int
    %2 = "torch.vtensor.literal"() <{value = dense<11> : tensor<ui8>}> : () -> !torch.vtensor<[],ui8>
    %3 = "torch.aten.where.ScalarSelf"(%0, %1, %2) : (!torch.vtensor<[4],i1>, !torch.int, !torch.vtensor<[],ui8>) -> !torch.vtensor<[4],ui8>
    "func.return"(%3) : (!torch.vtensor<[4],ui8>) -> ()
  }) : () -> ()
}) : () -> ()

