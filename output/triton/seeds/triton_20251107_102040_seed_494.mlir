"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_nested_loops"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "scf.for"(%2, %0, %1) ({
    ^bb1(%arg1: i32):
      %3 = "arith.addi"(%arg1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.if"(%arg1) ({
        "scf.for"(%2, %0, %1) ({
        ^bb2(%arg2: i32):
          %4 = "arith.remsi"(%arg2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          %5 = "arith.cmpi"(%4, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
          %6 = "arith.select"(%5, %3, %arg2) : (i1, i32, i32) -> i32
          "scf.yield"(%6) : (i32) -> ()
        }) : (i32, i32, i32) -> i32
        "scf.yield"() : () -> ()
      }, {
        "scf.yield"() : () -> ()
      }) : (i1) -> ()
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    %7 = "tt.reduce"(%arg0, %1) ({
    ^bb3(%arg3: i32, %arg4: i32):
      %8 = "arith.cmpi"(%arg3, %arg4) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %9 = "arith.select"(%8, %arg3, %arg4) : (i1, i32, i32) -> i32
      "scf.yield"(%9) : (i32) -> ()
    }) : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> i32
}) : () -> ()