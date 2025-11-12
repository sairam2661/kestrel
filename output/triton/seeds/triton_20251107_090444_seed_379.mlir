"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_mix"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %c5_i32 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %c6_i32 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %c7_i32 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %c8_i32 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %c9_i32 = "arith.constant"() <{value = 9 : i32}> : () -> i32
    %c10_i32 = "arith.constant"() <{value = 10 : i32}> : () -> i32

    %cmp0 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %select0 = "arith.select"(%cmp0, %arg0, %arg1) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>

    %add0 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %xor0 = "arith.xori"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %rem0 = "arith.remsi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>

    %add1 = "arith.addi"(%add0, %xor0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %xor1 = "arith.xori"(%xor0, %rem0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %rem1 = "arith.remsi"(%rem0, %add0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>

    %add2 = "arith.addi"(%add1, %xor1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %xor2 = "arith.xori"(%xor1, %rem1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %rem2 = "arith.remsi"(%rem1, %add1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>

    %select1 = "arith.select"(%cmp0, %select0, %add2) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>

    "tt.return"(%select1) : (tensor<4xi32>) -> ()
  }) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
}) : () -> ()