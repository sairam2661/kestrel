"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.contiguity = 4 : i32, tt.divisibility = 16 : i32, tt.constancy = 8 : i32}], function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_math"}> ({
    ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %1 = "arith.muli"(%0, %arg0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %2 = "arith.subi"(%arg1, %0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %3 = "arith.remsi"(%1, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %4 = "arith.xori"(%2, %3) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %5 = "arith.select"(%4, %0, %1) : (tensor<8xi32>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      "tt.return"(%5) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()