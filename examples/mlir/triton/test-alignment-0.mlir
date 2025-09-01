"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "cast"}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.extsi"(%0) : (i32) -> i64
    %2 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %3 = "tt.bitcast"(%2) : (tensor<128xi32>) -> tensor<128xi64>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

