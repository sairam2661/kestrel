"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi32>, sym_name = "multiply_and_select"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: tensor<16xi8>):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi16>
    %2 = "arith.cmpi"(%0, %1) <{predicate = 7 : i64}> : (tensor<16xi32>, tensor<16xi16>) -> tensor<16xi1>
    %3 = "arith.select"(%2, %1, %0) : (tensor<16xi1>, tensor<16xi16>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%3) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 8 : i32} : () -> ()