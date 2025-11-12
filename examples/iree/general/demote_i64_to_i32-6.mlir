"builtin.module"() ({
  "util.func"() <{function_type = () -> tensor<1xi64>, sym_name = "custom_constant_i64", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "custom.constant"() : () -> tensor<1xi64>
    "util.return"(%0) : (tensor<1xi64>) -> ()
  }) : () -> ()
}) : () -> ()

