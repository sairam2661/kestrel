"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> (i32, i32), sym_name = "complex_nested_ifs"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg2, "slt") : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
      %3 = "arith.addi"(%arg2, %arg0) : (i32, i32) -> i32
      %4 = "arith.cmpi"(%3, %arg1, "slt") : (i32, i32) -> i1
      %5 = "scf.if"(%4) ({
        %6 = "arith.addi"(%arg1, %arg2) : (i32, i32) -> i32
        "scf.yield"(%6, %arg0) : (i32, i32) -> ()
      }, {
        %7 = "arith.addi"(%arg2, %arg1) : (i32, i32) -> i32
        "scf.yield"(%7, %arg0) : (i32, i32) -> ()
      }) : (i1) -> (i32, i32)
      "scf.yield"(%5#0, %5#1) : (i32, i32) -> ()
    }, {
      %8 = "arith.addi"(%arg1, %arg0) : (i32, i32) -> i32
      %9 = "arith.cmpi"(%8, %arg2, "slt") : (i32, i32) -> i1
      %10 = "scf.if"(%9) ({
        %11 = "arith.addi"(%arg2, %arg1) : (i32, i32) -> i32
        %12 = "arith.cmpi"(%11, %arg0, "slt") : (i32, i32) -> i1
        %13 = "scf.if"(%12) ({
          %14 = "arith.addi"(%arg0, %arg2) : (i32, i32) -> i32
          "scf.yield"(%14, %arg1) : (i32, i32) -> ()
        }, {
          %15 = "arith.addi"(%arg1, %arg2) : (i32, i32) -> i32
          "scf.yield"(%15, %arg1) : (i32, i32) -> ()
        }) : (i1) -> (i32, i32)
        "scf.yield"(%13#0, %13#1) : (i32, i32) -> ()
      }, {
        %16 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%16, %arg1) : (i32, i32) -> ()
      }) : (i1) -> (i32, i32)
      "scf.yield"(%10#0, %10#1) : (i32, i32) -> ()
    }) : (i1) -> (i32, i32)
    "func.return"(%2#0, %2#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()