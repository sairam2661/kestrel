"builtin.module"() ({
  "func.func"() <{function_type = () -> index, sym_name = "arm_sme_streaming_vl_double_words"}> ({
    %0 = "arm_sme.streaming_vl"() <{type_size = #arm_sme.type_size<double>}> : () -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

