"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}], function_type = (i32, i32) -> (i32), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %5 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %6 = "arith.select"(%5, %0, %1) : (i1, i32, i32) -> i32
    "scf.if"(%5) ({
      %7 = "scf.for"(%arg0, %arg1, %6) ({
      ^bb0(%arg2: i32):
        %8 = "arith.addi"(%arg2, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%8) : (i32) -> ()
      }) : (i32, i32, i32) -> ()
      "scf.yield"() : () -> ()
    }, {
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()