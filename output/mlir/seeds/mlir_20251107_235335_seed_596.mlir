"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (index, index), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    "scf.if"(%arg0) ({
      ^bb1:
        %2 = "arith.addi"(%arg0, %1) : (index, index) -> index
        "scf.yield"() : () -> ()
    }) : (index) -> ()
    "scf.if"(%arg1) ({
      ^bb2:
        %3 = "arith.addi"(%arg0, %arg1) : (index, index) -> index
        "scf.yield"() : () -> ()
    }) : (index) -> ()
    "scf.for"(%arg0, %0, %1) ({
    ^bb3(%iv: index):
      "scf.if"(%iv) ({
        ^bb4:
          %4 = "arith.addi"(%iv, %arg0) : (index, index) -> index
          "scf.yield"() : () -> ()
      }) : (index) -> ()
      "scf.if"(%iv) ({
        ^bb5:
          %5 = "arith.addi"(%iv, %arg1) : (index, index) -> index
          "scf.yield"() : () -> ()
      }) : (index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"(%arg0, %arg1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()