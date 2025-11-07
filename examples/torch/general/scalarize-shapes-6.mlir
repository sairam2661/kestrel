"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.int, sym_name = "literal_item"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<[1, 2, 3]> : tensor<3xsi32>}> : () -> !torch.vtensor<[3],si32>
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.vtensor.literal"() <{value = dense<1> : tensor<si32>}> : () -> !torch.vtensor<[],si32>
    %3 = "torch.aten.index_select"(%0, %1, %2) : (!torch.vtensor<[3],si32>, !torch.int, !torch.vtensor<[],si32>) -> !torch.vtensor<[],si32>
    %4 = "torch.aten.item"(%3) : (!torch.vtensor<[],si32>) -> !torch.int
    %5 = "torch.prim.ListConstruct"(%4) : (!torch.int) -> !torch.list<int>
    "func.return"(%4) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

