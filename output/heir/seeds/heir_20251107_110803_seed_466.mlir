"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {}, {}], function_type = (i32, i32, i32) -> i32, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}>( ) : (i32, i32) -> i32
    %1 = "scf.if"(%arg2) ({
      ^bb1(%arg2: i32):
        %2 = "scf.if"(%arg2) ({
          ^bb2(%arg2: i32):
            %3 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflow_flags}>( ) : (i32, i32) -> i32
            "scf.yield"(%3) : (i32) -> ()
        }, {
          ^bb3:
            %4 = "arith.muli"(%arg2, %0) <{overflowFlags = #arith_overflow_flags}>( ) : (i32, i32) -> i32
            "scf.yield"(%4) : (i32) -> ()
        }) : (i32) -> i32
        "scf.yield"(%2) : (i32) -> ()
    }, {
      ^bb4:
        %5 = "arith.cmpi"(%arg2, %0, "eq") : (i32, i32) -> i1
        %6 = "scf.if"(%5) ({
          ^bb5:
            %7 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflow_flags}>( ) : (i32, i32) -> i32
            "scf.yield"(%7) : (i32) -> ()
        }, {
          ^bb6:
            %8 = "arith.muli"(%arg2, %0) <{overflowFlags = #arith_overflow_flags}>( ) : (i32, i32) -> i32
            "scf.yield"(%8) : (i32) -> ()
        }) : (i1) -> i32
        "scf.yield"(%6) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()