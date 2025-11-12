"builtin.module"() ({
  "util.func"() <{function_type = () -> i32, sym_name = "nested_side_effect", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  }) : () -> ()
  "util.func"() <{function_type = (i1, i1) -> (i32, i32), sym_name = "multiple_scf_unreachable", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "scf.if"(%arg0) ({
      "util.scf.unreachable"() <{message = "first"}> : () -> ()
      %5 = "util.call"() <{callee = @nested_side_effect, tied_operands = [-1 : index]}> : () -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
      %4 = "util.call"() <{callee = @nested_side_effect, tied_operands = [-1 : index]}> : () -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i1) -> i32
    %1 = "scf.if"(%arg1) ({
      %3 = "util.call"() <{callee = @nested_side_effect, tied_operands = [-1 : index]}> : () -> i32
      "scf.yield"(%3) : (i32) -> ()
    }, {
      "util.scf.unreachable"() <{message = "second"}> : () -> ()
      %2 = "util.call"() <{callee = @nested_side_effect, tied_operands = [-1 : index]}> : () -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) : (i1) -> i32
    "util.return"(%0, %1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

