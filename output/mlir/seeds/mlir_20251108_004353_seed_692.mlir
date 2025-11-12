"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, vector<4xi16>) -> (i32, f32), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: vector<4xi16>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.const"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addf"(%1, %1) : (f32, f32) -> f32
    %3 = "arith.cmpi"(%0, %arg0, "eq") : (i32, i32) -> i1
    %4 = "arith.cmpf"(%2, %1, "ne") : (f32, f32) -> i1
    %5 = "scf.if"(%3) ({
    ^bb0:
      %6 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
    ^bb1:
      %7 = "arith.subi"(%arg0, %arg0) : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%5, %2) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()