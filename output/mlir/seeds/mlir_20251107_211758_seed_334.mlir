"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xi32>) -> tensor<?x?xi64>, sym_name = "bitwidth_conversion"}> ({
  ^bb0(%arg0: tensor<?x?xi32>):
    %0 = "arith.zext"(%arg0) : (tensor<?x?xi32>) -> tensor<?x?xi64>
    "func.return"(%0) : (tensor<?x?xi64>) -> ()
  }) : () -> ()
}) : () -> ()