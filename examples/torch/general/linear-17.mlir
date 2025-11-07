"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,2,7,7],f32>, !torch.vtensor<[2,4,3,3],f32>) -> !torch.vtensor<[1,4,16,16],f32>, sym_name = "torch.aten.convolution$transposed_outputpadding"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,2,7,7],f32>, %arg1: !torch.vtensor<[2,4,3,3],f32>):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %1 = "torch.constant.none"() : () -> !torch.none
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %5 = "torch.prim.ListConstruct"(%2, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%3, %3) : (!torch.int, !torch.int) -> !torch.list<int>
    %7 = "torch.prim.ListConstruct"(%4, %4) : (!torch.int, !torch.int) -> !torch.list<int>
    %8 = "torch.aten.convolution"(%arg0, %arg1, %1, %7, %5, %6, %0, %6, %3) : (!torch.vtensor<[1,2,7,7],f32>, !torch.vtensor<[2,4,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int) -> !torch.vtensor<[1,4,16,16],f32>
    "func.return"(%8) : (!torch.vtensor<[1,4,16,16],f32>) -> ()
  }) : () -> ()
}) : () -> ()

