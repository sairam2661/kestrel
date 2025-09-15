"builtin.module"() ({
  "tt.func"() <{function_type = () -> (tensor<128x1xi32>, tensor<1xi32>), sym_name = "make_range"}> ({
    %0 = "tt.make_range"() <{end = 1 : i32, start = 0 : i32}> : () -> tensor<1xi32>
    %1 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<1xi32>) -> tensor<1x1xi32>
    %2 = "tt.broadcast"(%1) : (tensor<1x1xi32>) -> tensor<128x1xi32>
    %3 = "tt.make_range"() <{end = 2 : i32, start = 1 : i32}> : () -> tensor<1xi32>
    "tt.return"(%2, %3) : (tensor<128x1xi32>, tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

