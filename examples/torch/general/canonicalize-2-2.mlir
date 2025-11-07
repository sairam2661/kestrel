"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],si32>, sym_name = "torch.aten.cat$fold_zero_dim_operand"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<[1, 3]> : tensor<2xsi32>}> : () -> !torch.vtensor<[2],si32>
    %1 = "torch.vtensor.literal"() <{value = dense<2> : tensor<2xsi32>}> : () -> !torch.vtensor<[2],si32>
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.prim.ListConstruct"(%0, %1) : (!torch.vtensor<[2],si32>, !torch.vtensor<[2],si32>) -> !torch.list<vtensor>
    %4 = "torch.aten.cat"(%3, %2) : (!torch.list<vtensor>, !torch.int) -> !torch.vtensor<[4],si32>
    "func.return"(%4) : (!torch.vtensor<[4],si32>) -> ()
  }) : () -> ()
}) : () -> ()

