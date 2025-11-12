"builtin.module"() ({
  "func.func"() <{
    function_type = (vector<4xi8>, index) -> vector<4xi8>,
    sym_name = "vector_add_with_index"
  }> ({
    ^bb0(%arg0: vector<4xi8>, %arg1: index):
      %c0_i8 = "arith.constant"() <{value = 0 : i8}> : () -> i8
      %c1_i8 = "arith.constant"() <{value = 1 : i8}> : () -> i8
      %c2_i8 = "arith.constant"() <{value = 2 : i8}> : () -> i8
      %c3_i8 = "arith.constant"() <{value = 3 : i8}> : () -> i8
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32

      %load0 = "vector.extract_element"(%arg0, %c0_i8) : (vector<4xi8>, i8) -> i8
      %load1 = "vector.extract_element"(%arg0, %c1_i8) : (vector<4xi8>, i8) -> i8
      %load2 = "vector.extract_element"(%arg0, %c2_i8) : (vector<4xi8>, i8) -> i8
      %load3 = "vector.extract_element"(%arg0, %c3_i8) : (vector<4xi8>, i8) -> i8

      %add0 = "arith.addi"(%load0, %c1_i32) : (i8, i32) -> i32
      %add1 = "arith.addi"(%load1, %c1_i32) : (i8, i32) -> i32
      %add2 = "arith.addi"(%load2, %c1_i32) : (i8, i32) -> i32
      %add3 = "arith.addi"(%load3, %c1_i32) : (i8, i32) -> i32

      %insert0 = "vector.insert_element"(%arg0, %add0, %c0_i8) : (vector<4xi8>, i32, i8) -> vector<4xi8>
      %insert1 = "vector.insert_element"(%insert0, %add1, %c1_i8) : (vector<4xi8>, i32, i8) -> vector<4xi8>
      %insert2 = "vector.insert_element"(%insert1, %add2, %c2_i8) : (vector<4xi8>, i32, i8) -> vector<4xi8>
      %insert3 = "vector.insert_element"(%insert2, %add3, %c3_i8) : (vector<4xi8>, i32, i8) -> vector<4xi8>

      "func.return"(%insert3) : (vector<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()