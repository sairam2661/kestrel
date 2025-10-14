module {
  func.func @correct_int_types_success() {
    %any_i16, %si32, %ui64, %any_int = "test.int_types"() : () -> (i16, si32, ui64, i8)
    %any_i16_0, %si32_1, %ui64_2, %any_int_3 = "test.int_types"() : () -> (si16, si32, ui64, ui64)
    %any_i16_4, %si32_5, %ui64_6, %any_int_7 = "test.int_types"() : () -> (ui16, si32, ui64, si128)
    return
  }
}

