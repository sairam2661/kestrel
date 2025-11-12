"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_func"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_wrap}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %3 = "scf.if"(%2) ({
    ^bb1:
      %4 = "arith.subi"(%1, %0) <{overflowFlags = #arith_overflow_mode_wrap}> : (i32, i32) -> i32
      %5 = "tt.expand_dims"(%4) <{axis = 0 : i64}> : (i32) -> tensor<1xi32>
      "scf.yield"(%5) : (tensor<1xi32>) -> ()
    }) {
    } : (i1) -> (tensor<1xi32>)
    %6 = "tt.reduce"(%3) <{reduction = #tt_reduction_add}> : (tensor<1xi32>) -> i32
    %7 = "tt.call"() <{"func" = @simple_func}> : () -> i32
    %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflow_mode_wrap}> : (i32, i32) -> i32
    "tt.return"(%8, %6) : (i32, i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> (i32), sym_name = "simple_func"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    "tt.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()