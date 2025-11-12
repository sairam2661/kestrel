"builtin.module"() ({
  "util.func"() <{function_type = () -> (), sym_name = "preserved_side_effect_func", sym_visibility = "private"}> ({
  }) : () -> ()
  "util.func"() <{function_type = (i1, i32) -> i32, sym_name = "scf_unreachable_in_scf", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1, %arg1: i32):
    %0 = "scf.if"(%arg0) ({
      "util.call"() <{callee = @preserved_side_effect_func}> : () -> ()
      "util.scf.unreachable"() <{message = "in scf region"}> : () -> ()
      %3 = "arith.constant"() <{value = 100 : i32}> : () -> i32
      %4 = "arith.addi"(%arg1, %3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }, {
      %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %2 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) : (i1) -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

