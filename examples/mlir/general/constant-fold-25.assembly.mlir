module {
  func.func @simple_arith.ceildivsi_overflow() -> (i8, i16, i32) {
    %c7_i8 = arith.constant 7 : i8
    %c-128_i8 = arith.constant -128 : i8
    %0 = arith.ceildivsi %c-128_i8, %c7_i8 : i8
    %c7_i16 = arith.constant 7 : i16
    %c-32768_i16 = arith.constant -32768 : i16
    %1 = arith.ceildivsi %c-32768_i16, %c7_i16 : i16
    %c7_i32 = arith.constant 7 : i32
    %c-2147483648_i32 = arith.constant -2147483648 : i32
    %2 = arith.ceildivsi %c-2147483648_i32, %c7_i32 : i32
    return %0, %1, %2 : i8, i16, i32
  }
}

