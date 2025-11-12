"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<3xi1>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "truth_table_select"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<3xi1>, %arg2: tensor<3xi32>):
    %0 = "comb.truth_table"() <{table = [0, 1, 1, 0]}> : () -> i32
    %1 = "arith.select"(%arg1, %arg2, %0) : (tensor<3xi1>, tensor<3xi32>, i32) -> tensor<3xi32>
    "func.return"(%1) : (tensor<3xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, tensor<2xi1>, tensor<2xi8>) -> tensor<2xi8>, sym_name = "mixed_truth_table_select"}> ({
  ^bb0(%arg3: i8, %arg4: tensor<2xi1>, %arg5: tensor<2xi8>):
    %2 = "comb.truth_table"() <{table = [0, 1, 1, 0]}> : () -> i8
    %3 = "arith.select"(%arg4, %arg5, %2) : (tensor<2xi1>, tensor<2xi8>, i8) -> tensor<2xi8>
    "func.return"(%3) : (tensor<2xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "nested_truth_table"}> ({
  ^bb0(%arg6: i32, %arg7: i32, %arg8: i32):
    %4 = "comb.truth_table"() <{table = [0, 1, 1, 0]}> : () -> i32
    %5 = "arith.addi"(%arg6, %arg7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "comb.truth_table"() <{table = [1, 0, 0, 1]}> : () -> i32
    %7 = "arith.select"(%arg0, %arg8, %6) : (i32, i32, i32) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()