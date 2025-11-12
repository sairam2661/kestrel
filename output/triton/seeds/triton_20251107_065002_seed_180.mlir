"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_op"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %0) : (i32, i32) -> i32
    %2 = "arith.remsi"(%1, %arg1) : (i32, i32) -> i32
    %3 = "scf.if"(%2) ({
    ^bb1(%arg2: i32):
      "tt.return"(%arg2) : (i32) -> ()
    }) {
    } : (i32) -> () "else" (i32) ({
    ^bb2(%arg3: i32):
      %4 = "arith.xori"(%arg3, %arg0) : (i32, i32) -> i32
      "tt.return"(%4) : (i32) -> ()
    })
  : (i32) -> ()
  }) : () -> ()
}) : () -> ()