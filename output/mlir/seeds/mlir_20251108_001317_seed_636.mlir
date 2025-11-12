"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) : (i32, i32) -> i32
    %3 = "arith.addi"(%2, %0) : (i32, i32) -> i32
    %4 = "arith.subi"(%3, %arg0) : (i32, i32) -> i32
    %5 = "arith.addi"(%4, %arg1) : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    "scf.for"(%0, %1, %1) ({
    ^bb1(%arg2: index):
      %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.if"(%2) ({
      ^bb2:
        %3 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
      }) {
      } : (i32) -> (i32)
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "mixed_dialects"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    "spirv.ReturnValue"(%2) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()