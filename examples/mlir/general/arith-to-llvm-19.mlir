"builtin.module"() ({
  "func.func"() <{function_type = (i3) -> (), sym_name = "integer_extension_and_truncation"}> ({
  ^bb0(%arg0: i3):
    %0 = "arith.extsi"(%arg0) : (i3) -> i6
    %1 = "arith.extui"(%arg0) : (i3) -> i6
    %2 = "arith.trunci"(%arg0) <{overflowFlags = #arith.overflow<none>}> : (i3) -> i2
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

