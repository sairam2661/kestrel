"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, vector<4xi8>) -> (i32, f32, vector<4xi8>), sym_name = "complexOperation"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: vector<4xi8>):
    %0 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    %1 = "arith.cmpf"(%arg1, %arg1) <{predicate = "oeq"}> : (f32, f32) -> i1
    %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %3 = "scf.if"(%0) ({
    ^bb1(%arg3: i1):
      %4 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }, {
    ^bb2(%arg4: i1):
      %5 = "arith.subi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i1) -> (i32)
    %6 = "scf.if"(%1) ({
    ^bb3(%arg5: i1):
      %7 = "arith.mulf"(%arg2, %arg2) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
      "scf.yield"(%7) : (vector<4xi8>) -> ()
    }, {
    ^bb4(%arg6: i1):
      %8 = "arith.divf"(%arg1, %arg1) : (f32, f32) -> f32
      "scf.yield"(%8) : (f32) -> ()
    }) : (i1) -> (vector<4xi8>)
    "func.return"(%3, %2, %6) : (i32, f32, vector<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()