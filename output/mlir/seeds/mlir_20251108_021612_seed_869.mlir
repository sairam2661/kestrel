"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "vector_add", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arithOverflowInstance}> : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : (i32, i32) -> i32
  "func.func"() <{function_type = () -> (), sym_name = "nested_loops", sym_visibility = "private"}> ({
  ^bb0():
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    "scf.for"(%0, %1, %2) ({
    ^bb0(%arg0: index):
      "scf.for"(%0, %1, %2) ({
      ^bb0(%arg1: index):
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "conditional_branch", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.cmpi"(%arg0, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.if"(%0) ({
      %1 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arithOverflowInstance}> : (i32, i32) -> i32
      "func.return"(%1) : (i32) -> ()
    }, {
      %2 = "arith.subi"(%arg0, %arg0) <{overflowFlags = #arithOverflowInstance}> : (i32, i32) -> i32
      "func.return"(%2) : (i32) -> ()
    }) : (i1) -> ()
    "func.return"(%arg0) : (i32) -> ()
  }) : (i32) -> i32
}) : () -> ()