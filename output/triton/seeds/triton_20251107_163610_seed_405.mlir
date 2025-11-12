"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.constancy = 1 : i32, tt.contiguity = 2 : i32, tt.divisibility = 4 : i32}], function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %1 = "arith.xori"(%0, %arg0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "arith.subi"(%1, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "arith.remsi"(%2, %arg0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %4 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    %5 = "arith.select"(%3, %4, %2) : (tensor<8xi32>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %6 = "arith.muli"(%5, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %7 = "tt.reduce"() <{operation = #ttplus}>({^bb1(%acc: i32, %val: i32):
      %acc_val = "arith.addi"(%acc, %val) : (i32, i32) -> i32
      "scf.yield"(%acc_val) : (i32) -> ()
    }) : (tensor<8xi32>) -> i32
    "tt.return"(%6) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()