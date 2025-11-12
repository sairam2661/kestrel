"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>) -> tensor<i32>, sym_name = "complex_reduction_example"}> ({
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "tt.make_range"(%0, %1, %0) <{step = 1 : i32}> : (i32, i32, i32) -> tensor<i32>
    %3 = "tt.reduce"(%2) <{operation = "add", reduction_type = tensor<i32>}> ({
      ^bb0(%arg0: i32, %arg1: i32):
        %4 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> tensor<i32>
    }) : (tensor<i32>) -> tensor<i32>
    "tt.return"(%3) : (tensor<i32>) -> ()
  }) : (tensor<i32>) -> ()
}) : () -> ()