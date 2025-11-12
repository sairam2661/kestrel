"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "test_nested_control_flow"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    "scf.if"(%1) ({
    ^bb0(%arg1: i1):
      %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      "scf.for"(%arg0, %arg0, %2, %2, "par") ({
      ^bb0(%arg2: i32):
        %3 = "arith.addi"(%arg0, %arg2) : (i32, i32) -> i32
        "scf.if"(%3, "par") ({
        ^bb0(%arg3: i1):
          %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
          "scf.for"(%arg2, %4, %3, %4, "par") ({
          ^bb0(%arg4: i32):
            %5 = "arith.muli"(%arg2, %arg4) : (i32, i32) -> i32
            "scf.yield"() : () -> ()
          }) : (i32, i32) -> ()
          "scf.yield"() : () -> ()
        }) : (i1) -> ()
        "scf.yield"() : () -> ()
      }) : (i32, i32) -> ()
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()