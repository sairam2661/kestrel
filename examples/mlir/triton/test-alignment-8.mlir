"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "broadcast"}> ({
    %0 = "arith.constant"() <{value = dense<64> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<128xi32>) -> tensor<128x1xi32>
    %2 = "tt.broadcast"(%1) : (tensor<128x1xi32>) -> tensor<128x128xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

