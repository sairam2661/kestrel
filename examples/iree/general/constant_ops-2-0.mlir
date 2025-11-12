"builtin.module"() ({
  "util.func"() <{function_type = () -> (), sym_name = "constantTensor", sym_visibility = "public"}> ({
    %0 = "arith.constant"() <{value = dense<[1, 2]> : tensor<2xi32>}> : () -> tensor<2xi32>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

