"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.constancy = 0 : i32, tt.contiguity = 1 : i32, tt.divisibility = 1 : i32}, {tt.constancy = 0 : i32, tt.contiguity = 2 : i32, tt.divisibility = 2 : i32}], function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "xor_and_cmp_pattern"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
      %0 = "arith.constant"() <{value = dense<42> : tensor<4xi32>}> : () -> tensor<4xi32>
      %1 = "arith.xori"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %2 = "arith.addi"(%0, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %3 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %4 = "arith.muli"(%2, %3) : (tensor<4xi32>, i32) -> tensor<4xi32>
      %5 = "arith.cmpi"(%4, %0, "eq") : (tensor<4xi32>, tensor<4xi32>) -> tensor<1xi1>
      %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %7 = "arith.select"(%5, %4, %6) : (tensor<1xi1>, tensor<4xi32>, i32) -> tensor<4xi32>
      "tt.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()