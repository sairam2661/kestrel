"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (i32, i32) -> i32, sym_name = "complex_op_combination"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.xori"(%0, %2) : (i32, i32) -> i32
    %4 = "arith.muli"(%1, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.remsi"(%4, %arg1) : (i32, i32) -> i32
    %6 = "arith.subi"(%5, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.cmpi"(%6, %1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %8 = "arith.select"(%7, %6, %arg0) : (i1, i32, i32) -> i32
    %9 = "tt.make_range"() <{start = 0 : i32, end = 100 : i32}> : () -> tensor<100xi32>
    %10 = "arith.constant"() <{value = dense<5> : tensor<100xi32>}> : () -> tensor<100xi32>
    %11 = "arith.xori"(%9, %10) : (tensor<100xi32>, tensor<100xi32>) -> tensor<100xi32>
    %12 = "tt.reduce"() <{operation = #tt_reduce_add}> ({
      ^bb1(%acc: i32, %val: i32):
        %13 = "arith.addi"(%acc, %val) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "tt.yield"(%13) : (i32) -> ()
    }) : (tensor<100xi32>) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : () -> i32
}) {"ttg.num-warps" = 16 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()