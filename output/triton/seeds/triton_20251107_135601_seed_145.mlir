"builtin.module"() ({
  "tt.func"() <{function_type = (!tt_ptr, i32, tensor<10x10xi32>) -> (tensor<10x10xi32>), sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: !tt_ptr, %arg1: i32, %arg2: tensor<10x10xi32>):
      %0 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
      %1 = "tt.make_range"() <{start = 0 : i32, end = 10 : i32}> : () -> tensor<10xi32>
      %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %3 = "scf.if"(%0) ({
      ^bb1:
        %4 = "arith.addi"(%arg1, %2) : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> i32
      }) : (i32) -> i32
      %5 = "tt.expand_dims"(%1) <{axis = 1 : i32}> : (tensor<10xi32>) -> tensor<10x1xi32>
      %6 = "arith.select"(%0, %3, %arg1) : (i32, i32, i32) -> i32
      %7 = "tt.reduce"(%5) <{binary_op = "add"}> : (tensor<10x1xi32>) -> tensor<10xi32>
      %8 = "arith.muli"(%arg1, %arg2) : (i32, tensor<10x10xi32>) -> tensor<10x10xi32>
      "tt.return"(%8) : (tensor<10x10xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 2 : i32, ttg.target = "cuda:80"} : () -> ()