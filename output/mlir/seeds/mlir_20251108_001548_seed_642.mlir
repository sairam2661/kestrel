"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags} > : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%0) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  "scf.for"() <{lowerBound = 0 : index, upperBound = 2 : index, step = 1 : index}> ({
  ^bb0(%iv: index):
    "scf.for"() <{lowerBound = 0 : index, upperBound = 2 : index, step = 1 : index}> ({
    ^bb1(%jv: index):
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "arith.cmpi"(%iv, %jv) <{predicate = "eq"}> : (index, index) -> i1
      %3 = "arith.select"(%2, %1, %1) : (i1, i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : () -> ()
    "scf.yield"() : () -> ()
  }) : () -> ()
}) : () -> ()