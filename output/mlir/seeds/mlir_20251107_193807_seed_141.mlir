"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %2 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %arg1) <{fastmath = #arith_fastmath_none}> : (f32, f32) -> f32
    "scf.if"(%arg0) ({
    ^bb1:
      %4 = "arith.cmpi"(%arg0, %arg0) <{predicate = 4}> : (i32, i32) -> i1
      "scf.yield"() : () -> ()
    })  : () -> ()
    "func.return"(%2, %3) : (i32, f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index) -> index, sym_name = "index_operations"}> ({
  ^bb0(%arg0: index):
    %2 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_none}> : (index, index) -> index
    "scf.for"(%arg0, %arg0, %arg0, %arg0) ({
    ^bb1(%arg2: index, %arg3: index):
      %4 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arith_overflow_none}> : (index, index) -> index
      "scf.yield"(%4) : (index) -> ()
    }) : (index, index, index, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()