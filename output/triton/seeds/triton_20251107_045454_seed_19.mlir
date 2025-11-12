"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
    %0 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.addi"(%arg0, %arg1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %4 = "arith.xori"(%arg0, %arg1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %5 = "arith.remsi"(%arg0, %arg1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %6 = "arith.select"(%arg0, %arg1, %3) : (tensor<8x8xi32>, tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %7 = "tt.expand_dims"(%arg0) <{axis = 1 : i32}> : (tensor<8x8xi32>) -> tensor<8x8x1xi32>
    %8 = "tt.call"() <{callee = "@matrix_add_helper", arguments = ["%arg0"], results = [tensor<8x8xi32>]}>: () -> tensor<8x8xi32>
    %9 = "tt.addptr"(%0, %1, %2) : (i32, i32, i32) -> !tt ptr
   .scf.1:
    (i32) -> () "scf.if"(%arg0) ({
      %10 = "arith.subi"(%arg1, %arg0) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
      "scf.yield"(%10) : (tensor<8x8xi32>) -> ()
    }, {
      %11 = "arith.xori"(%arg0, %arg1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
      "scf.yield"(%11) : (tensor<8x8xi32>) -> ()
    }) : (tensor<8x8xi32>) -> tensor<8x8xi32>
    "tt.reduce"(%scf_1 : tensor<8x8xi32>) ({
      ^bb1(%arg2: tensor<8x8xi32>, %arg3: tensor<8x8xi32>):
        %12 = "arith.addi"(%arg2, %arg3) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
        "scf.yield"(%12) : (tensor<8x8xi32>) -> ()
    }) : (tensor<8x8xi32>) -> tensor<8x8xi32>
    "tt.return"(%8) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "matrix_add_helper"}> ({
    ^bb1(%arg2: tensor<8x8xi32>):
      %13 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %14 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %15 = "arith.addi"(%arg2, %13) : (tensor<8x8xi32>, i32) -> tensor<8x8xi32>
      %16 = "arith.xori"(%arg2, %14) : (tensor<8x8xi32>, i32) -> tensor<8x8xi32>
      "tt.return"(%16) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()