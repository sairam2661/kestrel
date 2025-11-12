"builtin.module"() ({
  "util.func"() <{function_type = (tensor<i32>) -> tensor<i32>, sym_name = "optimizationBarrier", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "util.optimization_barrier"(%arg0) : (tensor<i32>) -> tensor<i32>
    "util.return"(%0) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

