"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[8,?,?,?,2,1,3],f32>) -> !torch.vtensor<[2,2,2,?,?,?,6],f32>, sym_name = "torch.aten.view$combineConcepts"}> ({
  ^bb0(%arg0: !torch.vtensor<[8,?,?,?,2,1,3],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.aten.size.int"(%arg0, %0) : (!torch.vtensor<[8,?,?,?,2,1,3],f32>, !torch.int) -> !torch.int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %3 = "torch.aten.size.int"(%arg0, %2) : (!torch.vtensor<[8,?,?,?,2,1,3],f32>, !torch.int) -> !torch.int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %7 = "torch.prim.ListConstruct"(%4, %4, %4, %1, %6, %3, %5) : (!torch.int, !torch.int, !torch.int, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %8 = "torch.aten.view"(%arg0, %7) : (!torch.vtensor<[8,?,?,?,2,1,3],f32>, !torch.list<int>) -> !torch.vtensor<[2,2,2,?,?,?,6],f32>
    "func.return"(%8) : (!torch.vtensor<[2,2,2,?,?,?,6],f32>) -> ()
  }) {torch.assume_strict_symbolic_shapes} : () -> ()
}) : () -> ()

