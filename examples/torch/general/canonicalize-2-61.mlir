"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[10,64,112,112,112],f32>) -> !torch.vtensor<[10,64,56,56,56],f32>, sym_name = "torch.aten.max_pool3d_with_indices$canonicalize"}> ({
  ^bb0(%arg0: !torch.vtensor<[10,64,112,112,112],f32>):
    %0 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %4 = "torch.prim.ListConstruct"(%3, %3) : (!torch.int, !torch.int) -> !torch.list<int>
    %5 = "torch.prim.ListConstruct"(%2, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%1, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %7:2 = "torch.aten.max_pool3d_with_indices"(%arg0, %4, %5, %6, %6, %0) : (!torch.vtensor<[10,64,112,112,112],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool) -> (!torch.vtensor<[10,64,56,56,56],f32>, !torch.vtensor<[10,64,56,56,56],si64>)
    "func.return"(%7#0) : (!torch.vtensor<[10,64,56,56,56],f32>) -> ()
  }) : () -> ()
}) : () -> ()

