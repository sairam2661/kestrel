#new_layout = #tensor_extnew_layout"{ [i0] -> [ct, slot] : ct = 0 and (slot - i0) mod 8 = 0 and 0 <= i0 <= 7 and 0 <= slot <= 15 }"
    
    () ({
      "func.func"() <{
        function_type = (!secretsecrettensor8xi32, index) -> i32,
        sym_name = "tensor_extract_dynamic"
      }> ({
        ^bb0(%arg0: !secretsecrettensor8xi32, %arg1: index):
          %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
          %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
          %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
          %c4 = "arith.constant"() <{value = 4 : index}> : () -> index
          %c5 = "arith.constant"() <{value = 5 : index}> : () -> index
          %c6 = "arith.constant"() <{value = 6 : index}> : () -> index
          %c7 = "arith.constant"() <{value = 7 : index}> : () -> index
          %ten0 = "tensor.extract"(%arg0, %c0) : (!secretsecrettensor8xi32, index) -> i32
          %ten1 = "tensor.extract"(%arg0, %c1) : (!secretsecrettensor8xi32, index) -> i32
          %ten2 = "tensor.extract"(%arg0, %arg1) : (!secretsecrettensor8xi32, index) -> i32
          %ten3 = "tensor.extract"(%arg0, %c3) : (!secretsecrettensor8xi32, index) -> i32
          %ten4 = "tensor.extract"(%arg0, %c4) : (!secretsecrettensor8xi32, index) -> i32
          %ten5 = "tensor.extract"(%arg0, %c5) : (!secretsecrettensor8xi32, index) -> i32
          %ten6 = "tensor.extract"(%arg0, %c6) : (!secretsecrettensor8xi32, index) -> i32
          %ten7 = "tensor.extract"(%arg0, %c7) : (!secretsecrettensor8xi32, index) -> i32
          %add0 = "arith.addi"(%ten0, %ten1) <{
            overflowFlags = #arithoverflownone
          }> : (i32, i32) -> i32
          %add1 = "arith.addi"(%add0, %ten2) <{
            overflowFlags = #arithoverflownone
          }> : (i32, i32) -> i32
          %add2 = "arith.addi"(%add1, %ten3) <{
            overflowFlags = #arithoverflownone
          }> : (i32, i32) -> i32
          %add3 = "arith.addi"(%add2, %ten4) <{
            overflowFlags = #arithoverflownone
          }> : (i32, i32) -> i32
          %add4 = "arith.addi"(%add3, %ten5) <{
            overflowFlags = #arithoverflownone
          }> : (i32, i32) -> i32
          %add5 = "arith.addi"(%add4, %ten6) <{
            overflowFlags = #arithoverflownone
          }> : (i32, i32) -> i32
          %add6 = "arith.addi"(%add5, %ten7) <{
            overflowFlags = #arithoverflownone
          }> : (i32, i32) -> i32
          "func.return"(%add6) : (i32) -> ()
      }) : () -> ()
    }) : () -> ()