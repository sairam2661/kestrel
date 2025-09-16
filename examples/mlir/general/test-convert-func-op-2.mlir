"builtin.module"() ({
  "func.func"() <{arg_attrs = [{llvm.byref = !test.smpla}], function_type = (!test.smpla) -> !test.smpla, sym_name = "byref"}> ({
  ^bb0(%arg0: !test.smpla):
    "func.return"(%arg0) : (!test.smpla) -> ()
  }) : () -> ()
}) : () -> ()

