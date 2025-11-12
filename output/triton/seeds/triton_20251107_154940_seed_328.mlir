"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<1024xi32>, tensor<1024xi32>, i32) -> (tensor<1024xi32>, tensor<1024xi32>), sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<1024xi32>, %arg1: tensor<1024xi32>, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg2, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.if"(%1) ({
      %2 = "tt.reduce"() <{operation = "add"}> ({
        ^bb1(%arg3: tensor<1024xi32>, %arg4: tensor<1024xi32>): 
          %5 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
          "scf.yield"(%5) : (tensor<1024xi32>) -> ()
      }) : (tensor<1024xi32>, tensor<1024xi32>) -> (tensor<1024xi32>)
      "tt.return"(%arg0, %2) : (tensor<1024xi32>, tensor<1024xi32>) -> ()
    }, {
      %3 = "tt.reduce"() <{operation = "mul"}> ({
        ^bb2(%arg5: tensor<1024xi32>, %arg6: tensor<1024xi32>): 
          %7 = "arith.muli"(%arg5, %arg6) <{overflowFlags = #arith_overflownone}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
          "scf.yield"(%7) : (tensor<1024xi32>) -> ()
      }) : (tensor<1024xi32>, tensor<1024xi32>) -> (tensor<1024xi32>)
      "tt.return"(%3, %arg1) : (tensor<1024xi32>, tensor<1024xi32>) -> ()
    }) : (i1) -> ()
  }) : () -> ()
}) : () -> ()