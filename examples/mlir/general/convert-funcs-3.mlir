"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "variadic_func"}> ({
  ^bb0(%arg0: i32):
    "func.return"() : () -> ()
  }) {func.varargs = true, llvm.emit_c_interface} : () -> ()
}) : () -> ()

