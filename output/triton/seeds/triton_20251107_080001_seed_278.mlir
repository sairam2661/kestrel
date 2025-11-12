"builtin.module"() ({
  "tt.func"() <{function_type = (i32, vector<4xi32>) -> (i32, vector<4xi32>), sym_name = "complex_interaction", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: vector<4xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "tt.make_range"(%0, %1) : (i32, i32) -> !ttgMakeRange
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %5 = "arith.cmpi"(%arg0, %3) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.if"(%5) ({
      %6 = "arith.addi"(%arg0, %4) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %7 = "tt.reduce"(%arg1) ({
        ^bb0(%arg2: i32, %arg3: vector<4xi32>):
          %8 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (i32, vector<4xi32>) -> i32
          "scf.yield"(%8) : (i32) -> ()
      }) : (vector<4xi32>) -> i32
      "tt.return"(%6, %arg1) : (i32, vector<4xi32>) -> ()
    }, {
      "tt.return"(%arg0, %arg1) : (i32, vector<4xi32>) -> ()
    }) : (i1) -> ()
  }) : () -> ()
}) : () -> ()