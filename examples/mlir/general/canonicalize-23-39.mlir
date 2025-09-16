"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "cstr_require_fold"}> ({
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "shape.cstr_require"(%0) <{msg = "msg"}> : (i1) -> !shape.witness
    "consume.witness"(%1) : (!shape.witness) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

