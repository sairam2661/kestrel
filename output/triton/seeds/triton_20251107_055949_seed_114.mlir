"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_math"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %3 = "arith.cmpi"(%2, %1, "sgt") <{predicate = "sgt"}> : (i32, i32) -> i1
      %4 = "arith.select"(%3, %2, %0) <{predicate = "sgt"}> : (i1, i32, i32) -> i32
      %5 = "arith.divsi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %6 = "arith.remsi"(%4, %1) : (i32, i32) -> i32
      "scf.if"(%3) ({
        %7 = "arith.xori"(%5, %6) : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }, {
        "scf.yield"(%6) : (i32) -> ()
      }) : (i1) -> i32
      "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()