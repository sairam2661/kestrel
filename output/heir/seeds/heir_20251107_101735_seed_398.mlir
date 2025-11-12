"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_logic"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.cmpi"("slt", %arg0, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i1
    %2 = "arith.cmpi"("slt", %arg1, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i1
    %3 = "arith.cmpi"("slt", %arg2, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i1
    %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %5 = "arith.addi"(%4, %arg2) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %6 = "scf.if"(%1) ({
      ^bb1:
        %7 = "scf.if"(%2) ({
          ^bb2:
            %8 = "scf.if"(%3) ({
              ^bb3:
                "scf.yield"(%5) : (i32) -> ()
            }, {
              "scf.yield"(%0) : (i32) -> ()
            }) : (i1) -> i32
          "scf.yield"(%8) : (i32) -> ()
        }, {
          "scf.yield"(%0) : (i32) -> ()
        }) : (i1) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }, {
      "scf.yield"(%0) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()