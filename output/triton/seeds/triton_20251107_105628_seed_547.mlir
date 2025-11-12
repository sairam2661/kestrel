"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> i32, sym_name = "reduce_and_add"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "tt.reduce"(%arg0) : (tensor<4xi32>) -> i32
    %1 = "tt.reduce"(%arg1) : (tensor<4xi32>) -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    "tt.return"(%2) : (i32) -> ()
  }) : (tensor<4xi32>, tensor<4xi32>) -> i32
  "tt.func"() <{function_type = () -> tensor<4xi32>, sym_name = "generate_tensor"}> ({
  ^bb0():
    %0 = "tt.make_range"() <{end = 4 : i32, start = 0 : i32}> : () -> tensor<4xi32>
    "tt.return"(%0) : (tensor<4xi32>) -> ()
  }) : () -> tensor<4xi32>
  "tt.func"() <{function_type = () -> i32, sym_name = "main"}> ({
  ^bb0():
    %0 = "tt.call"() <{callee = @generate_tensor}> : () -> tensor<4xi32>
    %1 = "tt.call"() <{callee = @generate_tensor}> : () -> tensor<4xi32>
    %2 = "tt.call"(%0, %1) <{callee = @reduce_and_add}> : (tensor<4xi32>, tensor<4xi32>) -> i32
    "tt.return"(%2) : (i32) -> ()
  }) : () -> i32
}) : () -> ()