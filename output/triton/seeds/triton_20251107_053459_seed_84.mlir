"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_computation"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.cmpi"(%0, %1, "slt") : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %3 = "arith.select"(%2, %0, %1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.muli"(%3, %3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.xori"(%4, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "scf.for"() <{lower_bound = 0 : i32, upper_bound = 16 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      %7 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %8 = "arith.addi"(%iv, %7) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (i32) -> ()
    "tt.return"(%5) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()