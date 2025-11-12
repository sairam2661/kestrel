"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (index, index), sym_name = "complex_nested_loops"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %c0_i32 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1_i32 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c10_i32 = "arith.constant"() <{value = 10 : index}> : () -> index
    %c20_i32 = "arith.constant"() <{value = 20 : index}> : () -> index
    %0:2 = "scf.for"(%arg0, %c10_i32, %c1_i32) ({
    ^bb1(%arg2: index, %arg3: index):
      %1:2 = "scf.for"(%arg3, %c20_i32, %c1_i32) ({
      ^bb2(%arg4: index, %arg5: index):
        %2 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflowFlags} > : (index, index) -> index
        %3 = "arith.addi"(%arg2, %arg5) <{overflowFlags = #arith_overflowFlags}> : (index, index) -> index
        "scf.yield"(%3, %2) : (index, index) -> ()
      }) : (index, index) -> (index, index)
      "scf.yield"(%1#0, %1#1) : (index, index) -> ()
    }) : (index, index) -> (index, index)
    "func.return"(%0#0, %0#1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()