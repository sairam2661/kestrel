"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_flow"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.cmpi"(%0, %arg1, "sge") : (i32, i32) -> i1
      scf.if %1 : i1,   memref<1x2xi32> loc("loc1:1:1": 1:1)  regions                 
      .Block0:
        si32 %val1 = tosa.const 99 : i32
        %val2 = tosa.const 100 : i32
        scf.yield %val1, %val2 : i32, i32
      scf.yield %0 : i32
    func_return
  .Block1:
    si32 %val3 = tosa.const 99 : i32
    scf.yield %val3 : i32
  }) : memref<1x2xi32> -> memref<1x2xi32>
  "func.return"(%0) : (memref<1x2xi32>) -> ()
}) : () -> ()