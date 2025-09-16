"builtin.module"() ({
  "func.func"() <{function_type = (i32, i1) -> i32, sym_name = "clean_region_branch_op_erase_it", sym_visibility = "private"}> ({
  ^bb0(%arg2: i32, %arg3: i1):
    %1 = "scf.while"(%arg2) ({
    ^bb0(%arg5: i32):
      "scf.condition"(%arg3, %arg5) : (i1, i32) -> ()
    }, {
    ^bb0(%arg4: i32):
      "scf.yield"(%arg4) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i1) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: i32, %arg1: i1):
    %0 = "func.call"(%arg0, %arg1) <{callee = @clean_region_branch_op_erase_it}> : (i32, i1) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

