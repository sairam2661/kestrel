"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x8xi32>, tensor<8x16xi32>) -> tensor<16x16xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: tensor<16x8xi32>, %arg1: tensor<8x16xi32>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
    scf.for %i0  : i32 from   .iterate 16   : i32  step   .iterate 1  : i32  into  ()  region  .componentInstance  0  :  ()  ->  ()  "body"() <{do_while = false}> ({
      scf.for %i1  : i32 from   .iterate 8  : i32  step   .iterate 1  : i32  into  ()  region  .componentInstance  1  :  ()  ->  ()  "body"() <{do_while = false}> ({
        scf.for %i2  : i32 from  .iterate 16  : i32  step  .iterate 1  : i32  into  ()  region  .componentInstance  2  :  ()  ->  ()  "body"() <{do_while = false}> ({
          %1 = "arith.extract"(%arg0, %i0, %i1) : (tensor<16x8xi32>, i32, i32) -> i32
          %2 = "arith.extract"(%arg1, %i1, %i2) : (tensor<8x16xi32>, i32, i32) -> i32
          %3 = "arith.muli"(%1, %2) : (i32, i32) -> i32
          %4 = "arith.extract"(%0, %i0, %i2) : (tensor<16x16xi32>, i32, i32) -> i32
          %5 = "arith.addi"(%3, %4) : (i32, i32) -> i32
          "arith.insert"(%5, %0, %i0, %i2) : (i32, tensor<16x16xi32>, i32, i32) -> tensor<16x16xi32>
        }) : () -> ()
        scf.yield
      : () -> ()
      }) : () -> ()
      scf.yield
    : () -> ()
    }) : () -> ()
    "tt.return"(%0) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()