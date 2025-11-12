"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i64, vector<32xi32>) -> (i32, i64), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: vector<32xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %3 = "arith.addi"(%arg1, %1) <{overflowFlags = #arithoverflownone}> : (i64, i64) -> i64
    %4 = "scf.for"(%2, %2, %3, %3) ({
    ^bb1(%arg3: i32, %arg4: i32):
      %5 = "scf.if"(%arg3) ({
        %6 = "arith.addi"(%arg4, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }, {
        %7 = "arith.subi"(%arg4, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (i32) -> i32
      "scf.yield"() : () -> ()
    }) : (i32, i32, i64, i64) -> i32
    %8 = "arith.addi"(%4, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    "tt.return"(%8, %3) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()