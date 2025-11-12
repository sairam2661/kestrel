"builtin.module"() ({
  "util.func"() <{function_type = () -> (), sym_name = "nested_side_effect", sym_visibility = "private"}> ({
  }) : () -> ()
  "util.func"() <{function_type = () -> i32, sym_name = "side_effect_producer", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  }) : () -> ()
  "util.func"() <{function_type = (i1, i1, i32, index) -> i32, sym_name = "nested_scf_unreachable", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i32, %arg3: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "scf.for"(%0, %arg3, %1, %arg2) ({
    ^bb0(%arg4: index, %arg5: i32):
      %3 = "scf.if"(%arg1) ({
        "util.call"() <{callee = @nested_side_effect}> : () -> ()
        "util.scf.unreachable"() <{message = "nested unreachable"}> : () -> ()
        %5 = "util.call"() <{callee = @side_effect_producer, tied_operands = [-1 : index]}> : () -> i32
        "scf.yield"(%5) : (i32) -> ()
      }, {
        %4 = "arith.constant"() <{value = 100 : i32}> : () -> i32
        "scf.yield"(%4) : (i32) -> ()
      }) : (i1) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "util.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

