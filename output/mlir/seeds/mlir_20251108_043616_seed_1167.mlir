"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32

    "scf.if"(%arg0) ({
      ^bb1(%arg2: i32):
        %0 = "arith.addi"(%arg1, %c1_i32) : (i32, i32) -> i32
        "scf.yield"(%0) : (i32) -> ()
    }) {
      "scf.yield" = "scf.yield" : () -> ()
    } : (i32) -> ()

    "scf.for"(%c0_i32, %c0_i32, %c4_i32) ({
      ^bb1(%iv: index, %arg3: i32):
        "scf.if"(%iv) ({
          ^bb2(%arg4: i32):
            %1 = "arith.addi"(%arg3, %c2_i32) : (i32, i32) -> i32
            "scf.yield"(%1) : (i32) -> ()
        }) {
          "scf.yield" = "scf.yield" : () -> ()
        } : (index) -> ()
    }) : (i32) -> ()

    "func.return"(%c3_i32) : (i32) -> ()
  }) : () -> ()
}) : () -> ()