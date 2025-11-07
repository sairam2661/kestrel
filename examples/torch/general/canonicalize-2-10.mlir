"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[],si64>, sym_name = "torch.aten.rsub.Scalar$canonicalize_literal_0d"}> ({
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %2 = "torch.vtensor.literal"() <{value = dense<1> : tensor<si64>}> : () -> !torch.vtensor<[],si64>
    %3 = "torch.aten.rsub.Scalar"(%2, %0, %1) : (!torch.vtensor<[],si64>, !torch.int, !torch.int) -> !torch.vtensor<[],si64>
    "func.return"(%3) : (!torch.vtensor<[],si64>) -> ()
  }) : () -> ()
}) : () -> ()

