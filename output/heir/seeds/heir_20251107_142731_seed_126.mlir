"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi64>, tensor<2x2xi64>) -> tensor<2x2xi64>, sym_name = "matrix_multiply"}> ({
    ^bb0(%arg0: tensor<2x2xi64>, %arg1: tensor<2x2xi64>):
      %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
      %c0_i64 = "arith.constant"() <{value = 0 : i64}> : () -> i64
      %result = "tensor.empty"() <{shape = [2, 2], elementType = i64}> : () -> tensor<2x2xi64>
      "scf.for"(%c0, %c0) <{lowerBound = 0 : index, upperBound = 2 : index, step = 1 : index}> ({
        ^bb1(%i: index, %j: index):
          %sum = "arith.constant"() <{value = 0 : i64}> : () -> i64
          %k = "arith.constant"() <{value = 0 : index}> : () -> index
          "scf.for"(%k, %k) <{lowerBound = 0 : index, upperBound = 2 : index, step = 1 : index}> ({
            ^bb2(%k: index):
              %a = "tensor.extract"(%arg0, %i, %k) : (tensor<2x2xi64>, index, index) -> i64
              %b = "tensor.extract"(%arg1, %k, %j) : (tensor<2x2xi64>, index, index) -> i64
              %mul = "arith.muli"(%a, %b) <{overflowFlags = #arith_overflow_none}> : (i64, i64) -> i64
              %sum = "arith.addi"(%sum, %mul) <{overflowFlags = #arith_overflow_none}> : (i64, i64) -> i64
              "scf.yield"(%sum) : (i64) -> i64
          }) : (index) -> i64
          "tensor.insert"(%sum, %result, %i, %j) <{indices = [i1, i2]}> : (i64, tensor<2x2xi64>, index, index) -> tensor<2x2xi64>
          "scf.yield"() : () -> ()
      }) : () -> ()
      "func.return"(%result) : (tensor<2x2xi64>) -> ()
  }) : () -> ()
}) : () -> ()