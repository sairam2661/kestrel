"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[?,?,3,3],f32>, !torch.vtensor<[?],f32>) -> !torch.vtensor<[?,?,?,?],f32>, sym_name = "torch.aten.convolution$bias"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>, %arg1: !torch.vtensor<[?,?,3,3],f32>, %arg2: !torch.vtensor<[?],f32>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %4 = "torch.prim.ListConstruct"(%0, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %5 = "torch.prim.ListConstruct"(%2, %0) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%3, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %7 = "torch.prim.ListConstruct"() : () -> !torch.list<int>
    %8 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %9 = "torch.aten.convolution"(%arg0, %arg1, %arg2, %4, %5, %6, %8, %7, %3) : (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[?,?,3,3],f32>, !torch.vtensor<[?],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int) -> !torch.vtensor<[?,?,?,?],f32>
    "func.return"(%9) : (!torch.vtensor<[?,?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

