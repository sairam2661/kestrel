"builtin.module"() ({
  "func.func"() <{function_type = (!hw.inout<i32>, i32, !llhd.time, i1) -> (), sym_name = "drv_folding"}> ({
  ^bb0(%arg0: !hw.inout<i32>, %arg1: i32, %arg2: !llhd.time, %arg3: i1):
    %0 = "hw.constant"() <{value = true}> : () -> i1
    %1 = "hw.constant"() <{value = false}> : () -> i1
    "llhd.drv"(%arg0, %arg1, %arg2) : (!hw.inout<i32>, i32, !llhd.time) -> ()
    "llhd.drv"(%arg0, %arg1, %arg2, %arg3) : (!hw.inout<i32>, i32, !llhd.time, i1) -> ()
    "llhd.drv"(%arg0, %arg1, %arg2, %1) : (!hw.inout<i32>, i32, !llhd.time, i1) -> ()
    "llhd.drv"(%arg0, %arg1, %arg2, %0) : (!hw.inout<i32>, i32, !llhd.time, i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

