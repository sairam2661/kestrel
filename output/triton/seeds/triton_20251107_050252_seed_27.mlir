"builtin.module"() ({
  "tt.func"() <{function_type = () -> i32, sym_name = "mixed_operations"}> ({
    %0 = "arith.constant"() <{value = 64 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.divsi"(%0, %1) : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.remsi"(%4, %1) : (i32, i32) -> i32
    %6 = "arith.addi"(%5, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.subi"(%6, %1) : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> (), sym_name = "control_flow"}> ({
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "scf.for"() <{lb = 0 : i32, ub = 10 : i32, step = 1 : i32}> ({
      ^bb0(%iv: i32):
        %4 = "arith.addi"(%iv, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %5 = "arith.cmpi"(%4, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
        "scf.if"(%5) ({
          "scf.yield"() : () -> ()
        }, {
          "scf.yield"() : () -> ()
        }) : (i1) -> ()
        "scf.yield"() : () -> ()
    }) : () -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()