"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_div"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg1, %0, "eq") <{result = 1 : i1}> : (i32, i32, i1) -> i1
    %2 = "arith.select"(%1, %arg0, %arg1) <{result = 1 : i32}> : (i1, i32, i32) -> i32
    %3 = "arith.divsi"(%arg0, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%3) : (i32) -> i32
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "nested_reduce"}> ({
  ^bb0(%arg2: i32):
    %4 = "tt.make_range"() <{start = 0 : i32, end = 1024 : i32}> : () -> tensor<1024xi32>
    %5 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %6:3 = "tt.reduce"(%4, %5) ({
    ^bb1(%acc: i32, %val: i32):
      %7 = "arith.addi"(%acc, %val) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> i32
    }) : (i32, tensor<1024xi32>) -> i32
    "tt.return"(%6) : (i32) -> i32
  }) : () -> ()
  "tt.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %8 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %9 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %10 = "tt.call"(%8, %9) <{callee = @complex_div}> : (i32, i32) -> i32
    %11 = "tt.call"(%10) <{callee = @nested_reduce}> : (i32) -> i32
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()