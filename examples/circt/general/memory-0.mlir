"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "check_mem_dce"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %2 = "llhd.var"(%arg2) : (i32) -> !llhd.ptr<i32>
    %3 = "llhd.var"(%arg3) : (i32) -> !llhd.ptr<i32>
    "llhd.store"(%2, %arg3) : (!llhd.ptr<i32>, i32) -> ()
    %4 = "llhd.load"(%2) : (!llhd.ptr<i32>) -> i32
    "llhd.store"(%2, %arg2) : (!llhd.ptr<i32>, i32) -> ()
    %5 = "llhd.load"(%2) : (!llhd.ptr<i32>) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> (), sym_name = "check_mem_cse"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llhd.var"(%arg0) : (i32) -> !llhd.ptr<i32>
    %1 = "llhd.var"(%arg1) : (i32) -> !llhd.ptr<i32>
    "llhd.store"(%0, %arg1) : (!llhd.ptr<i32>, i32) -> ()
    "llhd.store"(%1, %arg0) : (!llhd.ptr<i32>, i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

