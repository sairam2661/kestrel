"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "ub_poison"}> ({
    %0 = "ub.poison"() <{value = #ub.poison}> : () -> tensor<128x64xf16>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

