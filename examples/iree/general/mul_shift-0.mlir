"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_int_shifted"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[1, 0, 3, 4, 4]> : tensor<5xi32>}> : () -> tensor<5xi32>
    %1 = "util.unfoldable_constant"() <{value = dense<[5, 6, -3, 8, 8]> : tensor<5xi32>}> : () -> tensor<5xi32>
    %2 = "tosa.const"() <{values = dense<1> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.mul"(%0, %1, %2) : (tensor<5xi32>, tensor<5xi32>, tensor<1xi8>) -> tensor<5xi32>
    "check.expect_eq_const"(%3) <{value = dense<[3, 0, -4, 16, 16]> : tensor<5xi32>}> : (tensor<5xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

