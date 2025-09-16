"builtin.module"() ({
  "func.func"() <{function_type = () -> index, sym_name = "make_val", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "nested_uses_inside"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    "scf.for"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: index):
      %1 = "func.call"() <{callee = @make_val}> : () -> index
      %2 = "func.call"() <{callee = @make_val}> : () -> index
      %3 = "scf.if"(%0) ({
        "scf.yield"(%1) : (index) -> ()
      }, {
        "scf.yield"(%2) : (index) -> ()
      }) : (i1) -> index
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

