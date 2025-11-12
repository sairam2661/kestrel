"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_reduce_and_expand"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "tt.make_range"() <{end = 4 : i32, start = 0 : i32}> : () -> tensor<4xi32>
    %1 = "tt.reduce"(%0, %arg0, %arg1) <{operation = "add"}> : (tensor<4xi32>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %2 = "tt.expand_dims"(%1) <{axis = 1 : i32}> : (tensor<4xi32>) -> tensor<4x1xi32>
    %3 = "arith.subi"(%2, %2) : (tensor<4x1xi32>, tensor<4x1xi32>) -> tensor<4x1xi32>
    "tt.return"(%3) : (tensor<4x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()