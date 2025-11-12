"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "add_and_select"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "tensor.empty"() : () -> tensor<2x2xi32>
    %1 = "scf.for"() <{lowerBound = 0 : index, upperBound = 2 : index, step = 1 : index}> ({
    ^bb0(%iv: index):
      %2 = "scf.for"() <{lowerBound = 0 : index, upperBound = 2 : index, step = 1 : index}> ({
      ^bb0(%jv: index):
        %3 = "tensor.extract"(%arg0, %iv, %jv) : (tensor<2x2xi32>, index, index) -> i32
        %4 = "tensor.extract"(%arg1, %iv, %jv) : (tensor<2x2xi32>, index, index) -> i32
        %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflowFlagsEnum  }> : (i32, i32) -> i32
        %6 = "arith.constant"() <{value = 5 : i32}> : () -> i32
        %7 = "arith.cmpi"(%5, %6, "slt") : (i32, i32) -> i1
        %8 = "arith.select"(%7, %5, %6) : (i1, i32, i32) -> i32
        %9 = "tensor.insert"(%8, %0, %iv, %jv) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
        "scf.yield"(%9) : (tensor<2x2xi32>) -> ()
      }) : (tensor<2x2xi32>) -> tensor<2x2xi32>
      "scf.yield"(%2) : (tensor<2x2xi32>) -> ()
    }) : (tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()