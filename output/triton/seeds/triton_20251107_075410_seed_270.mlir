"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "reduce_and_expand", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "tt.reduce"(%arg0) <{operation = "max", dimensions = [0 : i64]}> : (tensor<i32>) -> tensor<i32>
    %1 = "tt.reduce"(%arg1) <{operation = "min", dimensions = [0 : i64]}> : (tensor<i32>) -> tensor<i32>
    %2 = "arith.subi"(%0, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %3 = "tt.expand_dims"(%2) <{dimensions = [0 : i64]}> : (tensor<i32>) -> tensor<1x1xi32>
    "tt.return"(%3) : (tensor<1x1xi32>) -> ()
  }) : (tensor<i32>, tensor<i32>) -> tensor<1x1xi32>
}) : () -> ()