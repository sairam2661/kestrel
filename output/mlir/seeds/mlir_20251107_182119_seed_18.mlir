"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32), sym_name = "test_complex_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    "scf.for"() <{lowerBound = 0 : i32, upperBound = 10 : i32, step = 1 : i32}> ({
      ^bb1(%iv: i32):
        %1 = "arith.cmpi"(%iv, %0, "slt") : (i32, i32) -> i1
        "scf.if"(%1) ({
          ^bb2:
            %2 = "arith.addi"(%iv, %0) : (i32, i32) -> i32
            "scf.yield"(%2) : (i32) -> ()
        }, {
          ^bb3:
            %3 = "arith.subi"(%iv, %0) : (i32, i32) -> i32
            "scf.yield"(%3) : (i32) -> ()
        }) : (i32) -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()