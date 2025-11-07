"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (), sym_name = "test_5122", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.if"(%1) ({
      %2 = "scf.if"(%1) ({
        "scf.yield"(%0) : (i32) -> ()
      }, {
        "scf.yield"(%0) : (i32) -> ()
      }) : (i1) -> i32
      %3 = "arith.cmpi"(%2, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %4 = "scf.if"(%3) ({
        "scf.yield"(%0) : (i32) -> ()
      }, {
        "scf.yield"(%0) : (i32) -> ()
      }) : (i1) -> i32
      %5 = "scf.for"(%2, %2, %0, %4) ({
      ^bb0(%arg1: i32, %arg2: i32):
        %6 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }) : (i32, i32, i32, i32) -> i32
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

