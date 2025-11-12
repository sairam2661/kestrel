"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32, f32) -> (i8, i32, f32), sym_name = "test_complex_op_sequence"}> ({
  ^bb0(%arg0: i8, %arg1: i32, %arg2: f32):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = "ne"}> : (i8, i32) -> i1
    %1 = "arith.cmpf"(%arg2, %arg0) <{predicate = "lt"}> : (f32, i8) -> i1
    %2 = "arith.addf"(%arg2, %arg2) : (f32, f32) -> f32
    %3 = "scf.if"(%0) ({
      ^bb1(%arg3: i8, %arg4: i32):
        "scf.yield"(%arg3, %arg4) : (i8, i32) -> (i8, i32)
    }, {
      ^bb2(%arg5: i8, %arg6: i32):
        %4 = "arith.addi"(%arg5, %arg6) : (i8, i32) -> i32
        "scf.yield"(%arg5, %4) : (i8, i32) -> (i8, i32)
    }) : (i8, i32) -> (i8, i32)
    "func.return"(%3#0, %3#1, %2) : (i8, i32, f32) -> ()
  }) : () -> ()
}) : () -> ()