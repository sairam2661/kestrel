"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> (), sym_name = "cstr_require_no_fold"}> ({
  ^bb0(%arg0: i1):
    %0 = "shape.cstr_require"(%arg0) <{msg = "msg"}> : (i1) -> !shape.witness
    "consume.witness"(%0) : (!shape.witness) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

