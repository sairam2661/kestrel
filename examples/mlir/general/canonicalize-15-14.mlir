"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "make_i32", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (index, index, index) -> i32, sym_name = "for_yields_2"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "func.call"() <{callee = @make_i32}> : () -> i32
    %1 = "scf.for"(%arg0, %arg1, %arg2, %0) ({
    ^bb0(%arg3: index, %arg4: i32):
      "scf.yield"(%arg4) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

