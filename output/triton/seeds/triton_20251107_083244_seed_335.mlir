"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_mix"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.xori"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.cmpi"(%0, %1) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %3 = "arith.divsi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %5 = "arith.addi"(%3, %4) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "scf.for"() <{lowerBound = 0 : index, upperBound = 16 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %7 = "scf.if"(%2) ({
      ^bb2:
        %8 = "arith.muli"(%arg0, %iv) : (tensor<16xi32>, index) -> tensor<16xi32>
        scf.yield
      : () -> ()
      }, {
      ^bb3:
        %9 = "arith.divsi"(%arg1, %iv) : (tensor<16xi32>, index) -> tensor<16xi32>
        scf.yield
      : () -> ()
      }) : (tensor<16xi32>) -> (tensor<16xi32>)
      scf.yield
    : tensor<16xi32> -> ()
    }) : (tensor<16xi32>) -> ()
    %10 = "tt.reduce"() <{operation = "add"}> ({
    ^bb4(%acc: tensor<16xi32>, %val: tensor<16xi32>):
      %11 = "arith.addi"(%acc, %val) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      scf.yield %11 : tensor<16xi32>
    }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %12 = "tt.addptr"(%arg0, %10) : (tensor<16xi32>, tensor<16xi32>) -> !tt_ptr
    "tt.return"(%12) : (!tt_ptr) -> ()
  }) : (tensor<16xi32>, tensor<16xi32>) -> !tt_ptr
}) : () -> ()