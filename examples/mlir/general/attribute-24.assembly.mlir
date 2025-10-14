module {
  func.func @allowed_cases_pass() {
    %0 = "test.i32_enum_attr"() <{attr = 5 : i32}> : () -> i32
    %1 = "test.i32_enum_attr"() <{attr = 10 : i32}> : () -> i32
    %2 = "test.i32_enum_attr"() <{attr = -2147483648 : i32}> : () -> i32
    %3 = "test.i32_enum_attr"() <{attr = -1 : i32}> : () -> i32
    return
  }
}

