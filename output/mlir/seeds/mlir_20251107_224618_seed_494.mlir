"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> i1, sym_name = "mixed_types_and_logic"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %2 = "arith.cmpi"(%0, %arg0) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %3 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %4 = "arith.cmpf"(%3, %arg1) <{predicate = 6 : i64}> : (f32, f32) -> i1
    %5 = "arith.cmpf"(%3, %arg1) <{predicate = 7 : i64}> : (f32, f32) -> i1
    %6 = "arith.andi"(%1, %2) : (i1, i1) -> i1
    %7 = "arith.ori"(%4, %5) : (i1, i1) -> i1
    "func.return"(%6) : (i1) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_loops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "scf.for"(%arg0) ({
    ^bb0(%arg2: i32):
      %3 = "arith.addi"(%arg2, %arg1) : (i32, i32) -> i32
      %4 = "scf.for"(%arg2) ({
      ^bb0(%arg3: i32):
        %5 = "arith.addi"(%arg3, %arg1) : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }) : (i32) -> ()
      "scf.yield"(%4) : (i32) -> ()
    }) : (i32) -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.subf"(%arg0, %arg1) : (f32, f32) -> f32
    %2 = "arith.mulf"(%arg0, %arg1) : (f32, f32) -> f32
    %3 = "arith.divf"(%arg0, %arg1) : (f32, f32) -> f32
    %4 = "arith.addf"(%0, %1) : (f32, f32) -> f32
    %5 = "arith.subf"(%2, %3) : (f32, f32) -> f32
    "func.return"(%5) : (f32) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "bitwise_operations"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.andi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.ori"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.shli"(%arg0, %arg1) : (i32, i32) -> i32
    %4 = "arith.shri"(%arg0, %arg1) : (i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "conditional_logic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %1 = "scf.if"(%0) ({
      "scf.yield"(%arg0) : (i32) -> ()
    }) {
      "scf.yield" = "scf.if" : () -> i32
    } : (i32) -> ()
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()