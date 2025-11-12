"builtin.module"() ({
  "util.func"() <{function_type = (i1) -> (i32, f32, tensor<4xf32>), sym_name = "simplifyIfMultipleResultTypes", sym_visibility = "public", tied_operands = [-1 : index, -1 : index, -1 : index]}> ({
  ^bb0(%arg0: i1):
    %0:3 = "scf.if"(%arg0) ({
      "util.scf.unreachable"() <{message = "then"}> : () -> ()
      %4 = "ub.poison"() <{value = #ub.poison}> : () -> i32
      %5 = "ub.poison"() <{value = #ub.poison}> : () -> f32
      %6 = "ub.poison"() <{value = #ub.poison}> : () -> tensor<4xf32>
      "scf.yield"(%4, %5, %6) : (i32, f32, tensor<4xf32>) -> ()
    }, {
      "util.scf.unreachable"() <{message = "else"}> : () -> ()
      %1 = "ub.poison"() <{value = #ub.poison}> : () -> i32
      %2 = "ub.poison"() <{value = #ub.poison}> : () -> f32
      %3 = "ub.poison"() <{value = #ub.poison}> : () -> tensor<4xf32>
      "scf.yield"(%1, %2, %3) : (i32, f32, tensor<4xf32>) -> ()
    }) : (i1) -> (i32, f32, tensor<4xf32>)
    "util.return"(%0#0, %0#1, %0#2) : (i32, f32, tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

