"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<1x2xi8>) -> (i32, f32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<1x2xi8>):
    %0 = "tosa.const"() <{value = 42}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.const"() <{value = 0.5 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "arith.cmpi"(%arg0, %0, "eq") : (i32, i32) -> i1
    %5 = "scf.for"(%arg0) <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %6 = "arith.addi"(%iv, %iv) : (index, index) -> index
      "scf.yield"(%6) : (index) -> ()
    }) : (index) -> ()
    %7 = "func.call"() <{callee = @simple_func, arguments = []}> : () -> ()
    "func.return"(%1, %3) : (i32, f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "simple_func"}> ({
  ^bb2:
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()