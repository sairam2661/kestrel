"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[5,?,?],f32>) -> !torch.vtensor<[],f32>, sym_name = "cast_int_float"}> ({
  ^bb0(%arg0: !torch.vtensor<[5,?,?],f32>):
    %0 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch.int
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.aten._shape_as_tensor"(%arg0) : (!torch.vtensor<[5,?,?],f32>) -> !torch.vtensor<[3],si32>
    %4 = "torch.aten.to.dtype"(%3, %0, %1, %1, %2) : (!torch.vtensor<[3],si32>, !torch.int, !torch.bool, !torch.bool, !torch.none) -> !torch.vtensor<[3],f32>
    %5 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %6 = "torch.vtensor.literal"() <{value = dense<1> : tensor<si32>}> : () -> !torch.vtensor<[],si32>
    %7 = "torch.aten.index_select"(%4, %5, %6) : (!torch.vtensor<[3],f32>, !torch.int, !torch.vtensor<[],si32>) -> !torch.vtensor<[],f32>
    %8 = "torch.aten.item"(%7) : (!torch.vtensor<[],f32>) -> !torch.float
    %9 = "torch.aten.Int.Scalar"(%8) : (!torch.float) -> !torch.int
    %10 = "torch.prim.ListConstruct"(%9) : (!torch.int) -> !torch.list<int>
    "func.return"(%7) : (!torch.vtensor<[],f32>) -> ()
  }) : () -> ()
}) : () -> ()

