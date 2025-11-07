"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[5,?,?],f32>) -> !torch.vtensor<[3],si32>, sym_name = "shape_as_tensor"}> ({
  ^bb0(%arg0: !torch.vtensor<[5,?,?],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.vtensor.literal"() <{value = dense<1> : tensor<1xsi64>}> : () -> !torch.vtensor<[1],si64>
    %3 = "torch.aten._shape_as_tensor"(%arg0) : (!torch.vtensor<[5,?,?],f32>) -> !torch.vtensor<[3],si32>
    %4 = "torch.aten.index_select"(%3, %0, %2) : (!torch.vtensor<[3],si32>, !torch.int, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],si32>
    %5 = "torch.aten.item"(%4) : (!torch.vtensor<[1],si32>) -> !torch.int
    %6 = "torch.prim.ListConstruct"(%5) : (!torch.int) -> !torch.list<int>
    "func.return"(%3) : (!torch.vtensor<[3],si32>) -> ()
  }) : () -> ()
}) : () -> ()

