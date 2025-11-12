"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x3xi32>, tensor<3xi32>) -> (), sym_name = "test_concat_dynamic_axis"}> ({
  ^bb0(%arg0: tensor<?x3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<?x3xi32>, tensor<3xi32>) -> tensor<?x3xi32>
    %1 = "arith.cmpi"(%0, %arg0) <{predicate = "eq"}> : (tensor<?x3xi32>, tensor<?x3xi32>) -> tensor<?xi1>
    %2 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 5 : index, step = 1 : index}> 
      ({
        ^bb1(%iv: index):
          %3 = "arith.addi"(%iv, %iv) : (index, index) -> index
          %4 = "arith.cmpi"(%3, %iv) <{predicate = "eq"}> : (index, index) -> i1
          "scf.yield"() : () -> ()
      }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()