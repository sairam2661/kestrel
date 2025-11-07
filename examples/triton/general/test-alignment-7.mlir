"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "expanddims"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "tt.expand_dims"(%2) <{axis = 1 : i32}> : (tensor<128xi32>) -> tensor<128x1xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

