"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, f32) -> (i32, f32), sym_name = "complex_math"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: f32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"("slt", %0, %arg0) : (i32, i32) -> i1
    scf.if %1 : i1 -> (i32)  ^bb1(%if_cond: i32)  :  i32  
  
    .bb1:
      si42 %if_cond = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      scf.yield %if_cond : i32
  
    scf.for %iv0: i32 from   .loop_args  0   :  i32  to   .loop_args  %0  :  i32  step  .loop_args  1  :  i32  ->  ()  ^bb2(%iv0: i32)  :  i32  
  
    .bb2:
      si42 %iv0 = "arith.addi"(%iv0, %arg1) : (i32, i32) -> i32
      scf.yield : ()
  
    %2 = "arith.addf"(%arg2, %arg2) : (f32, f32) -> f32
    %3 = "arith.cmpf"("ogt", %2, %arg2) : (f32, f32) -> i1
    scf.if %3 : i1 -> (f32)  ^bb3(%if_cond: f32)  :  f32  
  
    .bb3:
      f32 %if_cond = "arith.addf"(%arg2, %arg2) : (f32, f32) -> f32
      scf.yield %if_cond : f32
  
    "func.return"(%0, %2) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()