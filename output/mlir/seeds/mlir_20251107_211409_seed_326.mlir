"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> i32, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowMode}>: (i32, i64) -> i32
    "scf.if"(%0) ({
      ^bb1(%arg2: i32):
        "scf.for"() <{lowerBound = 0 : index, upperBound = 10 : index, step = 1 : index}> ({
        ^bb2(%indvar: index):
          %1 = "arith.addi"(%arg2, %indvar) <{overflowFlags = #arith_overflowMode}>: (i32, index) -> i32
          "scf.yield"() : () -> ()
        }) : () -> ()
        "scf.yield"() : () -> ()
      }, {
      ^bb3(%arg3: i32):
        "scf.yield"() : () -> ()
      }) : (i32) -> ()
    }, {
    ^bb4(%arg4: i32):
      "scf.yield"() : () -> ()
    }) : (i32) -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
  "func.func"()  ({
  ^bb5():
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() ({
  ^bb6(%arg5: i32):
    "func.return"(%arg5) : (i32) -> ()
  }) : () -> ()
  "func.func"() ({
  ^bb7(%arg6: i32):
    %2 = "arith.addf"(%arg6, %arg6) : (i32, i32) -> f32
    "scf.if"(%2) ({
    ^bb8(%arg7: f32):
      "scf.yield"() : () -> ()
    }, {
    ^bb9(%arg8: f32):
      "scf.yield"() : () -> ()
    }) : (f32) -> ()
    "func.return"(%arg6) : (i32) -> ()
  }) : () -> ()
  "func.func"() ({
  ^bb10(%arg9: i32):
    %3 = "arith.cmpi"(%arg9, %arg9, "eq") : (i32, i32) -> i1
    "scf.if"(%3) ({
    ^bb11(%arg10: i1):
      "scf.yield"() : () -> ()
    }, {
    ^bb12(%arg11: i1):
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%arg9) : (i32) -> ()
  }) : () -> ()
  "func.func"() ({
  ^bb13(%arg12: f32, %arg13: f32):
    %4 = "arith.addf"(%arg12, %arg13) : (f32, f32) -> f32
    "scf.if"(%4) ({
    ^bb14(%arg14: f32):
      "scf.yield"() : () -> ()
    }, {
    ^bb15(%arg15: f32):
      "scf.yield"() : () -> ()
    }) : (f32) -> ()
    "func.return"(%arg12) : (f32) -> ()
  }) : () -> ()
  "func.func"() ({
  ^bb16(%arg16: f32, %arg17: f32):
    %5 = "arith.cmpf"(%arg16, %arg17, "eq") : (f32, f32) -> i1
    "scf.if"(%5) ({
    ^bb17(%arg18: i1):
      "scf.yield"() : () -> ()
    }, {
    ^bb18(%arg19: i1):
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%arg16) : (f32) -> ()
  }) : () -> ()
  "func.func"() ({
  ^bb19(%arg20: i32):
    %6 = "scf.for"() <{lowerBound = 0 : index, upperBound = 5 : index, step = 1 : index}> ({
    ^bb20(%indvar2: index):
      %7 = "arith.addi"(%arg20, %indvar2) <{overflowFlags = #arith_overflowMode}>: (i32, index) -> i32
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%arg20) : (i32) -> ()
  }) : () -> ()
  "func.func"() ({
  ^bb21(%arg21: i32):
    %8 = "scf.for"() <{lowerBound = 0 : index, upperBound = 5 : index, step = 1 : index}> ({
    ^bb22(%indvar3: index):
      %9 = "arith.addi"(%arg21, %indvar3) <{overflowFlags = #arith_overflowMode}>: (i32, index) -> i32
      "scf.yield"() : () -> ()
    }) : () -> ()
    "scf.for"() <{lowerBound = 0 : index, upperBound = 3 : index, step = 1 : index}> ({
    ^bb23(%indvar4: index):
      %10 = "arith.addi"(%9, %indvar4) <{overflowFlags = #arith_overflowMode}>: (i32, index) -> i32
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%arg21) : (i32) -> ()
  }) : () -> ()
  "func.func"() ({
  ^bb24(%arg22: i32):
    %11 = "scf.for"() <{lowerBound = 0 : index, upperBound = 5 : index, step = 1 : index}> ({
    ^bb25(%indvar5: index):
      %12 = "scf.for"() <{lowerBound = 0 : index, upperBound = 3 : index, step = 1 : index}> ({
      ^bb26(%indvar6: index):
        %13 = "arith.addi"(%arg22, %indvar5) <{overflowFlags = #arith_overflowMode}>: (i32, index) -> i32
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "scf.for"() <{lowerBound = 0 : index, upperBound = 2 : index, step = 1 : index}> ({
    ^bb27(%indvar7: index):
      %14 = "arith.addi"(%13, %indvar7) <{overflowFlags = #arith_overflowMode}>: (i32, index) -> i32
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%arg22) : (i32) -> ()
  }) : () -> ()
  "func.func"() ({
  ^bb28(%arg23: i32):
    %15 = "arith.addi"(%arg23, %arg23) <{overflowFlags = #arith_overflowMode}>: (i32, i32) -> i32
    "scf.if"(%15) ({
    ^bb29(%arg30: i32):
      "scf.yield"() : () -> ()
    }, {
    ^bb30(%arg31: i32):
      "scf.yield"() : () -> ()
    }) : (i32) -> ()
    "func.return"(%arg31) : (i32) -> ()
  }) : () -> ()
  "func.func"() ({
  ^bb31(%arg32: i32):
    %16 = "arith.addi"(%arg32, %arg32) <{overflowFlags = #arith_overflowMode}>: (i32, i32) -> i32
    "scf.if"(%16) ({
    ^bb32(%arg33: i32):
      "scf.yield"() : () -> ()
    }, {
    ^bb33(%arg34: i32