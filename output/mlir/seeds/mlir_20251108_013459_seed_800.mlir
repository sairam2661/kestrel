"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "nested_add_and_cmp"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %1 = "arith.cmpi"("slt", %0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    "scf.for"(%2, %3) <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
    ^bb1(%4: i32):
      "scf.for"(%5, %6) <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
      ^bb2(%7: i32):
        %8 = "arith.cmpi"("slt", %2, %4) : (i32, i32) -> i1
        %9 = "arith.cmpi"("slt", %5, %7) : (i32, i32) -> i1
        %10 = "arith.andi"(%8, %9) : (i1, i1) -> i1
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%0) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()