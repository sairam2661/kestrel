"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, vector<3xi32>) -> (i32, f32, vector<3xi32>), sym_name = "stress_test"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: vector<3xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "llvm.mlir.constant"() <{value = {i32  = [1, 2, 3]} }> : () -> vector<3xi32>
    %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %4 = "arith.cmpi"(%arg0, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %5:2 = "scf.if"(%4) ({
      ^bb0(%arg3: i1):
        %6 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %7 = "arith.cmpf"(%arg1, %1) <{predicate = 0 : i64}> : (f32, f32) -> i1
        %8 = "arith.cmpi"(%arg3, %7) <{predicate = 1 : i64}> : (i1, i1) -> i1
        "scf.yield"(%6, %8) : (i32, i1) -> ()
    }, {
      ^bb0(%arg4: i1):
        %9 = "arith.subi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %10 = "arith.cmpf"(%arg1, %1) <{predicate = 1 : i64}> : (f32, f32) -> i1
        %11 = "arith.cmpi"(%arg4, %10) <{predicate = 1 : i64}> : (i1, i1) -> i1
        "scf.yield"(%9, %11) : (i32, i1) -> ()
    }) : (i32, i1) -> (i32, i1)
    %12 = "arith.addi"(%5#0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %13 = "arith.addf"(%3, %2) : (f32, vector<3xi32>) -> f32
    "func.return"(%12, %13, %2) : (i32, f32, vector<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()