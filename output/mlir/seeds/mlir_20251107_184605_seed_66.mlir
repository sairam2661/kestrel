"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complexControlFlow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    "scf.if"(%0) <{trueBranch = "^bb1", falseBranch = "^bb2", trueCond = true}> ({
    ^bb1(%arg2: i32):
      %1 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.if"(%1) <{trueBranch = "^bb3", falseBranch = "^bb4", trueCond = true}> ({
      ^bb3(%arg3: i32):
        %2 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%2) : (i32)
      ^bb4(%arg4: i32):
        %3 = "arith.divsi"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%3) : (i32)
      }) : () -> (i32)
      "scf.yield"(%1) : (i32)
    ^bb2(%arg5: i32):
      %4 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.yield"(%4) : (i32)
    }) : () -> (i32)
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()