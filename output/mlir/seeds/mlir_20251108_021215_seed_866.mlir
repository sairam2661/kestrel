"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<3x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<3x2xi32>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 2 : index, step = 1 : index}> ({
      ^bb1(%iv0: index):
        %2 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 3 : index, step = 1 : index}> ({
          ^bb2(%iv1: index):
            %3 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 2 : index, step = 1 : index}> ({
              ^bb3(%iv2: index):
                %4 = "memref.load"(%arg0, %iv0, %iv1) : (tensor<2x3xi32>, index, index) -> i32
                %5 = "memref.load"(%arg1, %iv1, %iv2) : (tensor<3x2xi32>, index, index) -> i32
                %6 = "arith.muli"(%4, %5) : (i32, i32) -> i32
                %7 = "memref.load"(%0, %iv0, %iv2) : (tensor<2x2xi32>, index, index) -> i32
                %8 = "arith.addi"(%6, %7) : (i32, i32) -> i32
                "memref.store"(%8, %0, %iv0, %iv2) : (i32, tensor<2x2xi32>, index, index)
            }) : () -> ()
        }) : () -> ()
    }) : () -> ()
    "func.return"(%0) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()