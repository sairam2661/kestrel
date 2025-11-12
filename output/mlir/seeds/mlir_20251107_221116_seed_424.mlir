"builtin.module"() ({
  "func.func"() <{function_type = (index, i32) -> (index, i32), sym_name = "mixed_types_example"}> ({
  ^bb0(%arg0: index, %arg1: i32):
    %0 = "tosa.const"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    %2 = "scf.if"(%1) <{resultTypes = i32}> ({
    ^bb1(%2: i32):
      %3 = "arith.cmpi"("sgt", %2, %0) : (i32, i32) -> i1
      "scf.yield"(%3) : (i1) -> i1
    }, {
    ^bb2(%3: i1):
      %4 = "scf.for"(%0) <{lowerBound = 0 : index, upperBound = 10 : index, step = 1 : index, resultTypes = index}> ({
      ^bb3(%5: index, %6: index):
        %7 = "arith.addi"(%6, %5) : (index, index) -> index
        "scf.yield"(%7) : (index) -> index
      }) : (index) -> index
      "scf.yield"(%4) : (index) -> index
    }) : (index) -> index
    "func.return"(%arg0, %2) : (index, i32) -> ()
  }) : () -> ()
}) : () -> ()