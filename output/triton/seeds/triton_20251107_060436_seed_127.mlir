"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}, {tt.divisibility = 8 : i32}, {}], function_type = (i32, i32, i32) -> i32, sym_name = "nested_for_reduce"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "tt.make_range"() <{end = 10 : i32, start = 0 : i32}> : () -> tensor<10xi32>
    %2 = "tt.reduce"(%1) <{axis = 0 : i32}> ({
    ^bb0(%arg3: i32, %arg4: i32):
      %5 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "tt.reduce.return"(%5) : (i32) -> ()
    }) : (tensor<10xi32>) -> i32
    %3 = "scf.for"(%arg0, %arg2, %arg1) ({
    ^bb0(%arg5: i32):
      %6 = "arith.subi"(%arg5, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    "tt.return"(%2) : (i32) -> i32
  }) : () -> i32
}) : () -> ()
