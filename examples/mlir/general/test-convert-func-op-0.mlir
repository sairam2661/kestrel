"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "add"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) {llvm.emit_c_interface} : () -> ()
}) : () -> ()

