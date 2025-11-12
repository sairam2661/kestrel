"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "tensor_compare_and_select"}> ({
    ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
      %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = "eq"}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi1>
      %1 = "arith.constant"() <{value = dense<42 : i32> : tensor<10xi32>}> : () -> tensor<10xi32>
      %2 = "arith.constant"() <{value = dense<0 : i32> : tensor<10xi32>}> : () -> tensor<10xi32>
      %3 = "arith.select"(%0, %1, %2) : (tensor<10xi1>, tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      "func.return"(%3) : (tensor<10xi32>) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (i32) -> i32, sym_name = "nested_loop_example"}> ({
    ^bb0(%arg0: i32):
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c10_i32 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      
      scf.for %i0, %i1, %i2, %i3, %i4, %i5, %i6, %i7, %i8, %i9 : i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
        ^bb1(%iv: i32):
          scf.for %j0, %j1, %j2, %j3, %j4, %j5, %j6, %j7, %j8, %j9 : i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
            ^bb2(%jv: i32):
              %cmp = "arith.cmpi"(%iv, %jv) <{predicate = "eq"}> : (i32, i32) -> i1
              %select = "arith.select"(%cmp, %iv, %jv) : (i1, i32, i32) -> i32
              scf.yield
          %100: i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
          scf.yield
      %101: i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
      "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()