"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,4],f32>, !torch.vtensor<[2],si64>) -> !torch.vtensor<[2,4],f32>, sym_name = "torch.aten.index_select$basic"}> ({
  ^bb0(%arg4: !torch.vtensor<[?,4],f32>, %arg5: !torch.vtensor<[2],si64>):
    %6 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %7 = "torch.aten.index_select"(%arg4, %6, %arg5) : (!torch.vtensor<[?,4],f32>, !torch.int, !torch.vtensor<[2],si64>) -> !torch.vtensor<[2,4],f32>
    "func.return"(%7) : (!torch.vtensor<[2,4],f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?],si64>) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.aten.embedding$basic"}> ({
  ^bb0(%arg2: !torch.vtensor<[?,?],f32>, %arg3: !torch.vtensor<[?],si64>):
    %3 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %4 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %5 = "torch.aten.embedding"(%arg2, %arg3, %4, %3, %3) : (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?],si64>, !torch.int, !torch.bool, !torch.bool) -> !torch.vtensor<[?,?],f32>
    "func.return"(%5) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?,1],si64>) -> !torch.vtensor<[?,1,?],f32>, sym_name = "torch.aten.embedding$rank_two_indices"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>, %arg1: !torch.vtensor<[?,1],si64>):
    %0 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %1 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %2 = "torch.aten.embedding"(%arg0, %arg1, %1, %0, %0) : (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?,1],si64>, !torch.int, !torch.bool, !torch.bool) -> !torch.vtensor<[?,1,?],f32>
    "func.return"(%2) : (!torch.vtensor<[?,1,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

