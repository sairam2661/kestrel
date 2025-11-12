"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (i64, tensor<8xi32>) -> i32, sym_name = "complex_op"}> ({
  ^bb0(%arg0: i64, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "arith.muli"(%arg1, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    %3 = "arith.cmpi"(%1, %2) <{predicate = 1 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %4 = "arith.select"(%arg0, %3, %0) : (i64, tensor<8xi1>, tensor<8xi32>) -> tensor<8xi32>
    %5 = "tt.reduce"() <{op = "add"}> ({
    ^bb1(%arg2: i32):
      "scf.yield"(%arg2) : (i32) -> ()
    }) : (tensor<8xi32>) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> i32
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 2 : i32} : () -> ()