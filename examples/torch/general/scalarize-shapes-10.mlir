"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[5,?,?,?],f32>) -> !torch.vtensor<[2],si32>, sym_name = "shape_as_tensor_slice"}> ({
  ^bb0(%arg0: !torch.vtensor<[5,?,?,?],f32>):
    %0 = "torch.vtensor.literal"() <{value = dense<1> : tensor<si32>}> : () -> !torch.vtensor<[],si32>
    %1 = "torch.aten._shape_as_tensor"(%arg0) : (!torch.vtensor<[5,?,?,?],f32>) -> !torch.vtensor<[4],si32>
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %6 = "torch.aten.slice.Tensor"(%1, %2, %3, %4, %5) : (!torch.vtensor<[4],si32>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[2],si32>
    %7 = "torch.aten.index_select"(%6, %2, %0) : (!torch.vtensor<[2],si32>, !torch.int, !torch.vtensor<[],si32>) -> !torch.vtensor<[],si32>
    %8 = "torch.aten.item"(%7) : (!torch.vtensor<[],si32>) -> !torch.int
    %9 = "torch.prim.ListConstruct"(%8) : (!torch.int) -> !torch.list<int>
    "func.return"(%6) : (!torch.vtensor<[2],si32>) -> ()
  }) : () -> ()
}) : () -> ()

