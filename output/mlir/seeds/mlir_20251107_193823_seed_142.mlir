"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "nested_loops_with_conditionals"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "scf.for"(%0, %arg0, %arg1, %arg0) ({
    ^bb1(%arg2: index, %arg3: index):
      %2 = "scf.if"(%arg2) ({
      ^bb2:
        %3 = "arith.addi"(%arg3, %arg2) : (index, index) -> index
        "scf.yield"(%3) : (index) -> ()
      }) {
      } : (index) -> (index)
      "scf.yield"(%2) : (index) -> ()
    }) : (index, index, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()