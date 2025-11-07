"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,5,5],ui8>) -> !torch.vtensor<[1,1,5,5],i1>, sym_name = "torch.aten.copy"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,5,5],ui8>):
    %0 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 11 : i64}> : () -> !torch.int
    %3 = "torch.constant.none"() : () -> !torch.none
    %4 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %5 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %6 = "torch.prim.NumToTensor.Scalar"(%5) : (!torch.int) -> !torch.vtensor<[],si64>
    %7 = "torch.aten.to.dtype"(%6, %2, %4, %4, %3) : (!torch.vtensor<[],si64>, !torch.int, !torch.bool, !torch.bool, !torch.none) -> !torch.vtensor<[],i1>
    %8 = "torch.prim.ListConstruct"(%1, %1, %0, %0) : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %9 = "torch.aten.broadcast_to"(%7, %8) : (!torch.vtensor<[],i1>, !torch.list<int>) -> !torch.vtensor<[1,1,5,5],i1>
    %10 = "torch.aten.copy"(%9, %arg0, %4) : (!torch.vtensor<[1,1,5,5],i1>, !torch.vtensor<[1,1,5,5],ui8>, !torch.bool) -> !torch.vtensor<[1,1,5,5],i1>
    "func.return"(%10) : (!torch.vtensor<[1,1,5,5],i1>) -> ()
  }) : () -> ()
}) : () -> ()

