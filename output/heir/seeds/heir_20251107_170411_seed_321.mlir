"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, "sge", %arg0) : (i32, i32) -> i1
    "scf.if"(%1) ({
    ^bb0(%arg1: i1):
      %2 = "arith.addi"(%0, %arg0) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : () -> ()
    %3 = "arith.select"(%1, %0, %arg0) : (i1, i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "nested_for_loops"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    "scf.for"(%arg0) <{lowerBound = 0 : index, upperBound = 10 : index}> ({
    ^bb1(%arg1: index, %arg2: i32):
      "scf.for"(%arg1) <{lowerBound = 0 : index, upperBound = 5 : index}> ({
      ^bb2(%arg3: index, %arg4: i32):
        %5 = "arith.addi"(%arg2, %arg4) : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }) : (i32) -> (i32)
      "scf.yield"(%arg4) : (i32) -> ()
    }) : (i32) -> (i32)
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()