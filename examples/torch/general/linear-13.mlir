"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[?,?,3,3],f32>) -> !torch.vtensor<[?,?,?,?],f32>, sym_name = "torch.aten.convolution"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>, %arg1: !torch.vtensor<[?,?,3,3],f32>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %5 = "torch.prim.ListConstruct"(%1, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%3, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %7 = "torch.prim.ListConstruct"(%4, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %8 = "torch.prim.ListConstruct"() : () -> !torch.list<int>
    %9 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %10 = "torch.aten.convolution"(%arg0, %arg1, %0, %5, %6, %7, %9, %8, %4) : (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[?,?,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int) -> !torch.vtensor<[?,?,?,?],f32>
    "func.return"(%10) : (!torch.vtensor<[?,?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

