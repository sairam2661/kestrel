"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>) -> !torch.int, sym_name = "broadcast_prop"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.aten.size.int"(%arg0, %0) : (!torch.vtensor<[?,?],f32>, !torch.int) -> !torch.int
    %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch.int) -> !torch.vtensor<[],si32>
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %4 = "torch.vtensor.literal"() <{value = dense<-1> : tensor<si32>}> : () -> !torch.vtensor<[],si32>
    %5 = "torch.prim.ListConstruct"(%3) : (!torch.int) -> !torch.list<int>
    %6 = "torch.aten.broadcast_to"(%2, %5) : (!torch.vtensor<[],si32>, !torch.list<int>) -> !torch.vtensor<[3],si32>
    %7 = "torch.aten.index_select"(%6, %0, %4) : (!torch.vtensor<[3],si32>, !torch.int, !torch.vtensor<[],si32>) -> !torch.vtensor<[],si32>
    %8 = "torch.aten.item"(%7) : (!torch.vtensor<[],si32>) -> !torch.int
    %9 = "torch.prim.ListConstruct"(%8) : (!torch.int) -> !torch.list<int>
    "func.return"(%8) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

