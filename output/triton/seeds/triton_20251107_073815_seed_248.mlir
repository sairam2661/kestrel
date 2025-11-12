"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<32> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.addi"(%arg0, %0) : (tensor<i32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.muli"(%arg1, %1) : (tensor<i32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.remsi"(%2, %3) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "scf.for"(%0) <{lower_bound = 0 : i32, upper_bound = 64 : i32, step = 1 : i32}> ({
      ^bb1(%iv: index):
        %6 = "arith.constant"() <{value = true}> : () -> i1
        %7 = "arith.select"(%6, %arg0, %arg1) : (i1, tensor<i32>, tensor<i32>) -> tensor<i32>
        "scf.yield"() : () -> ()
    }) : (tensor<i32>) -> tensor<i32>
    %8 = "tt.reduce"(%4) ({
      ^bb2(%acc: tensor<i32>, %elem: tensor<i32>):
        %9 = "arith.addi"(%acc, %elem) : (tensor<i32>, tensor<i32>) -> tensor<i32>
        "scf.yield"(%9) : (tensor<i32>) -> tensor<i32>
    }) : (tensor<i32>) -> tensor<i32>
    "tt.return"(%8) : (tensor<i32>) -> ()
  }) : () -> (tensor<i32>)
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()