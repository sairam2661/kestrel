"builtin.module"() ({
  "util.func"() <{function_type = () -> tensor<1xui64>, sym_name = "custom_constant_ui64", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "custom.constant"() : () -> tensor<1xui64>
    "util.return"(%0) : (tensor<1xui64>) -> ()
  }) : () -> ()
}) : () -> ()

