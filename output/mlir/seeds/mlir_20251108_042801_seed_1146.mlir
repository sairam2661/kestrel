"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "bitwise_xor_and_shift"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.xor"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.shl"(%0, %arg1) : (i32, i32) -> i32
    %2 = "arith.xor"(%1, %arg0) : (i32, i32) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_if_with_phi"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "scf.if"(%arg0) ({
      %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.yield"(%1) : (i32) -> ()
    }, {
      %2 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) : (i32) -> (i32)
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (i32, i32), sym_name = "unrolled_loop"}> ({
  ^bb0(%arg0: i32):
    %0 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
        %1 = "arith.muli"(%arg0, %iv) : (i32, index) -> i32
        "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%arg0, %0) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> f64, sym_name = "exp_log"}> ({
  ^bb0(%arg0: f64):
    %0 = "arith.exp"(%arg0) : (f64) -> f64
    %1 = "arith.log"(%0) : (f64) -> f64
    "func.return"(%1) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (i8) -> i8, sym_name = "bitwise_and_or"}> ({
  ^bb0(%arg0: i8):
    %0 = "arith.andi"(%arg0, 3) : (i8, i8) -> i8
    %1 = "arith.ori"(%0, 1) : (i8, i8) -> i8
    "func.return"(%1) : (i8) -> ()
  }) : () -> ()
}) : () -> ()