"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,3,3],f32>, !torch.vtensor<[1,1,5,5],f32>, !torch.vtensor<[1,1,3,3],f32>, !torch.vtensor<[],f32>) -> (!torch.vtensor<[1,1,3,3],f32>, !torch.vtensor<[1],f32>), sym_name = "convolution_backward_none_result"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,3,3],f32>, %arg1: !torch.vtensor<[1,1,5,5],f32>, %arg2: !torch.vtensor<[1,1,3,3],f32>, %arg3: !torch.vtensor<[],f32>):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %4 = "torch.prim.ListConstruct"(%3) : (!torch.int) -> !torch.list<int>
    %5 = "torch.prim.ListConstruct"(%3, %3) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%1, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %7 = "torch.prim.ListConstruct"(%2, %0, %0) : (!torch.bool, !torch.bool, !torch.bool) -> !torch.list<bool>
    %8:3 = "torch.aten.convolution_backward"(%arg0, %arg1, %arg2, %4, %5, %6, %5, %2, %6, %3, %7) : (!torch.vtensor<[1,1,3,3],f32>, !torch.vtensor<[1,1,5,5],f32>, !torch.vtensor<[1,1,3,3],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int, !torch.list<bool>) -> (!torch.none, !torch.vtensor<[1,1,3,3],f32>, !torch.vtensor<[1],f32>)
    "func.return"(%8#1, %8#2) : (!torch.vtensor<[1,1,3,3],f32>, !torch.vtensor<[1],f32>) -> ()
  }) : () -> ()
}) : () -> ()

