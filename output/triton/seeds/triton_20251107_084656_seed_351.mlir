"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "tt.make_range"() <{end = 1024 : i32, start = 0 : i32}> : () -> tensor<1024xi32>
    %1 = "tt.make_range"() <{end = 2048 : i32, start = 1024 : i32}> : () -> tensor<1024xi32>
    %2 = "tt.addptr"(%arg0, %0) : (tensor<i32>, tensor<1024xi32>) -> tensor<1024xi32>
    %3 = "tt.addptr"(%arg1, %1) : (tensor<i32>, tensor<1024xi32>) -> tensor<1024xi32>
    %4 = "tt.reduce"(%2, %3) <{operation = "add", init = dense<0> : tensor<i32>}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<i32>
    %5 = "tt.expand_dims"(%4) <{dim = 1 : i32}> : (tensor<i32>) -> tensor<1xi32>
    "tt.return"(%5) : (tensor<1xi32>) -> ()
  }) : (tensor<i32>, tensor<i32>) -> tensor<1xi32>
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 16 : i32} : () -> ()