"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_add_with_select"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = -100 : i32}> : () -> i32
    %4 = "scf.for"(%0, %0, %2) <{step = 1 : index}> ({
    ^bb0(%iv: index, %iv1: index):
      %5 = "scf.for"(%1, %1, %2) <{step = 1 : index}> ({
      ^bb1(%jv: index, %jv1: index):
        %6 = "tensor.extract"(%arg0, %iv, %jv) : (tensor<2x2xi32>, index, index) -> i32
        %7 = "tensor.extract"(%arg1, %iv, %jv) : (tensor<2x2xi32>, index, index) -> i32
        %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %9 = "arith.cmpi"(%8, %2, "slt") : (i32, i32) -> i1
        %10 = "arith.select"(%9, %8, %3) : (i1, i32, i32) -> i32
        %11 = "arith.cmpi"(%10, %3, "sgt") : (i32, i32) -> i1
        %12 = "arith.select"(%11, %10, %2) : (i1, i32, i32) -> i32
        %13 = "tensor.insert"(%12, %arg0, %iv, %jv) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
      }) : (index, index) -> (tensor<2x2xi32>)
    }) : (index, index) -> (tensor<2x2xi32>)
    "func.return"(%4) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()