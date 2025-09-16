"builtin.module"() ({
  "func.func"() <{function_type = (i1, i32, i32) -> i32, sym_name = "select"}> ({
  ^bb0(%arg3: i1, %arg4: i32, %arg5: i32):
    %1 = "arith.select"(%arg3, %arg4, %arg5) : (i1, i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1, complex<f32>, complex<f32>) -> complex<f32>, sym_name = "select_complex"}> ({
  ^bb0(%arg0: i1, %arg1: complex<f32>, %arg2: complex<f32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (i1, complex<f32>, complex<f32>) -> complex<f32>
    "func.return"(%0) : (complex<f32>) -> ()
  }) : () -> ()
}) : () -> ()

