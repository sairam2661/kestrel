"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.cmpi"(%0, %0) <{predicate = "eq"}> : (i32, i32) -> i1
      "scf.if"(%1) ({
      ^bb1:
        %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
        "scf.yield"() : () -> ()
      }) : (i1) -> ()
      %3 = "arith.addf"(%arg0, %arg1) : (i32, i32) -> f32
      %4 = "arith.cmpf"(%3, %3) <{predicate = "oeq"}> : (f32, f32) -> i1
      "scf.if"(%4) ({
      ^bb2:
        %5 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
        "scf.yield"() : () -> ()
      }) : (i1) -> ()
      "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()