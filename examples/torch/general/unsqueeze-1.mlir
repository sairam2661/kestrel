"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[],f32>) -> !torch.vtensor<[1],f32>, sym_name = "torch.aten.unsqueeze$basic"}> ({
  ^bb0(%arg4: !torch.vtensor<[],f32>):
    %8 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %9 = "torch.aten.unsqueeze"(%arg4, %8) : (!torch.vtensor<[],f32>, !torch.int) -> !torch.vtensor<[1],f32>
    "func.return"(%9) : (!torch.vtensor<[1],f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.vtensor<[],f32>) -> !torch.vtensor<[1],f32>, sym_name = "torch.aten.unsqueeze$basic_negative"}> ({
  ^bb0(%arg3: !torch.vtensor<[],f32>):
    %6 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %7 = "torch.aten.unsqueeze"(%arg3, %6) : (!torch.vtensor<[],f32>, !torch.int) -> !torch.vtensor<[1],f32>
    "func.return"(%7) : (!torch.vtensor<[1],f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.vtensor<[2,3,4],f32>) -> !torch.vtensor<[1,2,3,4],f32>, sym_name = "torch.aten.unsqueeze$higher_rank_front"}> ({
  ^bb0(%arg2: !torch.vtensor<[2,3,4],f32>):
    %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %5 = "torch.aten.unsqueeze"(%arg2, %4) : (!torch.vtensor<[2,3,4],f32>, !torch.int) -> !torch.vtensor<[1,2,3,4],f32>
    "func.return"(%5) : (!torch.vtensor<[1,2,3,4],f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.vtensor<[2,3,4],f32>) -> !torch.vtensor<[2,3,4,1],f32>, sym_name = "torch.aten.unsqueeze$higher_rank_back"}> ({
  ^bb0(%arg1: !torch.vtensor<[2,3,4],f32>):
    %2 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %3 = "torch.aten.unsqueeze"(%arg1, %2) : (!torch.vtensor<[2,3,4],f32>, !torch.int) -> !torch.vtensor<[2,3,4,1],f32>
    "func.return"(%3) : (!torch.vtensor<[2,3,4,1],f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.vtensor<[2,3,4],f32>) -> !torch.vtensor<[2,3,1,4],f32>, sym_name = "torch.aten.unsqueeze$higher_rank_middle"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,3,4],f32>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.aten.unsqueeze"(%arg0, %0) : (!torch.vtensor<[2,3,4],f32>, !torch.int) -> !torch.vtensor<[2,3,1,4],f32>
    "func.return"(%1) : (!torch.vtensor<[2,3,1,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

