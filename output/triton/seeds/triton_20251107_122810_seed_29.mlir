"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>, sym_name = "complex_nested_loops"}> ({
  ^bb0(%arg0: tensor<1024xi32>, %arg1: tensor<1024xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "scf.for"(%0, %1, %2) ({
    ^bb1(%arg2: i32):
      %3 = "arith.addi"(%arg0, %arg1) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      "scf.for"(%0, %arg2, %2) ({
      ^bb2(%arg3: i32):
        %4 = "arith.muli"(%arg0, %arg1) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
        "scf.if"(%arg3) ({
          %5 = "arith.divi"(%arg0, %arg1) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
          "scf.yield"(%5) : (tensor<1024xi32>) -> ()
        }, {
          %6 = "arith.subi"(%arg0, %arg1) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
          "scf.yield"(%6) : (tensor<1024xi32>) -> ()
        }) : (i32) -> tensor<1024xi32>
        "scf.yield"() : () -> ()
      }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> ()
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> ()
    "tt.return"(%3) : (tensor<1024xi32>) -> ()
  }) : () -> ()
}) : () -> ()